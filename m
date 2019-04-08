Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hDUHH-0007fK-9S
 for barebox@lists.infradead.org; Mon, 08 Apr 2019 13:25:37 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 8 Apr 2019 15:25:32 +0200
Message-Id: <1554729932-489-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] common: bootchooser: Fix compile warning
To: barebox@lists.infradead.org

TWFrZSBib290Y2hvb3Nlcl9nZXRfdGFyZ2V0KCkgc3RhdGljIHRvIHByZXZlbnQgZm9sbG93aW5n
IHdhcm5pbmc6Cgpjb21tb24vYm9vdGNob29zZXIuYzo2MzM6Mjg6IHdhcm5pbmc6IG5vIHByZXZp
b3VzIHByb3RvdHlwZSBmb3IKCSDigJhib290Y2hvb3Nlcl9nZXRfdGFyZ2V04oCZIFstV21pc3Np
bmctcHJvdG90eXBlc10Kc3RydWN0IGJvb3RjaG9vc2VyX3RhcmdldCAqYm9vdGNob29zZXJfZ2V0
X3RhcmdldChzdHJ1Y3QgYm9vdGNob29zZXIgKmJjKQoKU2lnbmVkLW9mZi1ieTogVGVyZXNhIFJl
bW1ldCA8dC5yZW1tZXRAcGh5dGVjLmRlPgotLS0KIGNvbW1vbi9ib290Y2hvb3Nlci5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvY29tbW9uL2Jvb3RjaG9vc2VyLmMgYi9jb21tb24vYm9vdGNob29zZXIuYwppbmRleCBj
NDdjNzM0YzljN2EuLmMwOGRiMDNlYmFhMSAxMDA2NDQKLS0tIGEvY29tbW9uL2Jvb3RjaG9vc2Vy
LmMKKysrIGIvY29tbW9uL2Jvb3RjaG9vc2VyLmMKQEAgLTYzMCw3ICs2MzAsNyBAQCB2b2lkIGJv
b3RjaG9vc2VyX2luZm8oc3RydWN0IGJvb3RjaG9vc2VyICpiYykKICAqCiAgKiBSZXR1cm46IFRo
ZSBuZXh0IHRhcmdldAogICovCi1zdHJ1Y3QgYm9vdGNob29zZXJfdGFyZ2V0ICpib290Y2hvb3Nl
cl9nZXRfdGFyZ2V0KHN0cnVjdCBib290Y2hvb3NlciAqYmMpCitzdGF0aWMgc3RydWN0IGJvb3Rj
aG9vc2VyX3RhcmdldCAqYm9vdGNob29zZXJfZ2V0X3RhcmdldChzdHJ1Y3QgYm9vdGNob29zZXIg
KmJjKQogewogCXN0cnVjdCBib290Y2hvb3Nlcl90YXJnZXQgKnRhcmdldDsKIAotLSAKMi43LjQK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
