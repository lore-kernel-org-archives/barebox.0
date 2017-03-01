Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5aI-0003xc-RG
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 14:50:36 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed,  1 Mar 2017 15:50:04 +0100
Message-Id: <20170301145004.27750-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] memcmp: fix comparison on short read
To: barebox@lists.infradead.org

cmVhZCgpIG1pZ2h0IHJldHVybiBsZXNzIHRoYW4gJGNvdW50IGJ5dGVzIHdoaWNoIGlzIG9ubHkg
YW4gdXBwZXIgbGltaXQuClRoZSB1c2VyIGlzIHN1cHBvc2VkIHRvIHJlcGVhdCB0aGUgY29tbWFu
ZCB0byBmaWxsIGEgYnVmZmVyIGNvbXBsZXRlbHkuCgpTbyB1c2UgdGhlIGNvbnZlbmllbmNlIHdy
YXBwZXIgcmVhZF9mdWxsIGluIG1lbWNtcC4KClRoaXMgZml4ZXMgbWVtY21wIG9uIC9kZXYvbmFu
ZDAgb24gYW4gQXJtYWRhIFhQLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBjb21tYW5kcy9tZW1jbXAuYyB8IDQg
KystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9jb21tYW5kcy9tZW1jbXAuYyBiL2NvbW1hbmRzL21lbWNtcC5jCmluZGV4IGNl
MDQ0ZGYwZDkzNS4uYTAwZmRkYmM4MjVmIDEwMDY0NAotLS0gYS9jb21tYW5kcy9tZW1jbXAuYwor
KysgYi9jb21tYW5kcy9tZW1jbXAuYwpAQCAtOTEsMTMgKzkxLDEzIEBAIHN0YXRpYyBpbnQgZG9f
bWVtY21wKGludCBhcmdjLCBjaGFyICphcmd2W10pCiAKIAkJbm93ID0gbWluKChsb2ZmX3QpUldf
QlVGX1NJWkUsIGNvdW50KTsKIAotCQlyMSA9IHJlYWQoc291cmNlZmQsIG1lbV9yd19idWYsICBu
b3cpOworCQlyMSA9IHJlYWRfZnVsbChzb3VyY2VmZCwgbWVtX3J3X2J1Ziwgbm93KTsKIAkJaWYg
KHIxIDwgMCkgewogCQkJcGVycm9yKCJyZWFkIik7CiAJCQlnb3RvIG91dDsKIAkJfQogCi0JCXIy
ID0gcmVhZChkZXN0ZmQsIHJ3X2J1ZjEsIG5vdyk7CisJCXIyID0gcmVhZF9mdWxsKGRlc3RmZCwg
cndfYnVmMSwgbm93KTsKIAkJaWYgKHIyIDwgMCkgewogCQkJcGVycm9yKCJyZWFkIik7CiAJCQln
b3RvIG91dDsKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
