Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRFps-0006dm-6n
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 06:23:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A505ABF0EC
 for <barebox@lists.infradead.org>; Wed,  2 Oct 2013 07:21:54 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Wed, 2 Oct 2013 08:22:30 +0200
Message-Id: <1380694950-20022-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCHv2] mci: omap: Fix default value of mci.f_max
To: barebox@lists.infradead.org

V2l0aCBjb21taXQgYzJlZjQ3ODg3IG1jaS5mX21heCBkZWZhdWx0IHZhbHVlIGlzCm9ubHkgc2V0
IHdoZW4gcGRhdGEgaXMgYXZhaWxhYmxlLgoKRml4IHRoaXMgd2l0aCBhbHdheXMgc2V0dGluZyB0
aGUgbWNpLmZfbWF4IGRlZmF1bHQKdmFsdWUgYW5kIG92ZXJyaXRlIGl0IHdoZW4gcGRhdGEgYXZh
aWxhYmxlLgoKU2lnbmVkLW9mZi1ieTogVGVyZXNhIEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+
Ci0tLQpjaGFuZ2VzIGluIHYyOgotIHNldCBkZWZhdWx0IHZhbHVlIGFsd2F5cyBhbmQgb3Zlcndy
aXRlIGl0IHdoZW4gcGRhdGEgYXZhaWxhYmxlIAotIHVwZGF0ZWQgY29tbWl0IG1lc3NhZ2UKCiBk
cml2ZXJzL21jaS9vbWFwX2hzbW1jLmMgfCAgICA0ICstLS0KIDEgZmlsZXMgY2hhbmdlZCwgMSBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWNpL29t
YXBfaHNtbWMuYyBiL2RyaXZlcnMvbWNpL29tYXBfaHNtbWMuYwppbmRleCBhMmNkM2ZlLi4xOWRi
NDYxIDEwMDY0NAotLS0gYS9kcml2ZXJzL21jaS9vbWFwX2hzbW1jLmMKKysrIGIvZHJpdmVycy9t
Y2kvb21hcF9oc21tYy5jCkBAIC02MDksMTkgKzYwOSwxNyBAQCBzdGF0aWMgaW50IG9tYXBfbW1j
X3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCWhzbW1jLT5tY2kudm9sdGFnZXMgPSBNTUNf
VkREXzMyXzMzIHwgTU1DX1ZERF8zM18zNDsKIAogCWhzbW1jLT5tY2kuZl9taW4gPSA0MDAwMDA7
CisJaHNtbWMtPm1jaS5mX21heCA9IDUyMDAwMDAwOwogCiAJcGRhdGEgPSAoc3RydWN0IG9tYXBf
aHNtbWNfcGxhdGZvcm1fZGF0YSAqKWRldi0+cGxhdGZvcm1fZGF0YTsKIAlpZiAocGRhdGEpIHsK
IAkJaWYgKHBkYXRhLT5mX21heCkKIAkJCWhzbW1jLT5tY2kuZl9tYXggPSBwZGF0YS0+Zl9tYXg7
Ci0JCWVsc2UKLQkJCWhzbW1jLT5tY2kuZl9tYXggPSA1MjAwMDAwMDsKIAogCQlpZiAocGRhdGEt
PmRldm5hbWUpCiAJCQloc21tYy0+bWNpLmRldm5hbWUgPSBwZGF0YS0+ZGV2bmFtZTsKIAl9CiAK
LQogCWRldi0+cHJpdiA9IGhzbW1jOwogCWRldi0+ZGV0ZWN0ID0gb21hcF9tbWNfZGV0ZWN0LAog
Ci0tIAoxLjcuMC40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
