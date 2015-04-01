Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YdLI0-0000qL-1y
 for barebox@lists.infradead.org; Wed, 01 Apr 2015 16:14:48 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  1 Apr 2015 18:14:10 +0200
Message-Id: <1427904855-32548-6-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
References: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 05/10] imx-image: mx35: increase load image size,
 due to dobule header
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

U2luY2UgY29tbWl0OgoKICAgIDY5MGUzOTIwMjc0NyBpbXgtaW1hZ2U6IGhhbmRsZSBpLk1YMzUg
c3BlY2lhbCBjYXNlCgp0aGUgSVZUK0RDRCBoZWFkZXIgaXMgcGxhY2VkIGJvdGggYXQgMHgwIGFu
ZCAweDEwMDAsIHRoaXMgcGF0Y2ggcmVmbGVjdHMgdGhpcwpjaGFuZ2UgYW5kIGluY3JlYXNlcyB0
aGUgbG9hZCBpbWFnZSBzaXplIGFjY29yZGluZ2x5LgoKQ2M6IEVyaWMgQsOpbmFyZCA8ZXJpY0Bl
dWtyZWEuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXJjIEtsZWluZS1CdWRkZSA8bWtsQHBlbmd1dHJv
bml4LmRlPgotLS0KIHNjcmlwdHMvaW14L2lteC1pbWFnZS5jIHwgMyArKysKIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zY3JpcHRzL2lteC9pbXgtaW1hZ2Uu
YyBiL3NjcmlwdHMvaW14L2lteC1pbWFnZS5jCmluZGV4IDg5Y2I4MjQwZTQwZC4uZmQ3OGE4NjE5
OGQ2IDEwMDY0NAotLS0gYS9zY3JpcHRzL2lteC9pbXgtaW1hZ2UuYworKysgYi9zY3JpcHRzL2lt
eC9pbXgtaW1hZ2UuYwpAQCAtNzQyLDYgKzc0Miw5IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFy
ICphcmd2W10pCiAJICovCiAJbG9hZF9zaXplID0gKChpbWFnZV9zaXplICsgSEVBREVSX0xFTikg
KyAweGZmZikgJiB+MHhmZmY7CiAKKwlpZiAoY3B1X3R5cGUgPT0gMzUpCisJCWxvYWRfc2l6ZSAr
PSBIRUFERVJfTEVOOworCiAJc3dpdGNoIChoZWFkZXJfdmVyc2lvbikgewogCWNhc2UgMToKIAkJ
YWRkX2hlYWRlcl92MShidWYsIGltYWdlX2RjZF9vZmZzZXQsIGltYWdlX2xvYWRfYWRkciwgbG9h
ZF9zaXplKTsKLS0gCjIuMS40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
