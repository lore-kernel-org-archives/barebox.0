Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOOq0-0005pM-Bq
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 08:18:49 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 85663BF0E7
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 10:18:44 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Wed, 17 Oct 2012 10:18:43 +0200
Message-Id: <1350461923-4016-1-git-send-email-t.gamez@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mtd ARM OMAP: Fix compile errors
To: barebox@lists.infradead.org

Rml4IGNvbXBpbGUgZXJyb3JzIGluIGxhdGVzdCBuZXh0LCBjYXVzZWQgYnkgY29tbWl0CjU2Yjky
ZTUxODc2OTJmMGNhMjhhMTNmMGE1OTkzZWE2NmM5OWI2MGEKbXRkOiBhZGQgcGFyZW50IHN1cHBv
cnQKClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0K
IGRyaXZlcnMvbXRkL25hbmQvbmFuZF9vbWFwX2dwbWMuYyB8ICAgIDQgKystLQogMSBmaWxlcyBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tdGQvbmFuZC9uYW5kX29tYXBfZ3BtYy5jIGIvZHJpdmVycy9tdGQvbmFuZC9uYW5kX29t
YXBfZ3BtYy5jCmluZGV4IGY0ZjUzMzUuLmEyZTNlYjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRk
L25hbmQvbmFuZF9vbWFwX2dwbWMuYworKysgYi9kcml2ZXJzL210ZC9uYW5kL25hbmRfb21hcF9n
cG1jLmMKQEAgLTY3MCw3ICs2NzAsNyBAQCBzdGF0aWMgdm9pZCBvbWFwX3dyaXRlX2J1Zl9wcmVm
KHN0cnVjdCBtdGRfaW5mbyAqbXRkLAogCQlpZiAoIXN0YXR1cykKIAkJCWJyZWFrOwogCQlpZiAo
aXNfdGltZW91dChzdGFydCwgMTAwICogTVNFQ09ORCkpIHsKLQkJCWRldl9lcnIobXRkLT5kZXYs
ICJwcmVmZXRjaCBmbHVzaCB0aW1lZCBvdXRcbiIpOworCQkJZGV2X2VycihtdGQtPnBhcmVudCwg
InByZWZldGNoIGZsdXNoIHRpbWVkIG91dFxuIik7CiAJCQlicmVhazsKIAkJfQogCX0KQEAgLTky
OSw3ICs5MjksNyBAQCBzdGF0aWMgaW50IGdwbWNfbmFuZF9wcm9iZShzdHJ1Y3QgZGV2aWNlX2Qg
KnBkZXYpCiAKIAltaW5mbyA9ICZvaW5mby0+bWluZm87CiAJbWluZm8tPnByaXYgPSAodm9pZCAq
KW5hbmQ7Ci0JbWluZm8tPnBhcmVudCA9IGRldjsKKwltaW5mby0+cGFyZW50ID0gcGRldjsKIAog
CWlmIChwZGF0YS0+Y3MgPj0gR1BNQ19OVU1fQ1MpIHsKIAkJZGV2X2RiZyhwZGV2LCAiSW52YWxp
ZCBDUyFcbiIpOwotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
