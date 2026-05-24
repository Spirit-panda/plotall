import numpy as np

with open ("restart.tbcro300.out", mode="r", encoding="utf-8") as f:
    lines=f.readlines()
    lines=lines[7:]
    rows=[]
    for line in lines:
        line=line.strip().split()
        rows.append(line)
        data=np.array(rows)
        data=data.astype(float)
    data=np.column_stack([data,np.zeros((len(data),3))])
    data[:,7]=np.degrees(np.arccos(np.divide(data[:,4], data[:,3])))
    data[:,8]=np.degrees(np.arccos(np.divide(data[:,5], data[:,3])))
    data[:,9]=np.degrees(np.arccos(np.divide(data[:,6], data[:,3])))
#print(data[0,1])
f.close


with open ("angleall", mode="w", encoding="utf-8") as n:
    n.write("step, iter, atom, M, Mx, My, Mz, thetax, thetay, thetaz \n")
    for row in data:
        n.write(" ".join(map(str, row))+"\n")


n.close


mask= data[:,3]>5
tbneed=data[mask]
with open("angletb", mode="w", encoding="utf-8") as tb:
         tb.write("step, iter, atom, M, Mx, My, Mz, thetax, thetay, thetaz \n")
         for newi in tbneed:
             tb.write(" ".join(map(str,newi))+"\n")

tb.close
mask=data[:,3]<3
crneed=data[mask]
with open("anglecr", mode="w", encoding="utf-8") as cr:
    cr.write("step, iter, atom, M, Mx, My, Mz, thetax, thetay, thetaz \n")
    for newl in crneed:
        cr.write(" ".join(map(str,newl))+"\n")
        cr.close

#else
#    with open ("crangle", mode="w", encoding="utf-8") as cr:
#         cr.write("step, iter, atom, M, Mx, My, Mz, thetax, thetay, thetaz \n"
#               cr.sort(data[:,3]<3)

 


