Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UXpUM-00042D-40
 for barebox@lists.infradead.org; Thu, 02 May 2013 09:07:43 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  2 May 2013 11:07:12 +0200
Message-Id: <1367485632-10725-3-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1367485632-10725-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1367485632-10725-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH RFC 2/2] Don't honor initrd load address
To: barebox@lists.infradead.org

RnJvbTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgoKVS1Cb290IGRvZXNu
J3QgaG9ub3IgdGhlIGxvYWQgYWRkcmVzcyBzcGVjaWZpZWQgaW4gYW4gaW5pdHJkLiBCYXJlYm94
CnNob3VsZG4ndCBiZSBtb3JlIHN0cmljdCBoZXJlLiBUaGlzIHVuYnJlYWtzIGJvb3RpbmcgYW4g
dUluaXRyZApnZW5lcmF0ZWQgYnkgRGViaWFuJ3MgZmxhc2gta2VybmVsIHRoYXQgdXNlcyAwIGFz
IGVudHJ5IGFkZHJlc3Mgd2hlcmUKdGhlcmUgaXMgbm90aGluZyBvbiB0aGUgaS5NWDUzIHRoYXQg
d2FzIHVzZWQuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29l
bmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGNvbW1hbmRzL2Jvb3RtLmMgfCAzIC0tLQogMSBmaWxl
IGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvY29tbWFuZHMvYm9vdG0uYyBi
L2NvbW1hbmRzL2Jvb3RtLmMKaW5kZXggYmI0NDc3Ni4uNWRkMTcwMyAxMDA2NDQKLS0tIGEvY29t
bWFuZHMvYm9vdG0uYworKysgYi9jb21tYW5kcy9ib290bS5jCkBAIC0xMjcsOSArMTI3LDYgQEAg
c3RhdGljIGludCBib290bV9vcGVuX2luaXRyZF91aW1hZ2Uoc3RydWN0IGltYWdlX2RhdGEgKmRh
dGEpCiAJCWRhdGEtPmluaXRyZCA9IGRhdGEtPm9zOwogCX0KIAotCWlmIChkYXRhLT5pbml0cmRf
YWRkcmVzcyA9PSBVSU1BR0VfSU5WQUxJRF9BRERSRVNTKQotCQlkYXRhLT5pbml0cmRfYWRkcmVz
cyA9IGRhdGEtPmluaXRyZC0+aGVhZGVyLmloX2xvYWQ7Ci0KIAlyZXR1cm4gMDsKIH0KIAotLSAK
MS44LjIucmMyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
