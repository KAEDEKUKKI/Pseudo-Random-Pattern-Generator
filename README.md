# Pseudo-Random-Pattern-Generator
#### [GitHub](https://github.com/KAEDEKUKKI/Pseudo-Random-Pattern-Generator.git)
## 實驗內容
- 1) Design a Pseudo Random Pattern Generator
- 1.1) A linear feedback shift Register (LFSR)
- 1.2) Feedback equation $x^3$+x+1
- 1.3) Random sequence 1、3、7、6、5、2、4 、1......( without 0)
- 1.4) For N stage, LFSR can generate 2N-1 sequence ( i.e., 1~ 2N-1)
- 2) This LFSR with positive Synchronous set, when the set is activate,the output of LFSR is 110
## 程式碼
```verilog=5
always@(posedge clk or posedge reset) begin
    if(reset)
      Q = 3'b110;     //重置後，輸出110
    else
      Q[0] <= Q[0] ^ Q[2];   //左移後,Q[0] xor Q[2]
      Q[1] <= Q[0];          //左移
      Q[2] <= Q[1];          //左移
 end
```
![](https://i.imgur.com/kSDkuRg.png)
## 結果
![](https://i.imgur.com/dn11whQ.png)
## 心得
>這次的作業主要要注意的是左移和同步的問題，但唯一不理解的地方是回饋$x^3$+x+1，其他部份大致上沒什麼問題，尤其是同步老師已經講解過好幾次了，也很好理解！
