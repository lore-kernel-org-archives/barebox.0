Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPn8A-000899-5m
 for barebox@lists.infradead.org; Fri, 05 Sep 2014 06:36:23 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 2BCD2A003E6
 for <barebox@lists.infradead.org>; Fri,  5 Sep 2014 08:36:02 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Fri, 5 Sep 2014 08:35:56 +0200
Message-Id: <1409898956-19002-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH v2] ARM: phyCORE-AM335x: Update partition table
To: barebox@lists.infradead.org

QWRkZWQgZGV2aWNlIHRyZWUgcGFydGl0aW9uIGFuZCBtYWRlIHJvb3RmcyBwYXJ0aXRpb24KdmFy
aWFibGUgc2l6ZSBkZXBlbmRpbmcgb24gbmFuZCBmbGFzaCBzaXplLgoKU2lnbmVkLW9mZi1ieTog
VGVyZXNhIEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+Ci0tLQp2MjoKLSBmaXhlZCByb290IHBh
cnRpdGlvbiBzdGFydAoKIGFyY2gvYXJtL2R0cy9hbTMzNXgtcGh5dGVjLXBoeWNvcmUuZHRzIHwg
ICAyMiArKysrKysrKysrKysrKysrKystLS0tCiAxIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL2FtMzM1eC1w
aHl0ZWMtcGh5Y29yZS5kdHMgYi9hcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHljb3JlLmR0
cwppbmRleCAxNmZlYmQzLi5lN2U3NzgwIDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvYW0zMzV4
LXBoeXRlYy1waHljb3JlLmR0cworKysgYi9hcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHlj
b3JlLmR0cwpAQCAtMTk0LDggKzE5NCwxMyBAQAogCQl9OwogCiAJCXBhcnRpdGlvbkAzIHsKKwkJ
CWxhYmVsID0gIm9mdHJlZSI7CisJCQlyZWcgPSA8MHhjMDAwMCAweDIwMDAwPjsKKwkJfTsKKwor
CQlwYXJ0aXRpb25ANCB7CiAJCQlsYWJlbCA9ICJrZXJuZWwiOwotCQkJcmVnID0gPDB4YzAwMDAg
MHg0MDAwMDA+OworCQkJcmVnID0gPDB4ZTAwMDAgMHg0MDAwMDA+OwogCQl9OwogCX07CiB9OwpA
QCAtMzA1LDEzICszMTAsMjIgQEAKIAkJfTsKIAogCQlwYXJ0aXRpb25ANiB7Ci0JCQlsYWJlbCA9
ICJrZXJuZWwiOwotCQkJcmVnID0gPDB4MTIwMDAwIDB4ODAwMDAwPjsKKwkJCWxhYmVsID0gIm9m
dHJlZSI7CisJCQlyZWcgPSA8MHgxMjAwMDAgMHgyMDAwMD47CiAJCX07CiAKIAkJcGFydGl0aW9u
QDcgeworCQkJbGFiZWwgPSAia2VybmVsIjsKKwkJCXJlZyA9IDwweDE0MDAwMCAweDgwMDAwMD47
CisJCX07CisKKwkJcGFydGl0aW9uQDggewogCQkJbGFiZWwgPSAicm9vdCI7Ci0JCQlyZWcgPSA8
MHg5MjAwMDAgMHgxZjZlMDAwMD47CisJCQkvKgorCQkJICogU2l6ZSAweDAgZXh0ZW5kcyBwYXJ0
aXRpb24gdG8KKwkJCSAqIGVuZCBvZiBuYW5kIGZsYXNoLgorCQkJICovCisJCQlyZWcgPSA8MHg5
NDAwMDAgMHgwPjsKIAkJfTsKIAl9OwogfTsKLS0gCjEuNy4wLjQKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==
