Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1deqFV-0008Kd-Kl
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 22:11:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 2D2AA9C2863
 for <barebox@lists.infradead.org>; Mon,  7 Aug 2017 18:10:46 -0400 (EDT)
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@savoirfairelinux.com>
Date: Mon,  7 Aug 2017 18:10:41 -0400
Message-Id: <20170807221042.19700-2-gael.portay@savoirfairelinux.com>
In-Reply-To: <20170807221042.19700-1-gael.portay@savoirfairelinux.com>
References: <20170807221042.19700-1-gael.portay@savoirfairelinux.com>
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
Subject: [PATCH 1/2] readline_simple: return -1 if getc fails
To: barebox@lists.infradead.org
Cc: =?utf-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@savoirfairelinux.com>

VGhlIGdldGMgZnVuY3Rpb24gbWF5IHJldHVybiBhbiBlcnJubyBjb2RlIGlmIGFuIGVycm9yIGhh
cHBlbnMuCgpUaGlzIHBhdGNoIHByZXZlbnRzIHJlYWRsaW5lIGZyb20gcHJpbnRpbmcgYSBub24g
cHJpbnRhYmxlIGNoYXJhY3RlciBhbmQKZnJvbSBsb29waW5nIHRvIGluZmluaXR5IGFuZCBiZXlv
bmcuCgpTaWduZWQtb2ZmLWJ5OiBHYcOrbCBQT1JUQVkgPGdhZWwucG9ydGF5QHNhdm9pcmZhaXJl
bGludXguY29tPgotLS0KIGxpYi9yZWFkbGluZV9zaW1wbGUuYyB8IDIgKysKIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9saWIvcmVhZGxpbmVfc2ltcGxlLmMg
Yi9saWIvcmVhZGxpbmVfc2ltcGxlLmMKaW5kZXggYzRkM2QyNDBlLi4xMjgzYzk2MDIgMTAwNjQ0
Ci0tLSBhL2xpYi9yZWFkbGluZV9zaW1wbGUuYworKysgYi9saWIvcmVhZGxpbmVfc2ltcGxlLmMK
QEAgLTU4LDYgKzU4LDggQEAgaW50IHJlYWRsaW5lIChjb25zdCBjaGFyICpwcm9tcHQsIGNoYXIg
KmxpbmUsIGludCBsZW4pCiAKIAlmb3IgKDs7KSB7CiAJCWMgPSBnZXRjaGFyKCk7CisJCWlmIChj
IDwgMCkKKwkJCXJldHVybiAoLTEpOwogCiAJCS8qCiAJCSAqIFNwZWNpYWwgY2hhcmFjdGVyIGhh
bmRsaW5nCi0tIAoyLjEzLjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
