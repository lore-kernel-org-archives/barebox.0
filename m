Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hIz4Q-0003tR-Tm
 for barebox@lists.infradead.org; Tue, 23 Apr 2019 17:19:04 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Apr 2019 19:18:49 +0200
Message-Id: <20190423171852.26126-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190423171852.26126-1-a.fatoum@pengutronix.de>
References: <20190423171852.26126-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/5] ARM: imx: work around i.MX6UL ERR008958 (ARM errata
 814220)
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, ore@pengutronix.de, rcz@pengutronix.de

VGhlIENvcnRleC1BNyBpbiBib3RoIHRoZSBpLk1YNlVMWzFdIGFuZCBpLk1YNlVMTFsyXSBpcyBh
ZmZlY3RlZCBieSB0aGUKZXJyYXRhIEVSUjAwODk1OCAiQXJtL01QOiA4MTQyMjDigJRCLUNhY2hl
IG1haW50ZW5hbmNlIGJ5IHNldC93YXkgb3BlcmF0aW9ucwpjYW4gZXhlY3V0ZSBvdXQgb2Ygb3Jk
ZXIiLgoKc2VsZWN0IEFSTV9FUlJBVEFfODE0MjIwIHRvIGFkZHJlc3MgdGhpcy4KClsxXTogaHR0
cHM6Ly93d3cubnhwLmNvbS9kb2NzL2VuL2VycmF0YS9JTVg2VUxDRS5wZGYKWzJdOiBodHRwczov
L3d3dy5ueHAuY29tL2RvY3MvZW4vZXJyYXRhL0lNWDZVTExDRS5wZGYKClNpZ25lZC1vZmYtYnk6
IEFobWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+Ci0tLQogYXJjaC9hcm0vbWFj
aC1pbXgvS2NvbmZpZyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1pbXgvS2NvbmZpZyBiL2FyY2gvYXJtL21hY2gtaW14L0tj
b25maWcKaW5kZXggZDQ3ZGQzNTQ3NzEyLi5iMTVlNmRmZGZkOWIgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtL21hY2gtaW14L0tjb25maWcKKysrIGIvYXJjaC9hcm0vbWFjaC1pbXgvS2NvbmZpZwpAQCAt
MTY0LDYgKzE2NCw3IEBAIGNvbmZpZyBBUkNIX0lNWDZTWAogY29uZmlnIEFSQ0hfSU1YNlVMCiAJ
Ym9vbAogCXNlbGVjdCBBUkNIX0lNWDYKKwlzZWxlY3QgQVJNX0VSUkFUQV84MTQyMjAKIAogY29u
ZmlnIEFSQ0hfSU1YNwogCWJvb2wKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK
