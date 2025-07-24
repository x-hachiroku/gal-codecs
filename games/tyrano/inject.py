import os
import re
import json
from message import load

if not os.path.exists('./data/translated_ks'):
    os.makedirs('./data/translated_ks')
    os.makedirs('./data/translated_ks/system')

NAME_PATTERN = re.compile(
    r'(\[chara_new\s+' + \
    r'name="([^"]+)"\s+)' + \
    r'jname="[^"]+"\s+' + \
    r'([^\]]+\])'
)

# Names
with open('./names.json'):
    names = json.load(open('./names.json'))

def replace_name(data):
    for match in NAME_PATTERN.finditer(data):
        name = match.group(2)
        chara_new = match.group(1) + f'jname="{names[name]}"  ' + match.group(3)
        data = data.replace(match.group(0), chara_new)
    return data

with open('./data/app/data/scenario/honpen.ks') as f:
    data = f.read()
with open('./data/app/data/scenario/honpen.ks', 'w') as f:
    f.write(replace_name(data))

with open('./data/app/data/scenario/system/chara_define.ks') as f:
    data = f.read()
with open('./data/translated_ks/system/chara_define.ks', 'w') as f:
    f.write(replace_name(data))


for ks in os.listdir('./data/app/data/scenario/'):
    if not ks.endswith('.ks'):
        continue

    with open(f'./data/app/data/scenario/{ks}') as f:
        original_ks = f.read()

    ## yuukai
    i = 0
    while True:
        if not os.path.exists(f'./data/translated_json/{ks}.extra{i:02d}.json'):
            break

        translated_messages = load(f'./data/translated_json/{ks}.extra{i:02d}.json')

        original_list_str = str(list(map(lambda x: x.original, translated_messages)))
        translated_list_str = str(list(map(lambda x: x.message, translated_messages)))
        assert original_list_str in original_ks, \
                f'Original list string not found in {ks}: {original_list_str}'
        original_ks = original_ks.replace(original_list_str, translated_list_str)
        i += 1
    ## /yuukai

    if os.path.exists(f'./data/translated_json/{ks}.json'):
        translated_messages = load(f'./data/translated_json/{ks}.json')
        for translated_message in translated_messages:
            assert translated_message.original in original_ks, \
                    f'Original message not found in {ks}: {translated_message.original}'
            original_ks = original_ks.replace(translated_message.original, translated_message.message, 1)
        i+=1


    if i > 0:
        with open(f'./data/translated_ks/{ks}', 'w') as f:
            f.write(original_ks)
