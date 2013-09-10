Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([2a01:e0c:1:1599::14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJSCo-0004Lh-Ks
 for barebox@lists.infradead.org; Tue, 10 Sep 2013 17:58:27 +0000
Received: from e6520eb.local.eukrea.com (unknown [88.170.243.169])
 by smtp5-g21.free.fr (Postfix) with ESMTP id 332BDD48210
 for <barebox@lists.infradead.org>; Tue, 10 Sep 2013 19:57:59 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 10 Sep 2013 19:57:54 +0200
Message-Id: <1378835876-29402-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/3] usb-imx28: fix enable
To: barebox@lists.infradead.org

d2UgbmVlZCB0byBwb3dlciBvbiB0aGUgUExMIHdoZW4gZW5hYmxpbmcgdGhlIFVTQiBjbG9jay4K
ClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0KIGFyY2gv
YXJtL21hY2gtbXhzL3VzYi1pbXgyOC5jIHwgNSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLW14
cy91c2ItaW14MjguYyBiL2FyY2gvYXJtL21hY2gtbXhzL3VzYi1pbXgyOC5jCmluZGV4IDYxZDU5
YzMuLmU1YjYzYzMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtbXhzL3VzYi1pbXgyOC5jCisr
KyBiL2FyY2gvYXJtL21hY2gtbXhzL3VzYi1pbXgyOC5jCkBAIC00Niw2ICs0Niw3IEBACiAjZGVm
aW5lIENMS19QTEwwQ1RSTDAJCQkoSU1YX0NDTV9CQVNFICsgMHgwKQogI2RlZmluZSBDTEtfUExM
MUNUUkwwCQkJKElNWF9DQ01fQkFTRSArIDB4MjApCiAjZGVmaW5lIFBMTENUUkwwX0VOX1VTQl9D
TEtTCQkoMSA8PCAxOCkKKyNkZWZpbmUgUExMQ1RSTDBfUE9XRVIJCSgxIDw8IDE3KQogCiAjZGVm
aW5lIERJR0NUUkxfQ1RSTAkJCShJTVhfRElHQ1RMX0JBU0UgKyAweDApCiAjZGVmaW5lIERJR0NU
TF9DVFJMX1VTQjBfQ0xLR0FURQkoMSA8PCAyKQpAQCAtNzcsNyArNzgsNyBAQCBpbnQgaW14Mjhf
dXNiX3BoeTBfZW5hYmxlKHZvaWQpCiAJaW14MjhfdXNiX3BoeV9yZXNldCgodm9pZCAqKUlNWF9V
U0JQSFkwX0JBU0UpOwogCiAJLyogVHVybiBvbiB0aGUgVVNCIGNsb2NrcyAqLwotCXdyaXRlbChQ
TExDVFJMMF9FTl9VU0JfQ0xLUywgQ0xLX1BMTDBDVFJMMCArIFNFVCk7CisJd3JpdGVsKFBMTENU
UkwwX0VOX1VTQl9DTEtTIHwgUExMQ1RSTDBfUE9XRVIsIENMS19QTEwwQ1RSTDAgKyBTRVQpOwog
CiAJd3JpdGVsKERJR0NUTF9DVFJMX1VTQjBfQ0xLR0FURSwgRElHQ1RSTF9DVFJMICsgQ0xSKTsK
IApAQCAtOTEsNyArOTIsNyBAQCBpbnQgaW14MjhfdXNiX3BoeTFfZW5hYmxlKHZvaWQpCiAJaW14
MjhfdXNiX3BoeV9yZXNldCgodm9pZCAqKUlNWF9VU0JQSFkxX0JBU0UpOwogCiAJLyogVHVybiBv
biB0aGUgVVNCIGNsb2NrcyAqLwotCXdyaXRlbChQTExDVFJMMF9FTl9VU0JfQ0xLUywgQ0xLX1BM
TDFDVFJMMCArIFNFVCk7CisJd3JpdGVsKFBMTENUUkwwX0VOX1VTQl9DTEtTIHwgUExMQ1RSTDBf
UE9XRVIsIENMS19QTEwxQ1RSTDAgKyBTRVQpOwogCiAJd3JpdGVsKERJR0NUTF9DVFJMX1VTQjFf
Q0xLR0FURSwgRElHQ1RSTF9DVFJMICsgQ0xSKTsKIAotLSAKMS44LjMuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0
CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
