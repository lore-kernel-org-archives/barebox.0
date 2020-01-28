Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQbD-0006N8-1S
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 13:08:12 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 28 Jan 2020 14:07:59 +0100
Message-Id: <20200128130801.24890-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20200128130801.24890-1-u.kleine-koenig@pengutronix.de>
References: <20200128130801.24890-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 1/3] commands/test: Bail out on incomplete command line options
To: barebox@lists.infradead.org

VGhpcyBtYWtlcyB0ZXN0IGVtaXQgYW4gZXJyb3IgKGFuZCBmYWlsKSBvbiBlLmcuCgoJdGVzdCAt
ZgoKYW5kIGFsc28gb24gdW5pbXBsZW1lbnRlZCBvcHRpb25zIGxpa2UKCgl0ZXN0IC1jIC9kZXYv
bnVsbAoKLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5p
Z0BwZW5ndXRyb25peC5kZT4KLS0tCiBjb21tYW5kcy90ZXN0LmMgfCA1ICsrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvY29tbWFuZHMvdGVzdC5jIGIv
Y29tbWFuZHMvdGVzdC5jCmluZGV4IGM0ZjQ5Mzg2MGYxNC4uYWIxMDhmYzg0NWQ1IDEwMDY0NAot
LS0gYS9jb21tYW5kcy90ZXN0LmMKKysrIGIvY29tbWFuZHMvdGVzdC5jCkBAIC0yMDgsNiArMjA4
LDExIEBAIHN0YXRpYyBpbnQgZG9fdGVzdChpbnQgYXJnYywgY2hhciAqYXJndltdKQogCQkJfQog
CQl9CiAKKwkJaWYgKGxlZnQgPCBhZHYpIHsKKwkJCXByaW50ZigidGVzdDogZmFpbGVkIHRvIHBh
cnNlIGFyZ3VtZW50c1xuIik7CisJCQlyZXR1cm4gMTsKKwkJfQorCiAJCWlmIChsYXN0X2NtcCA9
PSAwKQogCQkJZXhwciA9IGxhc3RfZXhwciB8fCBleHByOwogCQllbHNlIGlmIChsYXN0X2NtcCA9
PSAxKQotLSAKMi4yNC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
