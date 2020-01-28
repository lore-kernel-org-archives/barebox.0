Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQbD-0006NY-Lv
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 13:08:13 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 28 Jan 2020 14:08:01 +0100
Message-Id: <20200128130801.24890-4-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 3/3] commands/test: Implement -b and -c to test for character
 and block devices
To: barebox@lists.infradead.org

VGhlc2UgbWF0Y2ggdGhlIHNhbWUgb3B0aW9ucyBvbiBjb3JldXRpbCdzIHRlc3QoMSkuCgpTaWdu
ZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4
LmRlPgotLS0KIGNvbW1hbmRzL3Rlc3QuYyB8IDE0ICsrKysrKysrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2NvbW1hbmRzL3Rlc3QuYyBiL2Nv
bW1hbmRzL3Rlc3QuYwppbmRleCA5MDcwZTQ5MDc0OTYuLjg2NjM2ZGUxYzI4MyAxMDA2NDQKLS0t
IGEvY29tbWFuZHMvdGVzdC5jCisrKyBiL2NvbW1hbmRzL3Rlc3QuYwpAQCAtNDAsNiArNDAsOCBA
QCB0eXBlZGVmIGVudW0gewogCU9QVF9ESVJFQ1RPUlksCiAJT1BUX0ZJTEUsCiAJT1BUX0VYSVNU
UywKKwlPUFRfQkxPQ0ssCisJT1BUX0NIQVIsCiAJT1BUX1NZTUJPTElDX0xJTkssCiAJT1BUX01B
WCwKIH0gdGVzdF9vcHRzOwpAQCAtNjAsNiArNjIsOCBAQCBzdGF0aWMgY2hhciAqdGVzdF9vcHRp
b25zW10gPSB7CiAJW09QVF9GSUxFXQkJCT0gIi1mIiwKIAlbT1BUX0RJUkVDVE9SWV0JCQk9ICIt
ZCIsCiAJW09QVF9FWElTVFNdCQkJPSAiLWUiLAorCVtPUFRfQkxPQ0tdCQkJPSAiLWIiLAorCVtP
UFRfQ0hBUl0JCQk9ICItYyIsCiAJW09QVF9TWU1CT0xJQ19MSU5LXQkJPSAiLUwiLAogfTsKIApA
QCAtMTQyLDYgKzE0Niw4IEBAIHN0YXRpYyBpbnQgZG9fdGVzdChpbnQgYXJnYywgY2hhciAqYXJn
dltdKQogCQljYXNlIE9QVF9GSUxFOgogCQljYXNlIE9QVF9ESVJFQ1RPUlk6CiAJCWNhc2UgT1BU
X0VYSVNUUzoKKwkJY2FzZSBPUFRfQkxPQ0s6CisJCWNhc2UgT1BUX0NIQVI6CiAJCWNhc2UgT1BU
X1NZTUJPTElDX0xJTks6CiAJCQlhZHYgPSAyOwogCQkJaWYgKGxlZnQgPCAyKQpAQCAtMTY5LDYg
KzE3NSwxNCBAQCBzdGF0aWMgaW50IGRvX3Rlc3QoaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKIAkJ
CQkJZXhwciA9IDE7CiAJCQkJCWJyZWFrOwogCQkJCX0KKwkJCQlpZiAob3B0ID09IE9QVF9CTE9D
SyAmJiBTX0lTQkxLKHN0YXRidWYuc3RfbW9kZSkpIHsKKwkJCQkJZXhwciA9IDE7CisJCQkJCWJy
ZWFrOworCQkJCX0KKwkJCQlpZiAob3B0ID09IE9QVF9DSEFSICYmIFNfSVNDSFIoc3RhdGJ1Zi5z
dF9tb2RlKSkgeworCQkJCQlleHByID0gMTsKKwkJCQkJYnJlYWs7CisJCQkJfQogCQkJfQogCQkJ
YnJlYWs7CiAKLS0gCjIuMjQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
