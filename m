Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fngNv-0005h3-DU
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 08:33:32 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  9 Aug 2018 10:33:12 +0200
Message-Id: <20180809083313.13034-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20180809083313.13034-1-u.kleine-koenig@pengutronix.de>
References: <20180809083313.13034-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/3] libfile: open_and_lseek: enlarge small files enough to
 make lseek possible
To: barebox@lists.infradead.org

VGhpcyBtYWtlcyB0aGUgZm9sbG93aW5nIGRvIHRoZSBleHBlY3RlZCB0aGluZzoKCgliYXJlYm94
QGJhcmVib3ggc2FuZGJveDovIGxzIC1sIGxhbGEKCS1yd3hyd3hyd3ggICAgICAgICAgICAgIDQg
bGFsYQoJYmFyZWJveEBiYXJlYm94IHNhbmRib3g6LyBtdyAtZCBsYWxhIDcyIDAKCldpdGhvdXQg
dGhpcyBwYXRjaCBtdyBkaWVzIHdpdGgKCglsc2VlazogSW52YWxpZCBhcmd1bWVudAoKbWVtc2V0
LCBtZW1jcHkgYW5kIHByb2JhYmx5IG90aGVycyBiZW5lZml0IGluIHRoZSBzYW1lIHdheS4KClNp
Z25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9u
aXguZGU+Ci0tLQogbGliL2xpYmZpbGUuYyB8IDE4ICsrKysrKysrKysrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9saWIvbGliZmlsZS5jIGIv
bGliL2xpYmZpbGUuYwppbmRleCA4M2M2Mzk5YTViMzkuLjAxYzU5Y2RiODBmZSAxMDA2NDQKLS0t
IGEvbGliL2xpYmZpbGUuYworKysgYi9saWIvbGliZmlsZS5jCkBAIC01MTAsNiArNTEwLDI0IEBA
IGludCBvcGVuX2FuZF9sc2Vlayhjb25zdCBjaGFyICpmaWxlbmFtZSwgaW50IG1vZGUsIGxvZmZf
dCBwb3MpCiAJaWYgKCFwb3MpCiAJCXJldHVybiBmZDsKIAorCWlmIChtb2RlICYgKE9fV1JPTkxZ
IHwgT19SRFdSKSkgeworCQlzdHJ1Y3Qgc3RhdCBzOworCisJCXJldCA9IGZzdGF0KGZkLCAmcyk7
CisJCWlmIChyZXQpIHsKKwkJCXBlcnJvcigiZnRydW5jYXRlIik7CisJCQlyZXR1cm4gcmV0Owor
CQl9CisKKwkJaWYgKHMuc3Rfc2l6ZSA8IHBvcykgeworCQkJcmV0ID0gZnRydW5jYXRlKGZkLCBw
b3MpOworCQkJaWYgKHJldCkgeworCQkJCXBlcnJvcigiZnRydW5jYXRlIik7CisJCQkJcmV0dXJu
IHJldDsKKwkJCX0KKwkJfQorCX0KKwogCXJldCA9IGxzZWVrKGZkLCBwb3MsIFNFRUtfU0VUKTsK
IAlpZiAocmV0ID09IC0xKSB7CiAJCXBlcnJvcigibHNlZWsiKTsKLS0gCjIuMTguMAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGlu
ZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
