Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggoYW-0007KT-P4
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 10:24:22 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue,  8 Jan 2019 11:24:12 +0100
Message-Id: <20190108102412.10553-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH RFC] imx6ul-phytec-phycore-som: don't use fsl,
 no-blockmark-swap for the NAND
To: barebox@lists.infradead.org
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>

YmFyZWJveCBkb2Vzbid0IGhvbm9yIHRoYXQgcHJvcGVydHkgd2hpY2ggeWllbGRzIHRvIGluY29u
c2l0ZW5jaWVzCmJldHdlZW4gTGludXggYW5kIGJhcmVib3ggYWZ0ZXIgZm9yIGV4YW1wbGUgZmls
bGluZyBhbiBVQkkgd2l0aCBhIGZpbGUKc3lzdGVtIHdpdGggYmFyZWJveCBhbmQgdGhlbiB0cnlp
bmcgdG8gbW91bnQgdGhhdCBmcm9tIExpbnV4LgoKTm90ZSB0aGlzIGlzIGFuIGludGVycnVwdGl2
ZSBjaGFuZ2UgYXMgaXQgcmVxdWlyZXMgdG8gcmV3cml0ZSB0aGUgZmxhc2gKdG8gbWFrZSBpdCB3
b3JraW5nIHdpdGggTGludXggYWdhaW4uCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5p
ZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KSGVsbG8sCgpJIHdvbmRlciB3
aHkgUGh5dGVjIGNob3NlIHRvIHVzZSB0aGlzIGNvbmZpZ3VyYXRpb24uIFdhcyB0aGlzIGp1c3QK
Y29waWVkIGZyb20gYW5vdGhlciBib2FyZD8KCkJlc3QgcmVnYXJkcwpVd2UKCiBhcmNoL2FybS9k
dHMvaW14NnVsLXBoeXRlYy1waHljb3JlLXNvbS5kdHNpIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9pbXg2dWwtcGh5dGVjLXBo
eWNvcmUtc29tLmR0c2kgYi9hcmNoL2FybS9kdHMvaW14NnVsLXBoeXRlYy1waHljb3JlLXNvbS5k
dHNpCmluZGV4IGQ4MjlmZGQ2ZmIyOS4uMzk4NTQ2ZDdiOTJlIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bS9kdHMvaW14NnVsLXBoeXRlYy1waHljb3JlLXNvbS5kdHNpCisrKyBiL2FyY2gvYXJtL2R0cy9p
bXg2dWwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kKQEAgLTQ5LDcgKzQ5LDYgQEAKIAlwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmcGluY3RybF9ncG1pX25hbmQ+Owog
CW5hbmQtb24tZmxhc2gtYmJ0OwotCWZzbCxuby1ibG9ja21hcmstc3dhcDsKIAlzdGF0dXMgPSAi
ZGlzYWJsZWQiOwogCiAJI2FkZHJlc3MtY2VsbHMgPSA8MT47Ci0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcg
bGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
