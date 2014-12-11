Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xyzqk-0006Nj-IE
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 09:15:56 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 11 Dec 2014 10:15:25 +0100
Message-Id: <1418289327-28310-3-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1418289327-28310-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1418289327-28310-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/4] arm/cpu/lowlevel: Use coprocessor instruction for ARMv7,
 too
To: barebox@lists.infradead.org

QVJNdjcgYWxzbyBzdXBwb3J0cyB0aGUgbWNyIHN5bnRheCBmb3IgdGhlIGlzYiBpbnN0cnVjdGlv
bnMsIHNvIHVzZSB0aGF0Cm9uZSB0byBzaW1wbGlmeSB0aGUgY29kZSBhIGJpdC4gVGhlIExpbnV4
IGtlcm5lbCBkb2VzIHRoZSBzYW1lLCBmb3IKZXhhbXBsZSBpbiB0aGUgZGVjb21wcmVzc29yJ3Mg
X19hcm12N19tbXVfY2FjaGVfb24gZnVuY3Rpb24uCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5l
LUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGFyY2gvYXJtL2Nw
dS9sb3dsZXZlbC5TIHwgMTQgKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2NwdS9sb3ds
ZXZlbC5TIGIvYXJjaC9hcm0vY3B1L2xvd2xldmVsLlMKaW5kZXggN2NjMTRiOTU0ZjFmLi43Yzk5
ZWNhYWQ5ZGQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2NwdS9sb3dsZXZlbC5TCisrKyBiL2FyY2gv
YXJtL2NwdS9sb3dsZXZlbC5TCkBAIC0xMSwxMCArMTEsMTYgQEAgRU5UUlkoYXJtX2NwdV9sb3ds
ZXZlbF9pbml0KQogCW9ycglyMTIsIHIxMiwgIzB4ZDMKIAltc3IJY3BzciwgcjEyCiAKLSNpZiBf
X0xJTlVYX0FSTV9BUkNIX18gPj0gNwotCWlzYgotI2VsaWYgX19MSU5VWF9BUk1fQVJDSF9fID09
IDYKLQltY3IJcDE1LCAwLCByMTIsIGM3LCBjNSwgNAorI2lmIF9fTElOVVhfQVJNX0FSQ0hfXyA+
PSA2CisJLyoKKwkgKiBOb3RlIHRoYXQgdGhlIEFSTSBBcmNoaXRlY3R1cmUgUmVmZXJlbmNlIE1h
bnVhbCwgQVJNdjctQSBhbmQgQVJNdjctUgorCSAqIGVkaXRpb24gKEFSTSBEREkgMDQwNkMuYykg
ZG9lc24ndCBkZWZpbmUgdGhpcyBpbnN0cnVjdGlvbiBpbiB0aGUKKwkgKiBBUk12NiBwYXJ0IChE
MTIuNy4xMCkuIEl0IG9ubHkgaGFzOiAiU3VwcG9ydCBvZiBhZGRpdGlvbmFsCisJICogb3BlcmF0
aW9ucyBpcyBJTVBMRU1FTlRBVElPTiBERUZJTkVEIi4KKwkgKiBCdXQgYW4gZWFybGllciB2ZXJz
aW9uIG9mIHRoZSBBUk1BUk0gKEFSTSBEREkgMDEwMEkpIGRvZXMgZGVmaW5lIGl0CisJICogYXMg
IkZsdXNoIHByZWZldGNoIGJ1ZmZlciAoUHJlZmV0Y2hGbHVzaCkiLgorCSAqLworCW1jcglwMTUs
IDAsIHIxMiwgYzcsIGM1LCA0CQkvKiBJU0IgKi8KICNlbmRpZgogCiAJLyogZGlzYWJsZSBNTVUg
c3R1ZmYgYW5kIGRhdGEvdW5pZmllZCBjYWNoZXMgKi8KLS0gCjIuMS4zCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QK
YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
