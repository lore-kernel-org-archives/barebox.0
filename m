Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkU43-0001Nm-EG
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 10:38:44 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 15 Sep 2016 12:38:16 +0200
Message-Id: <1473935897-9252-4-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1473935897-9252-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1473935897-9252-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: mvebu: select HAVE_DEFAULT_ENVIRONMENT_NEW
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Tm9uZSBvZiB0aGUgYXZhaWxhYmxlIGJvYXJkcyBmb3IgbXZlYnUgaGFzIGFueSBlbnZpcm9ubWVu
dCBhZGRpdGlvbnMsIHNvCnRoaXMgaXMgc2FmZS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogYXJjaC9hcm0vS2Nv
bmZpZyAgICAgICAgICAgICAgICAgfCAxICsKIGFyY2gvYXJtL2NvbmZpZ3MvbXZlYnVfZGVmY29u
ZmlnIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9hcmNoL2FybS9LY29uZmlnIGIvYXJjaC9hcm0vS2NvbmZpZwppbmRleCAxNTAzMjBjNmFmODYu
LjNjNTU3MmU3MDBiYiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vS2NvbmZpZworKysgYi9hcmNoL2Fy
bS9LY29uZmlnCkBAIC0xMjUsNiArMTI1LDcgQEAgY29uZmlnIEFSQ0hfTVZFQlUKIAlzZWxlY3Qg
Q0xLREVWX0xPT0tVUAogCXNlbGVjdCBHUElPTElCCiAJc2VsZWN0IEhBU19ERUJVR19MTAorCXNl
bGVjdCBIQVZFX0RFRkFVTFRfRU5WSVJPTk1FTlRfTkVXCiAJc2VsZWN0IEhBVkVfUEJMX01VTFRJ
X0lNQUdFUwogCXNlbGVjdCBIV19IQVNfUENJCiAJc2VsZWN0IE1WRUJVX01CVVMKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2NvbmZpZ3MvbXZlYnVfZGVmY29uZmlnIGIvYXJjaC9hcm0vY29uZmlncy9t
dmVidV9kZWZjb25maWcKaW5kZXggOTk5OGNlNDJkNmIwLi4zOWU3ZWYxNzk4ZjUgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtL2NvbmZpZ3MvbXZlYnVfZGVmY29uZmlnCisrKyBiL2FyY2gvYXJtL2NvbmZp
Z3MvbXZlYnVfZGVmY29uZmlnCkBAIC0xMjMsNiArMTIzLDggQEAgQ09ORklHX0dQSU9fT1JJT049
eQogQ09ORklHX1BDSV9NVkVCVT15CiBDT05GSUdfRlNfQ1JBTUZTPXkKIENPTkZJR19GU19FWFQ0
PXkKK0NPTkZJR19GU19URlRQPXkKK0NPTkZJR19GU19ORlM9eQogQ09ORklHX0ZTX0ZBVD15CiBD
T05GSUdfRlNfRkFUX1dSSVRFPXkKIENPTkZJR19GU19GQVRfTEZOPXkKLS0gCjIuOC4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
