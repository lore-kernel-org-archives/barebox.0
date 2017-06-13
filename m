Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKttR-0004Qq-SL
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 22:02:35 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 14 Jun 2017 00:02:07 +0200
Message-Id: <20170613220207.18376-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] scripts/kwbimage: support empty binary.0 files
To: barebox@lists.infradead.org

V2hpbGUgaXQgZG9lc24ndCBtYWtlIHNlbnNlIHRvIHVzZSBlbXB0eSBiaW5hcnkgaGVhZGVycyBv
biBhIG1hY2hpbmUgZm9yCmZpcnN0IHN0YWdlLCBpdCBpcyBjb252ZW5pZW50IHRvIHN1cHBvcnQg
dGhpcyBmb3IgYnVpbGQgdGVzdGluZy4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmln
IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogc2NyaXB0cy9rd2JpbWFnZS5j
IHwgNiArKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9zY3JpcHRzL2t3YmltYWdlLmMgYi9zY3JpcHRzL2t3YmltYWdlLmMK
aW5kZXggNWI4NGRiM2Y3YTIzLi4yYTA1MmE3ZmYzODUgMTAwNjQ0Ci0tLSBhL3NjcmlwdHMva3di
aW1hZ2UuYworKysgYi9zY3JpcHRzL2t3YmltYWdlLmMKQEAgLTk2Nyw3ICs5NjcsMTEgQEAgc3Rh
dGljIHZvaWQgKmltYWdlX2NyZWF0ZV92MShzdHJ1Y3QgaW1hZ2VfY2ZnX2VsZW1lbnQgKmltYWdl
X2NmZywKIAogCQljdXIgKz0gKGJpbmFyeWUtPmJpbmFyeS5uYXJncyArIDEpICogc2l6ZW9mKHVu
c2lnbmVkIGludCk7CiAKLQkJcmV0ID0gZnJlYWQoY3VyLCBzLnN0X3NpemUsIDEsIGJpbik7CisJ
CWlmIChzLnN0X3NpemUpCisJCQlyZXQgPSBmcmVhZChjdXIsIHMuc3Rfc2l6ZSwgMSwgYmluKTsK
KwkJZWxzZQorCQkJcmV0ID0gMTsKKwogCQlpZiAocmV0ICE9IDEpIHsKIAkJCWZwcmludGYoc3Rk
ZXJyLAogCQkJCSJDb3VsZCBub3QgcmVhZCBiaW5hcnkgaW1hZ2UgJXNcbiIsCi0tIAoyLjExLjAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
