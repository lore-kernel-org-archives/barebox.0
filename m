Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ddYW0-0001rv-2R
 for barebox@lists.infradead.org; Fri, 04 Aug 2017 09:03:29 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  4 Aug 2017 11:03:01 +0200
Message-Id: <20170804090301.12833-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] ARM: imx: imx7 has a fec
To: barebox@lists.infradead.org

VGhpcyBhbGxvd3MgdG8gbWFrZSB1c2Ugb2YgdGhlIGV0aGVybmV0IGRldmljZSBvbiBpLk1YNyBi
YXNlZCBtYWNoaW5lcwpldmVuIGlmIG5vIG9sZGVyIGkuTVggaXMgZW5hYmxlZC4KClNpZ25lZC1v
ZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+
Ci0tLQogYXJjaC9hcm0vbWFjaC1pbXgvS2NvbmZpZyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1pbXgvS2NvbmZpZyBiL2Fy
Y2gvYXJtL21hY2gtaW14L0tjb25maWcKaW5kZXggZmE3NjAxODQ1OTRhLi4xZTdlYzBjNjU5ZWIg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtaW14L0tjb25maWcKKysrIGIvYXJjaC9hcm0vbWFj
aC1pbXgvS2NvbmZpZwpAQCAtMTY1LDYgKzE2NSw3IEBAIGNvbmZpZyBBUkNIX0lNWDZVTAogY29u
ZmlnIEFSQ0hfSU1YNwogCWJvb2wKIAlzZWxlY3QgQ1BVX1Y3CisJc2VsZWN0IEFSQ0hfSEFTX0ZF
Q19JTVgKIAlzZWxlY3QgUElOQ1RSTF9JTVhfSU9NVVhfVjMKIAlzZWxlY3QgT0ZUUkVFCiAJc2Vs
ZWN0IENPTU1PTl9DTEtfT0ZfUFJPVklERVIKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
