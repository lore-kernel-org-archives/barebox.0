Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNPwH-0002Rr-6k
 for barebox@lists.infradead.org; Mon, 28 May 2018 21:44:26 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 28 May 2018 23:44:00 +0200
Message-Id: <20180528214400.28252-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20180528214400.28252-1-u.kleine-koenig@pengutronix.de>
References: <20180528214400.28252-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/2] dove: fix bit layout of DOVE_CPU_CTRL register
To: barebox@lists.infradead.org

V2hpbGUgY3JlYXRpbmcgdGhlIHByZXZpb3VzIHBhdGNoIEkgY2hlY2tlZCB0aGUgY3B1J3MgcmVm
ZXJlbmNlIG1hbnVhbAp0byBzZWUgd2hhdCB0aGUgYWZmZWN0ZWQgcmVnaXN0ZXJzIGFjdHVhbGx5
IGRvIGFuZCBub3RpY2VkIHRoYXQgYml0cwpvZiB0aGUgRE9WRV9DUFVfQ1RSTCBhY3R1YWxseSB1
c2VkIGJ5IHRoZSBjb2RlIGRvZXNuJ3QgbWF0Y2ggdGhlIGJpdHMKZGVzY3JpYmVkIGFzIEFIQlNs
YXZlQmFzZSBpbiB0aGUgbWFudWFsLgoKSSdtIG5vdCBhd2FyZSBvZiBhbnkgZWZmZWN0IChuZWl0
aGVyIHBvc2l0aXZlIG5vciBuZWdhdGl2ZSkgb2YgdGhpcwpwYXRjaC4KClNpZ25lZC1vZmYtYnk6
IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQog
YXJjaC9hcm0vbWFjaC1tdmVidS9jb21tb24uYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNo
LW12ZWJ1L2NvbW1vbi5jIGIvYXJjaC9hcm0vbWFjaC1tdmVidS9jb21tb24uYwppbmRleCBlOTUx
YmMwNjI3NmEuLjgzYWViNDFhZTIyNSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1tdmVidS9j
b21tb24uYworKysgYi9hcmNoL2FybS9tYWNoLW12ZWJ1L2NvbW1vbi5jCkBAIC0yMTksOCArMjE5
LDggQEAgdm9pZCBfX25ha2VkIF9fbm9yZXR1cm4gZG92ZV9iYXJlYm94X2VudHJ5KHZvaWQgKmJv
YXJkZGF0YSkKIAkgKiBUaGUgQVhJIHVuaXRzIGludGVybmFsIHNwYWNlIGJhc2Ugc3RhcnRzIGF0
IHRoZSBzYW1lIGFkZHJlc3MgYXMgdGhlCiAJICogRERSIGNvbnRyb2xsZXIuCiAJICovCi0JdmFs
ID0gcmVhZGwoRE9WRV9DUFVfQ1RSTCkgJiAweGZmZmYwMDAwOwotCXZhbCB8PSAoKHVuc2lnbmVk
IGxvbmcpRE9WRV9TRFJBTV9CQVNFICYgMHhmZmZmMDAwMCkgPj4gMTY7CisJdmFsID0gcmVhZGwo
RE9WRV9DUFVfQ1RSTCkgJiAweGZmZjAwN2ZmOworCXZhbCB8PSAoKHVuc2lnbmVkIGxvbmcpRE9W
RV9TRFJBTV9CQVNFICYgMHhmZjgwMDAwMCkgPj4gMTI7CiAJd3JpdGVsKHZhbCwgRE9WRV9DUFVf
Q1RSTCk7CiAKIAliYXJlYm94X2FybV9lbnRyeSgwLCBkb3ZlX21lbW9yeV9maW5kKCksIGJvYXJk
ZGF0YSk7Ci0tIAoyLjE3LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
