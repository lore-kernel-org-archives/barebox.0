Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ccDTp-0007zZ-G5
 for barebox@lists.infradead.org; Fri, 10 Feb 2017 15:51:33 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 10 Feb 2017 16:51:00 +0100
Message-Id: <20170210155100.16463-3-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20170210155100.16463-1-u.kleine-koenig@pengutronix.de>
References: <20170210155100.16463-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/2] netgear-rn2120: use complete memory from the start
To: barebox@lists.infradead.org

VGhpcyBjaGFuZ2VzCgoJbWFsbG9jIHNwYWNlOiAweDAxZjdkY2UwIC0+IDB4MDNlZmI5YmYgKHNp
emUgMzEuNSBNaUIpCgp0bwoKCW1hbGxvYyBzcGFjZTogMHgwZmY3ZGNlMCAtPiAweDFmZWZiOWJm
IChzaXplIDI1NS41IE1pQikKCi4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1
LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogYXJjaC9hcm0vYm9hcmRzL25ldGdl
YXItcm4yMTIwL2xvd2xldmVsLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib2FyZHMvbmV0Z2Vhci1y
bjIxMjAvbG93bGV2ZWwuYyBiL2FyY2gvYXJtL2JvYXJkcy9uZXRnZWFyLXJuMjEyMC9sb3dsZXZl
bC5jCmluZGV4IDZkZjUyMzVhMjIyOS4uYTA1NjE4YmUwYmNhIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bS9ib2FyZHMvbmV0Z2Vhci1ybjIxMjAvbG93bGV2ZWwuYworKysgYi9hcmNoL2FybS9ib2FyZHMv
bmV0Z2Vhci1ybjIxMjAvbG93bGV2ZWwuYwpAQCAtMzcsNSArMzcsNSBAQCBFTlRSWV9GVU5DVElP
TihzdGFydF9uZXRnZWFyX3JuMjEyMCwgcjAsIHIxLCByMikKIAlmZHQgPSBfX2R0Yl9hcm1hZGFf
eHBfcm4yMTIwX2JiX3N0YXJ0IC0KIAkJZ2V0X3J1bnRpbWVfb2Zmc2V0KCk7CiAKLQltdmVidV9i
YXJlYm94X2VudHJ5KGZkdCwgU1pfNjRNKTsKKwltdmVidV9iYXJlYm94X2VudHJ5KGZkdCwgU1pf
NTEyTSk7CiB9Ci0tIAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
