import pdfplumber
class One :
    def __init__(self):
        self.scope = "lua"
        self.prefix = "qimin"
        self.body = "qimin"
        self.describe = "qimin"
    def ok(self):
        return '"' + self.describe + '":{' + "\n\t" + '"scope": "lua",\n\t' + '"prefix": "' + self.prefix + '",\n\t' + '"body": [\n\t\t"'+self.prefix +"("+ self.body +')"\n\t],\n\t' + '"description": "' + self.describe + '"\n' + '},'
all = []
with pdfplumber.open("D:\work\document\lua.pdf") as pdf:
    content = ''
    #len(pdf.pages)为PDF文档页数
    for i in range(len(pdf.pages)):
        #pdf.pages[i] 是读取PDF文档第i+1页
        page = pdf.pages[i]
        #page.extract_text()函数即读取文本内容，下面这步是去掉文档最下面的页码
        page_content = '\n'.join(page.extract_text().split('\n')[:-1])
        data = page_content.split(sep='\n')
        # print(data)
        one = One()
        # 过滤多余字段
        # for params in range(0,len(data)):
        #     if data[params] == ")":
        #         print(data[params])
                # data.remove(data[params])
                # break
        for params in range(0,len(data)):
            if data[params] == "功能：":
                returnNameParams = data[params-1]
                if len(returnNameParams) < 3:
                    returnNameParams = data[params-2] + returnNameParams
                    params-=1
                describeArr = data[params - 2].split(sep=" ")
                describe = ""
                for pp in range(1,len(describeArr)):
                    describe += describeArr[pp] + " "
                one.describe = describe
                nameParams = returnNameParams.split(sep=" ")
                params = ""
                try:
                    # print(nameParams[1])
                    nameParamsArr = nameParams[1].split(sep="(")
                    one.prefix = nameParamsArr[0]
                    funcParams = nameParamsArr[1]
                except BaseException as B:
                    nameParamsArr = nameParams[0].split(sep="(")
                    one.prefix = nameParamsArr[0]
                    funcParams = nameParamsArr[1]
                    # print(nameParams[0])
                funcParamsArr = funcParams[:len(funcParams)-1].split(sep=",")
                funcParams = ""
                # print(len(funcParamsArr))
                for pp in range(0,len(funcParamsArr)):
                    if funcParamsArr[pp] == '':
                        break
                    funcParams += "${"+str(pp + 1)+":"+funcParamsArr[pp]+"}"
                    if pp != len(funcParamsArr)-1:
                        funcParams += ","
                # print(funcParams)
                one.body = funcParams
        # print("第"+ str(i) + "页")
        if one.prefix == "qimin":
        #     print("本页没有要添加的功能")
            continue
        all.append(one)
        # print("prefix: " + one.prefix)
        # print("describe: " + one.describe)
        # print("body: " + funcParams)
        print(one.ok())
for params in all:
    print('"'+params.prefix+'",')