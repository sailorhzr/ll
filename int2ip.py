import string
 
def ip2int(ipStr):
    ipInt = 0
    i = 3
    ipTokens = str(ipStr).split('.')
    for ipToken in ipTokens:
        ipInt += int(ipToken) * (256 ** i) # or pow(256, i)
        i -= 1
    return ipInt   
 
def int2ip(ipInt):
    ipStr = ''
    leftValue = ipInt
    for i in [3, 2, 1, 0]:
        ipTokenInt = leftValue / 256**i
        ipStr = ipStr + str(ipTokenInt)
        if i!=0:
            ipStr = ipStr + '.'
        leftValue %= 256**i
    return ipStr   
 
if __name__ == "__main__":
    choice = raw_input('1)ip2int      2)int2ip\nothers, quit\nyour choice : ')
    while choice in ['1', '2']:
        if choice == '1':
            ipStr = raw_input('ipStr :')
            ipInt = ip2int(ipStr)
            print 'ipInt : ', ipInt
        elif choice == '2':
            ipInt = input('ipInt : ')
            ipStr = int2ip(ipInt)
            print 'ipStr : ', ipStr
        choice = raw_input('-------------------\n1)ip2int      2)int2ip\nothers, quit\nyour choice : ')
    print 'quit'
