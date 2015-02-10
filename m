Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YL9yi-0001QI-Ry
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 12:31:46 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 46A29A0036B
 for <barebox@lists.infradead.org>; Tue, 10 Feb 2015 13:32:06 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Tue, 10 Feb 2015 13:29:48 +0100
Message-Id: <1423571389-42849-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH: For next 1/2] ARM: phyFLEX-AM335x-SOM: Update NAND partition
 table
To: barebox@lists.infradead.org

RnJvbTogVGVyZXNhIEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+CgpXZSBkb3VibGUgdGhlIHBh
cnRpdGlvbiBzaXplIGZvciBiYXJlYm94LWVudiBhbmQgb2Z0cmVlIHRvIGJlCm1vcmUgcm9idXN0
IGFnYWluc3QgYmFkIGJsb2NrIGlzc3Vlcy4KClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXog
PHQuZ2FtZXpAcGh5dGVjLmRlPgpTaWduZWQtb2ZmLWJ5OiBXYWRpbSBFZ29yb3YgPHcuZWdvcm92
QHBoeXRlYy5kZT4KLS0tCiBhcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHlmbGV4LXNvbS5k
dHNpIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHlmbGV4
LXNvbS5kdHNpIGIvYXJjaC9hcm0vZHRzL2FtMzM1eC1waHl0ZWMtcGh5ZmxleC1zb20uZHRzaQpp
bmRleCAxODM3NjM2Li5mYzljOWJhIDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvYW0zMzV4LXBo
eXRlYy1waHlmbGV4LXNvbS5kdHNpCisrKyBiL2FyY2gvYXJtL2R0cy9hbTMzNXgtcGh5dGVjLXBo
eWZsZXgtc29tLmR0c2kKQEAgLTMwMywyMiArMzAzLDIyIEBACiAKIAkJcGFydGl0aW9uQDUgewog
CQkJbGFiZWwgPSAiYmFyZWJveGVudiI7Ci0JCQlyZWcgPSA8MHgxMDAwMDAgMHgyMDAwMD47CisJ
CQlyZWcgPSA8MHgxMDAwMDAgMHg0MDAwMD47CiAJCX07CiAKIAkJcGFydGl0aW9uQDYgewogCQkJ
bGFiZWwgPSAib2Z0cmVlIjsKLQkJCXJlZyA9IDwweDEyMDAwMCAweDIwMDAwPjsKKwkJCXJlZyA9
IDwweDE0MDAwMCAweDQwMDAwPjsKIAkJfTsKIAogCQlwYXJ0aXRpb25ANyB7CiAJCQlsYWJlbCA9
ICJrZXJuZWwiOwotCQkJcmVnID0gPDB4MTQwMDAwIDB4ODAwMDAwPjsKKwkJCXJlZyA9IDwweDE4
MDAwMCAweDgwMDAwMD47CiAJCX07CiAKIAkJcGFydGl0aW9uQDggewogCQkJbGFiZWwgPSAicm9v
dCI7Ci0JCQlyZWcgPSA8MHg5NDAwMDAgMHgwPjsKKwkJCXJlZyA9IDwweDk4MDAwMCAweDA+Owog
CQl9OwogCX07CiB9OwotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJl
Ym94Cg==
