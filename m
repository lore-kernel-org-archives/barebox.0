Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPQst-0006d6-3h
 for barebox@lists.infradead.org; Thu, 04 Sep 2014 06:51:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4299EA00431
 for <barebox@lists.infradead.org>; Thu,  4 Sep 2014 08:50:48 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Thu, 4 Sep 2014 08:50:40 +0200
Message-Id: <1409813440-9512-5-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1409813440-9512-1-git-send-email-t.gamez@phytec.de>
References: <1409813440-9512-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 5/5] ARM: phyCORE-AM335x: Update partition table
To: barebox@lists.infradead.org

QWRkZWQgZGV2aWNlIHRyZWUgcGFydGl0aW9uIGFuZCBtYWRlIHJvb3RmcyBwYXJ0aXRpb24KdmFy
aWFibGUgc2l6ZSBkZXBlbmRpbmcgb24gbmFuZCBmbGFzaCBzaXplLgoKU2lnbmVkLW9mZi1ieTog
VGVyZXNhIEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+Ci0tLQogYXJjaC9hcm0vZHRzL2FtMzM1
eC1waHl0ZWMtcGh5Y29yZS5kdHMgfCAgIDIyICsrKysrKysrKysrKysrKysrKy0tLS0KIDEgZmls
ZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9hcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHljb3JlLmR0cyBiL2FyY2gvYXJtL2R0cy9h
bTMzNXgtcGh5dGVjLXBoeWNvcmUuZHRzCmluZGV4IDE2ZmViZDMuLjA0N2RjMTUgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtL2R0cy9hbTMzNXgtcGh5dGVjLXBoeWNvcmUuZHRzCisrKyBiL2FyY2gvYXJt
L2R0cy9hbTMzNXgtcGh5dGVjLXBoeWNvcmUuZHRzCkBAIC0xOTQsOCArMTk0LDEzIEBACiAJCX07
CiAKIAkJcGFydGl0aW9uQDMgeworCQkJbGFiZWwgPSAib2Z0cmVlIjsKKwkJCXJlZyA9IDwweGMw
MDAwIDB4MjAwMDA+OworCQl9OworCisJCXBhcnRpdGlvbkA0IHsKIAkJCWxhYmVsID0gImtlcm5l
bCI7Ci0JCQlyZWcgPSA8MHhjMDAwMCAweDQwMDAwMD47CisJCQlyZWcgPSA8MHhlMDAwMCAweDQw
MDAwMD47CiAJCX07CiAJfTsKIH07CkBAIC0zMDUsMTMgKzMxMCwyMiBAQAogCQl9OwogCiAJCXBh
cnRpdGlvbkA2IHsKLQkJCWxhYmVsID0gImtlcm5lbCI7Ci0JCQlyZWcgPSA8MHgxMjAwMDAgMHg4
MDAwMDA+OworCQkJbGFiZWwgPSAib2Z0cmVlIjsKKwkJCXJlZyA9IDwweDEyMDAwMCAweDIwMDAw
PjsKIAkJfTsKIAogCQlwYXJ0aXRpb25ANyB7CisJCQlsYWJlbCA9ICJrZXJuZWwiOworCQkJcmVn
ID0gPDB4MTQwMDAwIDB4ODAwMDAwPjsKKwkJfTsKKworCQlwYXJ0aXRpb25AOCB7CiAJCQlsYWJl
bCA9ICJyb290IjsKLQkJCXJlZyA9IDwweDkyMDAwMCAweDFmNmUwMDAwPjsKKwkJCS8qCisJCQkg
KiBTaXplIDB4MCBleHRlbmRzIHBhcnRpdGlvbiB0bworCQkJICogZW5kIG9mIG5hbmQgZmxhc2gu
CisJCQkgKi8KKwkJCXJlZyA9IDwweDkyMDAwMCAweDA+OwogCQl9OwogCX07CiB9OwotLSAKMS43
LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJh
cmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
