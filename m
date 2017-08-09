Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dfIO5-0000pQ-QL
 for barebox@lists.infradead.org; Wed, 09 Aug 2017 04:14:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id C3B669C292B
 for <barebox@lists.infradead.org>; Wed,  9 Aug 2017 00:13:23 -0400 (EDT)
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@savoirfairelinux.com>
Date: Wed,  9 Aug 2017 00:13:19 -0400
Message-Id: <20170809041320.28874-2-gael.portay@savoirfairelinux.com>
In-Reply-To: <20170809041320.28874-1-gael.portay@savoirfairelinux.com>
References: <20170809041320.28874-1-gael.portay@savoirfairelinux.com>
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
Subject: [PATCH v2 1/2] readline_simple: return -1 if getc fails
To: barebox@lists.infradead.org
Cc: =?utf-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@savoirfairelinux.com>

VGhlIGdldGMgZnVuY3Rpb24gbWF5IHJldHVybiBhbiBlcnJubyBjb2RlIGlmIGFuIGVycm9yIGhh
cHBlbnMuCgpUaGlzIHBhdGNoIHByZXZlbnRzIHJlYWRsaW5lIGZyb20gcHJpbnRpbmcgYSBub24g
cHJpbnRhYmxlIGNoYXJhY3RlciBhbmQKZnJvbSBsb29waW5nIHRvIGluZmluaXR5IGFuZCBiZXlv
bmcuCgpTaWduZWQtb2ZmLWJ5OiBHYcOrbCBQT1JUQVkgPGdhZWwucG9ydGF5QHNhdm9pcmZhaXJl
bGludXguY29tPgotLS0KIGxpYi9yZWFkbGluZV9zaW1wbGUuYyB8IDYgKysrKystCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbGli
L3JlYWRsaW5lX3NpbXBsZS5jIGIvbGliL3JlYWRsaW5lX3NpbXBsZS5jCmluZGV4IGM0ZDNkMjQw
ZS4uN2RkMThlNDI2IDEwMDY0NAotLS0gYS9saWIvcmVhZGxpbmVfc2ltcGxlLmMKKysrIGIvbGli
L3JlYWRsaW5lX3NpbXBsZS5jCkBAIC00Nyw3ICs0Nyw3IEBAIGludCByZWFkbGluZSAoY29uc3Qg
Y2hhciAqcHJvbXB0LCBjaGFyICpsaW5lLCBpbnQgbGVuKQogCWludAluID0gMDsJCQkJLyogYnVm
ZmVyIGluZGV4CQkqLwogCWludAlwbGVuID0gMDsJCQkvKiBwcm9tcHQgbGVuZ3RoCSovCiAJaW50
CWNvbDsJCQkJLyogb3V0cHV0IGNvbHVtbiBjbnQJKi8KLQljaGFyCWM7CisJaW50CWM7CiAKIAkv
KiBwcmludCBwcm9tcHQgKi8KIAlpZiAocHJvbXB0KSB7CkBAIC01OCw2ICs1OCwxMCBAQCBpbnQg
cmVhZGxpbmUgKGNvbnN0IGNoYXIgKnByb21wdCwgY2hhciAqbGluZSwgaW50IGxlbikKIAogCWZv
ciAoOzspIHsKIAkJYyA9IGdldGNoYXIoKTsKKwkJaWYgKGMgPCAwKSB7CisJCQkqcCA9ICdcMCc7
CisJCQlyZXR1cm4gKC0xKTsKKwkJfQogCiAJCS8qCiAJCSAqIFNwZWNpYWwgY2hhcmFjdGVyIGhh
bmRsaW5nCi0tIAoyLjEzLjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
