Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout03.rmx.de ([94.199.88.101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ita4u-0005jo-6E
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 16:39:08 +0000
Received: from kdin02.retarus.com (unknown [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout03.rmx.de (Postfix) with ESMTPS id 481cmx0s86zlbK1
 for <barebox@lists.infradead.org>; Mon, 20 Jan 2020 17:38:41 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 481cmw0dyNz2TRlL
 for <barebox@lists.infradead.org>; Mon, 20 Jan 2020 17:38:40 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Mon, 20 Jan 2020 17:38:36 +0100
Message-ID: <2198510.7r5C0NBLhF@n95hx1g2>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Configuring for secure boot
To: barebox@lists.infradead.org

Qm9hcmQ6IHBoeXRlYy1zb20taW14NgoKSSBuZWVkIHRvIGNvbmZpZ3VyZSBiYXJlYm94IGluIGEg
d2F5LCB0aGF0IGEgbWFsaWNpb3VzIGF0dGFja2VyIGNhbiBub3QgYnJlYWsKaW50byB0aGUgc3lz
dGVtLiBJdCBsb29rcyBsaWtlIEkgbmVlZCB0byBwZXJmb3JtIHRoZSBmb2xsb3dpbmcgc3RlcHM6
CgoxLiBFbmZvcmNlIHNpZ25hdHVyZSB2ZXJpZmljYXRpb24gb2YgRklUIGltYWdlCi0tPiBDT05G
SUdfQk9PVE1fRk9SQ0VfU0lHTkVEX0lNQUdFUwoKMi4gUHJldmVudCBtYW5pcHVsYXRpb24gb2Yg
dGhlIHNhdmVkIGVudmlyb25tZW50IGluIGZsYXNoCi0tPiBEbyBub3QgbG9hZCBhbnkgZW52aXJv
bm1lbnQgc2V0dGluZ3MgZnJvbSBmbGFzaCwgb25seSB1c2UgY29tcGlsZWQgaW4KZGVmYXVsdCBl
bnZpcm9ubWVudC4KLS0+IFJlbW92ZSAvIHBlcm1hbmVudGx5IGRpc2FibGUgImJhcmVib3gsZW52
aXJvbm1lbnQiIG5vZGUgaW4gZGV2aWNlLXRyZWU/Ci0tPiBDb21waWxlIHdpdGhvdXQgQ09ORklH
X09GX0JBUkVCT1hfRFJJVkVSUz8KCjMuIFByZXZlbnQgYWNjZXNzIHRvIHRoZSBiYXJlYm94IHNo
ZWxsCi0tPiBDT05GSUdfQ01EX0xPR0lOPwotLT4gQ09ORklHX1NIRUxMX05PTkU/CgpXaGF0IGlz
IHRoZSBiZXN0IHdheSB0byBwcmV2ZW50IChvZmZsaW5lKSBtYW5pcHVsYXRpb24gb2YgdGhlIGJh
cmVib3gKZW52aXJvbm1lbnQ/IFdoYXQgaXMgdGhlIGJlc3Qgd2F5IHRvIGJsb2NrIHRoZSBzaGVs
bCBhY2Nlc3M/CgpyZWdhcmRzCkNocmlzdGlhbgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwogW2h0dHA6Ly9hc3NldHMuYXJyaS5jb20vbWVkaWEvc2lnbi8yMDE5LTEyLTEzYS1B
UlJJLUUtbWFpbC1TaWduYXR1ci1QYXJrc3RhZHQuanBnXSA8aHR0cHM6Ly93d3cuZ29vZ2xlLmNv
bS9tYXBzL3BsYWNlL0hlcmJlcnQtQmF5ZXItU3RyYSVDMyU5RmUrMTAsKzgwODA3K00lQzMlQkNu
Y2hlbi9kYXRhPSE0bTIhM20xITFzMHg0NzllNzQzNzk0ODlmMDQ1OjB4NGJiZjBjN2E5ZTg5M2Q2
Nj9zYT1YJnZlZD0yYWhVS0V3amp2ZFNsaDhUbUFoV0lwNHNLSGUzdkRsUVE4Z0V3QUhvRUNBc1FB
UT4KCkdldCBhbGwgdGhlIGxhdGVzdCBpbmZvcm1hdGlvbiBmcm9tIHd3dy5hcnJpLmNvbTxodHRw
czovL3d3dy5hcnJpLmNvbS8+LCBGYWNlYm9vazxodHRwczovL3d3dy5mYWNlYm9vay5jb20vVGVh
bUFSUkk+LCBUd2l0dGVyPGh0dHBzOi8vdHdpdHRlci5jb20vQVJSSUNoYW5uZWw+LCBJbnN0YWdy
YW08aHR0cHM6Ly9pbnN0YWdyYW0uY29tL2Fycmk+IGFuZCBZb3VUdWJlPGh0dHBzOi8vd3d3Lnlv
dXR1YmUuY29tL3VzZXIvQVJSSUNoYW5uZWw+LgoKQXJub2xkICYgUmljaHRlciBDaW5lIFRlY2hu
aWsgR21iSCAmIENvLiBCZXRyaWVicyBLRwpTaXR6OiBNw7xuY2hlbiAtIFJlZ2lzdGVyZ2VyaWNo
dDogQW10c2dlcmljaHQgTcO8bmNoZW4gLSBIYW5kZWxzcmVnaXN0ZXJudW1tZXI6IEhSQSA1Nzkx
OApQZXJzw7ZubGljaCBoYWZ0ZW5kZXIgR2VzZWxsc2NoYWZ0ZXI6IEFybm9sZCAmIFJpY2h0ZXIg
Q2luZSBUZWNobmlrIEdtYkgKU2l0ejogTcO8bmNoZW4gLSBSZWdpc3RlcmdlcmljaHQ6IEFtdHNn
ZXJpY2h0IE3DvG5jaGVuIC0gSGFuZGVsc3JlZ2lzdGVybnVtbWVyOiBIUkIgNTQ0NzcKR2VzY2jD
pGZ0c2bDvGhyZXI6IERyLiBNaWNoYWVsIE5ldWjDpHVzZXI7IFN0ZXBoYW4gU2NoZW5rOyBXYWx0
ZXIgVHJhdW5pbmdlcjsgTWFya3VzIFplaWxlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YmFyZWJveAo=
