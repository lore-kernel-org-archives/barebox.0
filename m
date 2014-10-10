Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XcWHt-0001s2-9m
 for barebox@lists.infradead.org; Fri, 10 Oct 2014 09:15:02 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6E08DA00294
 for <barebox@lists.infradead.org>; Fri, 10 Oct 2014 11:14:48 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Fri, 10 Oct 2014 11:14:29 +0200
Message-Id: <1412932473-38216-2-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1412932473-38216-1-git-send-email-t.gamez@phytec.de>
References: <1412932473-38216-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 2/6] net: cpsw: Fix probe for one port ethernet
To: barebox@lists.infradead.org

SWYgb25seSBvbmUgcG9ydCBpcyBwaW5uZWQgb3V0LCBwcm9iZSBmYWlscwphcyB0aGUgc2Vjb25k
IHBvcnQgcGh5X2lkIGlzIG5vdCBmb3VuZC4KClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXog
PHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KIGRyaXZlcnMvbmV0L2Nwc3cuYyB8IDQgKystLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9jcHN3LmMgYi9kcml2ZXJzL25ldC9jcHN3LmMKaW5kZXggMTY3YjJkZC4u
OWM4Y2ZmMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvY3Bzdy5jCisrKyBiL2RyaXZlcnMvbmV0
L2Nwc3cuYwpAQCAtMTA3MSw3ICsxMDcxLDcgQEAgc3RhdGljIGludCBjcHN3X3Byb2JlX2R0KHN0
cnVjdCBjcHN3X3ByaXYgKnByaXYpCiAJCQkJcmV0dXJuIHJldDsKIAkJfQogCi0JCWlmICghc3Ry
bmNtcChjaGlsZC0+bmFtZSwgInNsYXZlIiwgNSkpIHsKKwkJaWYgKGkgPCBwcml2LT5udW1fc2xh
dmVzICYmICFzdHJuY21wKGNoaWxkLT5uYW1lLCAic2xhdmUiLCA1KSkgewogCQkJc3RydWN0IGNw
c3dfc2xhdmUgKnNsYXZlID0gJnByaXYtPnNsYXZlc1tpXTsKIAkJCXVpbnQzMl90IHBoeV9pZFsy
XTsKIApAQCAtMTA4OCw3ICsxMDg4LDcgQEAgc3RhdGljIGludCBjcHN3X3Byb2JlX2R0KHN0cnVj
dCBjcHN3X3ByaXYgKnByaXYpCiAJCX0KIAl9CiAKLQlmb3IgKGkgPSAwOyBpIDwgMjsgaSsrKSB7
CisJZm9yIChpID0gMDsgaSA8IHByaXYtPm51bV9zbGF2ZXM7IGkrKykgewogCQlzdHJ1Y3QgY3Bz
d19zbGF2ZSAqc2xhdmUgPSAmcHJpdi0+c2xhdmVzW2ldOwogCiAJCWNwc3dfZ21paV9zZWxfYW0z
MzV4KHNsYXZlKTsKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJv
eAo=
