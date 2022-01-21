from brownie import SimpleStorage, accounts, config

def read_contract():
    # Get the latest deployed smart contract
    simple_storage = SimpleStorage[-1 ]
    print(simple_storage.retrieve())


def main():
    read_contract()