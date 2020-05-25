Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAQj-0001xD-8s
 for barebox@lists.infradead.org; Mon, 25 May 2020 10:34:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 May 2020 12:33:33 +0200
Message-Id: <20200525103349.19449-5-s.hauer@pengutronix.de>
In-Reply-To: <20200525103349.19449-1-s.hauer@pengutronix.de>
References: <20200525103349.19449-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/20] fastboot: don't close fd 0 when downloading to ram
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

RnJvbTogRGFuaWVsIEdsw7Zja25lciA8ZGdAZW1saXguY29tPgoKV2hlbiBkb3dubG9hZGluZyB0
byBhIGJ1ZmZlciwgZG93bmxvYWRfZmQgaXMgbmV2ZXIgYXNzaWduZWQgYSB2YWxpZCBmaWxlCmRl
c2NyaXB0b3IuIFdlIHNob3VsZCB0aGVyZWZvcmUgYXZvaWQgY2FsbGluZyBjbG9zZSBvbiB0aGUg
dmFsdWUgZm91bmQKaW4gdGhhdCB2YXJpYWJsZS4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBHbMO2
Y2tuZXIgPGRnQGVtbGl4LmNvbT4KU2lnbmVkLW9mZi1ieTogU2FzY2hhIEhhdWVyIDxzLmhhdWVy
QHBlbmd1dHJvbml4LmRlPgotLS0KIGNvbW1vbi9mYXN0Ym9vdC5jIHwgMyArKy0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9jb21t
b24vZmFzdGJvb3QuYyBiL2NvbW1vbi9mYXN0Ym9vdC5jCmluZGV4IGQ1OGY2OGYxYmIuLjFlMTJm
OTk5MTUgMTAwNjQ0Ci0tLSBhL2NvbW1vbi9mYXN0Ym9vdC5jCisrKyBiL2NvbW1vbi9mYXN0Ym9v
dC5jCkBAIC0zNDIsNyArMzQyLDggQEAgaW50IGZhc3Rib290X2hhbmRsZV9kb3dubG9hZF9kYXRh
KHN0cnVjdCBmYXN0Ym9vdCAqZmIsIGNvbnN0IHZvaWQgKmJ1ZmZlciwKIAogdm9pZCBmYXN0Ym9v
dF9kb3dubG9hZF9maW5pc2hlZChzdHJ1Y3QgZmFzdGJvb3QgKmZiKQogewotCWNsb3NlKGZiLT5k
b3dubG9hZF9mZCk7CisJaWYgKCFmYXN0Ym9vdF9kb3dubG9hZF90b19idWYoZmIpKQorCQljbG9z
ZShmYi0+ZG93bmxvYWRfZmQpOwogCiAJcHJpbnRmKCJcbiIpOwogCi0tIAoyLjI2LjIKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxp
bmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
