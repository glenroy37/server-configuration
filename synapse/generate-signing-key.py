# Generate a signing key for synapse from the command line
#
# Usage: python3 generate-signing-key.py
#
# You must have the signedjson package installed, pip3 install signedjson
# You must use python3
#
# Author: Abel Luck <abel@guardianproject.info>
# Updated: April 25 2019

import random
import string
import io
from signedjson.key import generate_signing_key, write_signing_keys


def random_string(length):
    return ''.join(random.choice(string.ascii_letters) for _ in range(length))


key_id = "a_" + random_string(4)
with io.StringIO() as f:
    write_signing_keys(f, (generate_signing_key(key_id),),)
    f.seek(0)
    print(f.read())
