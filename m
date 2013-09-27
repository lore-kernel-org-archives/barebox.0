Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPWvF-0000rj-6b
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 12:13:26 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 79CB7BF0FA
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 13:12:18 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Fri, 27 Sep 2013 14:13:00 +0200
Message-Id: <1380283980-5759-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH] mci: omap: Fix default value of mci.f_max
To: barebox@lists.infradead.org

U2V0IGRlZmF1bHQgdmFsdWUgb2YgbWNpLmZfbWF4IGV2ZW4gd2hlbiBubyBwZGF0YQppcyBhdmFp
bGFibGUuCgpTaWduZWQtb2ZmLWJ5OiBUZXJlc2EgR8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4K
LS0tCiBkcml2ZXJzL21jaS9vbWFwX2hzbW1jLmMgfCAgICA0ICsrLS0KIDEgZmlsZXMgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWNpL29tYXBfaHNtbWMuYyBiL2RyaXZlcnMvbWNpL29tYXBfaHNtbWMuYwppbmRleCBhMmNkM2Zl
Li5mNjM2OTdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL21jaS9vbWFwX2hzbW1jLmMKKysrIGIvZHJp
dmVycy9tY2kvb21hcF9oc21tYy5jCkBAIC02MTQsMTEgKzYxNCwxMSBAQCBzdGF0aWMgaW50IG9t
YXBfbW1jX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCWlmIChwZGF0YSkgewogCQlpZiAo
cGRhdGEtPmZfbWF4KQogCQkJaHNtbWMtPm1jaS5mX21heCA9IHBkYXRhLT5mX21heDsKLQkJZWxz
ZQotCQkJaHNtbWMtPm1jaS5mX21heCA9IDUyMDAwMDAwOwogCiAJCWlmIChwZGF0YS0+ZGV2bmFt
ZSkKIAkJCWhzbW1jLT5tY2kuZGV2bmFtZSA9IHBkYXRhLT5kZXZuYW1lOworCX0gZWxzZSB7CisJ
CWhzbW1jLT5tY2kuZl9tYXggPSA1MjAwMDAwMDsKIAl9CiAKIAotLSAKMS43LjAuNAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGlu
ZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
