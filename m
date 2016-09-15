Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkU47-0001PY-Cd
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 10:38:47 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 15 Sep 2016 12:38:14 +0200
Message-Id: <1473935897-9252-2-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: mvebu_defconfig: oldconfig
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

VGhpcyBpcyB0aGUgcmVzdWx0IG9mCgltYWtlIG12ZWJ1X2RlZmNvbmZpZwoJbWFrZSBzYXZlZGVm
Y29uZmlnCgltdiBkZWZjb25maWcgYXJjaC9hcm0vY29uZmlncy9tdmVidV9kZWZjb25maWcKLgoK
U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBhcmNoL2FybS9jb25maWdzL212ZWJ1X2RlZmNvbmZpZyB8IDEyICsrKysr
Ky0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9hcmNoL2FybS9jb25maWdzL212ZWJ1X2RlZmNvbmZpZyBiL2FyY2gvYXJt
L2NvbmZpZ3MvbXZlYnVfZGVmY29uZmlnCmluZGV4IGJkOTc4YTlhY2JlMi4uZmFhZWIxZGU4NDc2
IDEwMDY0NAotLS0gYS9hcmNoL2FybS9jb25maWdzL212ZWJ1X2RlZmNvbmZpZworKysgYi9hcmNo
L2FybS9jb25maWdzL212ZWJ1X2RlZmNvbmZpZwpAQCAtMTcsNyArMTcsMTMgQEAgQ09ORklHX0hV
U0hfRkFOQ1lfUFJPTVBUPXkKIENPTkZJR19DTURMSU5FX0VESVRJTkc9eQogQ09ORklHX0FVVE9f
Q09NUExFVEU9eQogQ09ORklHX01FTlU9eQorQ09ORklHX0JPT1RNX1NIT1dfVFlQRT15CitDT05G
SUdfQk9PVE1fVkVSQk9TRT15CitDT05GSUdfQk9PVE1fSU5JVFJEPXkKK0NPTkZJR19CT09UTV9P
RlRSRUU9eQorQ09ORklHX0JPT1RNX09GVFJFRV9VSU1BR0U9eQogQ09ORklHX0JMU1BFQz15CitD
T05GSUdfRkxFWElCTEVfQk9PVEFSR1M9eQogQ09ORklHX0lNRF9UQVJHRVQ9eQogQ09ORklHX0NP
TlNPTEVfQUNUSVZBVEVfTk9ORT15CiBDT05GSUdfUEFSVElUSU9OX0RJU0tfRUZJPXkKQEAgLTI2
LDEzICszMiw3IEBAIENPTkZJR19DTURfSU9NRU09eQogQ09ORklHX0NNRF9JTUQ9eQogQ09ORklH
X0NNRF9NRU1JTkZPPXkKIENPTkZJR19DTURfQVJNX01NVUlORk89eQotQ09ORklHX0ZMRVhJQkxF
X0JPT1RBUkdTPXkKIENPTkZJR19DTURfQk9PVD15Ci1DT05GSUdfQk9PVE1fU0hPV19UWVBFPXkK
LUNPTkZJR19CT09UTV9WRVJCT1NFPXkKLUNPTkZJR19CT09UTV9JTklUUkQ9eQotQ09ORklHX0JP
T1RNX09GVFJFRT15Ci1DT05GSUdfQk9PVE1fT0ZUUkVFX1VJTUFHRT15CiBDT05GSUdfQ01EX0dP
PXkKIENPTkZJR19DTURfTE9BRFM9eQogQ09ORklHX0NNRF9MT0FEWT15Ci0tIAoyLjguMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFp
bGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
