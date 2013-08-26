Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqXK-0006Qt-5C
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:44:27 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3A4F4BF0EC
 for <barebox@lists.infradead.org>; Mon, 26 Aug 2013 08:35:26 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Mon, 26 Aug 2013 08:43:57 +0200
Message-Id: <1377499437-8738-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH] ARM: OMAP: PCM051: Remove spi platform data
To: barebox@lists.infradead.org

U1BJIE5PUiBmbGFzaCBjYW4gYmUgZGV0ZWN0ZWQgYnkgZHJpdmVyIHNvIG5vIHBsYXRmb3JtIGRh
dGEKaXMgbmVjZXNzYXJ5LgoKU2lnbmVkLW9mZi1ieTogVGVyZXNhIEfDoW1leiA8dC5nYW1lekBw
aHl0ZWMuZGU+Ci0tLQogYXJjaC9hcm0vYm9hcmRzL3BjbTA1MS9ib2FyZC5jIHwgICAgNiAtLS0t
LS0KIDEgZmlsZXMgY2hhbmdlZCwgMCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9wY20wNTEvYm9hcmQuYyBiL2FyY2gvYXJtL2JvYXJk
cy9wY20wNTEvYm9hcmQuYwppbmRleCAxOTkzZjM0Li40YTc0MGM4IDEwMDY0NAotLS0gYS9hcmNo
L2FybS9ib2FyZHMvcGNtMDUxL2JvYXJkLmMKKysrIGIvYXJjaC9hcm0vYm9hcmRzL3BjbTA1MS9i
b2FyZC5jCkBAIC02NiwxMSArNjYsNiBAQCBzdGF0aWMgaW50IHBjbTA1MV9tZW1faW5pdCh2b2lk
KQogfQogbWVtX2luaXRjYWxsKHBjbTA1MV9tZW1faW5pdCk7CiAKLXN0YXRpYyBzdHJ1Y3QgZmxh
c2hfcGxhdGZvcm1fZGF0YSBwY20wNTFfc3BpX2ZsYXNoID0gewotCS5uYW1lCT0gIm0yNXAiLAot
CS50eXBlCT0gIncyNXE2NCIsCi19OwotCiAvKgogKiBTUEkgRmxhc2ggd29ya3MgYXQgODBNaHog
aG93ZXZlciB0aGUgU1BJIGNvbnRyb2xsZXIgcnVucyB3aXRoIDQ4TUh6LgogKiBTbyBzZXR1cCBN
YXggc3BlZWQgdG8gYmUgbGVzcyB0aGFuIHRoZSBjb250cm9sbGVyIHNwZWVkLgpAQCAtNzgsNyAr
NzMsNiBAQCBzdGF0aWMgc3RydWN0IGZsYXNoX3BsYXRmb3JtX2RhdGEgcGNtMDUxX3NwaV9mbGFz
aCA9IHsKIHN0YXRpYyBzdHJ1Y3Qgc3BpX2JvYXJkX2luZm8gcGNtMDUxX3NwaV9ib2FyZF9pbmZv
W10gPSB7CiAJewogCQkubmFtZQkJPSAibTI1cDgwIiwKLQkJLnBsYXRmb3JtX2RhdGEJPSAmcGNt
MDUxX3NwaV9mbGFzaCwKIAkJLm1heF9zcGVlZF9oegk9IDI0MDAwMDAwLAogCQkuYnVzX251bQk9
IDAsCiAJCS5jaGlwX3NlbGVjdAk9IDAsCi0tIAoxLjcuMC40CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
