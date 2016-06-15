Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bD4GY-0005M9-To
 for barebox@lists.infradead.org; Wed, 15 Jun 2016 06:25:31 +0000
Received: by mail-lf0-x243.google.com with SMTP id w130so744086lfd.2
 for <barebox@lists.infradead.org>; Tue, 14 Jun 2016 23:25:10 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jun 2016 09:25:01 +0300
Message-Id: <1465971901-24827-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] net: phy: make locally used of_phy_register_fixed_link()
 static
To: barebox@lists.infradead.org

VGhlIHBhdGNoIGZpeGVzIHRoaXMgY29tcGlsZXIncyB3YXJuaW5nOgoKICAgIGRyaXZlcnMvbmV0
L3BoeS9waHkuYzozMDM6MjA6IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3IKICAg
IOKAmG9mX3BoeV9yZWdpc3Rlcl9maXhlZF9saW5r4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10K
ClNpZ25lZC1vZmYtYnk6IEFudG9ueSBQYXZsb3YgPGFudG9ueW5wYXZsb3ZAZ21haWwuY29tPgot
LS0KIGRyaXZlcnMvbmV0L3BoeS9waHkuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L3Bo
eS5jIGIvZHJpdmVycy9uZXQvcGh5L3BoeS5jCmluZGV4IGVkNjlkOWIuLjEzYjgzMjQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvbmV0L3BoeS9waHkuYworKysgYi9kcml2ZXJzL25ldC9waHkvcGh5LmMK
QEAgLTMwMCw3ICszMDAsOCBAQCB2b2lkIHBoeV91bnJlZ2lzdGVyX2RldmljZShzdHJ1Y3QgcGh5
X2RldmljZSAqcGh5ZGV2KQogCXBoeWRldi0+cmVnaXN0ZXJlZCA9IDA7CiB9CiAKLXN0cnVjdCBw
aHlfZGV2aWNlICpvZl9waHlfcmVnaXN0ZXJfZml4ZWRfbGluayhzdHJ1Y3QgZGV2aWNlX25vZGUg
Km5wLCBzdHJ1Y3QgZXRoX2RldmljZSAqZWRldikKK3N0YXRpYyBzdHJ1Y3QgcGh5X2RldmljZSAq
b2ZfcGh5X3JlZ2lzdGVyX2ZpeGVkX2xpbmsoc3RydWN0IGRldmljZV9ub2RlICpucCwKKwkJCQkJ
CXN0cnVjdCBldGhfZGV2aWNlICplZGV2KQogewogCXN0cnVjdCBwaHlfZGV2aWNlICpwaHlkZXY7
CiAKLS0gCjIuNy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
