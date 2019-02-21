Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwlXx-0001lJ-AS
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 10:25:43 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 21 Feb 2019 11:25:31 +0100
Message-Id: <20190221102531.25291-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20190221102531.25291-1-u.kleine-koenig@pengutronix.de>
References: <20190221102531.25291-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: phytec-som-imx6: make use of new imd oftree helper
To: barebox@lists.infradead.org
Cc: "Thorsten K . Scherer" <t.scherer@eckelmann.de>

V2l0aCB0aGlzIHBhdGNoIHRoZSB0d28gbGFzdCBsaW5lcyBhcmUgYWRkZWQgdG8gdGhlIG91dHB1
dCBvZiB0aGUKZm9sbG93aW5nIGNvbW1hbmQ6CgoJJCAuL3NjcmlwdHMvYmFyZWJveGltZCBpbWFn
ZXMvYmFyZWJveC1waHl0ZWMtcGh5Y29yZS1pbXg2ZGwtc29tLWVtbWMtMWdpYi5pbWcKCWJ1aWxk
OiAjMTUgVGh1IEZlYiAyMSAxMToyMDoyMyBDRVQgMjAxOQoJcmVsZWFzZTogMjAxOS4wMi4wLTAw
MjM1LWdiMDNjZjZmMTQ1YWUtZGlydHkKCXBhcmFtZXRlcjogbWVtc2l6ZT0xMDI0CglvZl9jb21w
YXRpYmxlOiBwaHl0ZWMsaW14NmRsLXBjbTA1OC1lbW1jIGZzbCxpbXg2ZGwKCW1vZGVsOiBQaHl0
ZWMgcGh5Q09SRS1pLk1YNiBEdWFsTGl0ZS9TT0xPIHdpdGggZU1NQwoKU2lnbmVkLW9mZi1ieTog
VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBh
cmNoL2FybS9ib2FyZHMvcGh5dGVjLXNvbS1pbXg2L2xvd2xldmVsLmMgfCAxICsKIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9waHl0
ZWMtc29tLWlteDYvbG93bGV2ZWwuYyBiL2FyY2gvYXJtL2JvYXJkcy9waHl0ZWMtc29tLWlteDYv
bG93bGV2ZWwuYwppbmRleCA5ZDgxYzI3OGNhNDMuLjkxNTUzNGVhOTQ1NSAxMDA2NDQKLS0tIGEv
YXJjaC9hcm0vYm9hcmRzL3BoeXRlYy1zb20taW14Ni9sb3dsZXZlbC5jCisrKyBiL2FyY2gvYXJt
L2JvYXJkcy9waHl0ZWMtc29tLWlteDYvbG93bGV2ZWwuYwpAQCAtODQsNiArODQsNyBAQCBzdGF0
aWMgdm9pZCBfX25vcmV0dXJuIHN0YXJ0X2lteDZfcGh5dGVjX2NvbW1vbih1aW50MzJfdCBzaXpl
LAogCQlleHRlcm4gY2hhciBfX2R0Yl8jI2ZkdF9uYW1lIyNfc3RhcnRbXTsJCQlcCiAJCQkJCQkJ
CQlcCiAJCUlNRF9VU0VEKHBoeXNvbV9teDZfbWVtc2l6ZV8jI21lbW9yeV9zaXplKTsJCVwKKwkJ
SU1EX1VTRURfT0YoZmR0X25hbWUpOwkJCQkJXAogCQkJCQkJCQkJXAogCQlzdGFydF9pbXg2X3Bo
eXRlY19jb21tb24obWVtb3J5X3NpemUsIGRvX2Vhcmx5X3VhcnRfY29uZmlnLCBcCiAJCQkJCSBf
X2R0Yl8jI2ZkdF9uYW1lIyNfc3RhcnQpOwlcCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==
