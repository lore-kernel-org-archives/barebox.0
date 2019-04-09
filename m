Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-29.126.com ([220.181.15.29])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hDnUv-0005cZ-Ag
 for barebox@lists.infradead.org; Tue, 09 Apr 2019 09:56:59 +0000
Date: Tue, 9 Apr 2019 17:56:53 +0800 (CST)
From: =?GBK?B?1cXW0sm9?= <zzs213@126.com>
MIME-Version: 1.0
Message-ID: <4eb7d5fd.88a6.16a01876e6b.Coremail.zzs213@126.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="gbk"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: maybe bug in common/ddr_spd.c
To: barebox@lists.infradead.org

TWF5YmUgdGhpcyBpcyBhIGJ1ZywgSSdtIG5vdCBzdXJlCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLTg8LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gCkZyb20gNTU1MDlm
MzU5YWJiYjFmNWMyNGU5ZjBjMmI5Y2ZmMTY3ZjYyYWU0ZCBNb24gU2VwIDE3IDAwOjAwOjAwIDIw
MDEKRnJvbTogPT9VVEYtOD9xPz1FNT1CQz1BMD1FNT1CRj1BMD1FNT1CMT1CMT89IDx6enMyMTNA
MTI2LmNvbT4KRGF0ZTogTW9uLCA4IEFwciAyMDE5IDE0OjM0OjAwICswODAwClN1YmplY3Q6IFtQ
QVRDSF0gYnVnZml4OiBjaGVjayBkZHIgbW9kX3JhbmtzCk1JTUUtVmVyc2lvbjogMS4wCkNvbnRl
bnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOApDb250ZW50LVRyYW5zZmVyLUVuY29k
aW5nOiA4Yml0CgpTaWduZWQtb2ZmLWJ5OiDVxdbSyb0gPHp6czIxM0AxMjYuY29tPgotLS0KIGNv
bW1vbi9kZHJfc3BkLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9jb21tb24vZGRyX3NwZC5jIGIvY29tbW9uL2Rkcl9z
cGQuYwppbmRleCBlYzM0M2VmNWEuLjI3N2Q0MThlOSAxMDA2NDQKLS0tIGEvY29tbW9uL2Rkcl9z
cGQuYworKysgYi9jb21tb24vZGRyX3NwZC5jCkBAIC0yNTMsNyArMjUzLDcgQEAgdm9pZCBkZHJf
c3BkX3ByaW50KHVpbnQ4X3QgKnJlY29yZCkKIAkJcHJpbnRmKCJFcnJvciBtb2R1bGUgdHlwZVxu
Iik7CiAKIAlwcmludGYoIiUtNDhzICIsICJEUkFNIFBhY2thZ2UgIik7Ci0JaWYgKChzLT5tb2Rf
cmFua3MgJiAweDEwKSA9PSAxKQorCWlmICgocy0+bW9kX3JhbmtzICYgMHgxMCkgIT0gMCkKIAkJ
cHJpbnRmKCJTdGFja1xuIik7CiAJZWxzZQogCQlwcmludGYoIlBsYW5hclxuIik7Ci0tIAoyLjIx
LjAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJv
eCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
