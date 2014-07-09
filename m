Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4sei-0005iE-Og
 for barebox@lists.infradead.org; Wed, 09 Jul 2014 14:15:33 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 888DFBF0E9
 for <barebox@lists.infradead.org>; Wed,  9 Jul 2014 16:15:08 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Wed, 9 Jul 2014 16:15:08 +0200
Message-Id: <1404915308-23981-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH] ARM: am335x Phytec phyCORE: Enable ethernet
To: barebox@lists.infradead.org

V2l0aCBhbiB1cGRhdGUgb2YgdGhlIGFtMzN4eC5kdHNpIChjb21taXQgOTMxMzkyMGRmNikgdGhl
IG1kaW8gYW5kIG1hYwpub2RlcyBhcmUgbm90IGVuYWJsZWQgb24gZGVmYXVsdCBhbnkgbW9yZS4g
RW5hYmxlIHRoZW0gZXhwbGljaXQKaW4gdGhlIGJvYXJkIGR0cyBub3cuCgpTaWduZWQtb2ZmLWJ5
OiBUZXJlc2EgR8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4KLS0tCiBhcmNoL2FybS9kdHMvYW0z
MzV4LXBoeXRlYy1waHljb3JlLmR0cyB8ICAgIDIgKysKIDEgZmlsZXMgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9hbTMz
NXgtcGh5dGVjLXBoeWNvcmUuZHRzIGIvYXJjaC9hcm0vZHRzL2FtMzM1eC1waHl0ZWMtcGh5Y29y
ZS5kdHMKaW5kZXggNjE5NmViMy4uNjNkZWJkMiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vZHRzL2Ft
MzM1eC1waHl0ZWMtcGh5Y29yZS5kdHMKKysrIGIvYXJjaC9hcm0vZHRzL2FtMzM1eC1waHl0ZWMt
cGh5Y29yZS5kdHMKQEAgLTIxNCw2ICsyMTQsNyBAQAogJmRhdmluY2lfbWRpbyB7CiAJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5jdHJsLTAgPSA8JmRhdmluY2lfbWRpb19kZWZhdWx0
PjsKKwlzdGF0dXMgPSAib2theSI7CiB9OwogCiAmcGh5X3NlbCB7CkBAIC0yMzYsNiArMjM3LDcg
QEAKIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmZW1hY19ybWlp
MV9waW5zPjsKIAlkdWFsX2VtYWMgPSA8MT47CisJc3RhdHVzID0gIm9rYXkiOwogfTsKIAogJmdw
bWMgewotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
