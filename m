Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auyzL-0006Fl-8E
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 09:09:00 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 26 Apr 2016 11:08:34 +0200
Message-Id: <1461661714-24282-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] serial_auart: make dt aware
To: barebox@lists.infradead.org

VGhpcyBhbGxvd3MgdG8gaW5zdGFudGlhdGUgZGV2aWNlcyBmcm9tIGFuIG9mdHJlZSBhbmQgc28g
YWxsb3dzCnRvIHNlbGVjdCB0aGUgY29uc29sZSB1c2luZyAvY2hvc2VuL3N0ZG91dC1wYXRoLgoK
U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBkcml2ZXJzL3NlcmlhbC9zZXJpYWxfYXVhcnQuYyB8IDkgKysrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
ZXJpYWwvc2VyaWFsX2F1YXJ0LmMgYi9kcml2ZXJzL3NlcmlhbC9zZXJpYWxfYXVhcnQuYwppbmRl
eCA5YmVmNTc2Y2Q3MDEuLmMzYjlhMTk5NWY3ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zZXJpYWwv
c2VyaWFsX2F1YXJ0LmMKKysrIGIvZHJpdmVycy9zZXJpYWwvc2VyaWFsX2F1YXJ0LmMKQEAgLTIz
MCw5ICsyMzAsMTggQEAgc3RhdGljIHZvaWQgYXVhcnRfc2VyaWFsX3JlbW92ZShzdHJ1Y3QgZGV2
aWNlX2QgKmRldikKIAlmcmVlKHByaXYpOwogfQogCitzdGF0aWMgY29uc3QgX19tYXliZV91bnVz
ZWQgc3RydWN0IG9mX2RldmljZV9pZCBhdWFydF9zZXJpYWxfZHRfaWRzW10gPSB7CisJeworCQku
Y29tcGF0aWJsZSA9ICJmc2wsaW14MjMtYXVhcnQiLAorCX0sIHsKKwkJLyogc2VudGluZWwgKi8K
Kwl9Cit9OworCiBzdGF0aWMgc3RydWN0IGRyaXZlcl9kIGF1YXJ0X3NlcmlhbF9kcml2ZXIgPSB7
CiAJLm5hbWUgPSAiYXVhcnRfc2VyaWFsIiwKIAkucHJvYmUgPSBhdWFydF9zZXJpYWxfcHJvYmUs
CiAJLnJlbW92ZSA9IGF1YXJ0X3NlcmlhbF9yZW1vdmUsCisJLm9mX2NvbXBhdGlibGUgPSBEUlZf
T0ZfQ09NUEFUKGF1YXJ0X3NlcmlhbF9kdF9pZHMpLAogfTsKIGNvbnNvbGVfcGxhdGZvcm1fZHJp
dmVyKGF1YXJ0X3NlcmlhbF9kcml2ZXIpOwotLSAKMi44LjAucmMzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=
