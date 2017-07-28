Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dbBZ1-00036l-GE
 for barebox@lists.infradead.org; Fri, 28 Jul 2017 20:08:49 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 28 Jul 2017 22:08:12 +0200
Message-Id: <20170728200812.27224-4-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20170728200812.27224-1-u.kleine-koenig@pengutronix.de>
References: <20170728200812.27224-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: i.MX7: drop now useless imx7s.dtsi
To: barebox@lists.infradead.org

VGhpcyBmaWxlIHdhcyBpbnRyb2R1Y2VkIGluIGNvbW1pdCA1NWVlZDQ3ZDg1MTUgKCJBUk06IGku
TVg3OiBBZGQKaW14N3MuZHRzaSIpIGJlY2F1c2UgdGhlIGlteCBjbG9ja3NvdXJjZSBkcml2ZXIg
cGlja2VkIHRoZSB3cm9uZyBjbG9jawp0byBkZXRlcm1pbmUgdGhlIHBhcmVudCBmcmVxdWVuY3ku
IEFzIHRoaXMgaXMgZml4ZWQgc2luY2UgY29tbWl0CiJBUk06IGlteDogY2xvY2tzb3VyY2U6IFVz
ZSBwZXIgY2xvY2sgZm9yIGRldGVybWluaW5nIHBhcmVudCBmcmVxIiB0aGlzCmZpbGUgY2FuIGdv
IGF3YXkuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmln
QHBlbmd1dHJvbml4LmRlPgotLS0KIGFyY2gvYXJtL2R0cy9pbXg3cy13YXJwLmR0cyB8IDEgLQog
YXJjaC9hcm0vZHRzL2lteDdzLmR0c2kgICAgIHwgNCAtLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDUg
ZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vZHRzL2lteDdzLmR0c2kK
CmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvaW14N3Mtd2FycC5kdHMgYi9hcmNoL2FybS9kdHMv
aW14N3Mtd2FycC5kdHMKaW5kZXggYzJkYjBkOGFlMDAxLi4xYTkyZTA5ZDE0NDUgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtL2R0cy9pbXg3cy13YXJwLmR0cworKysgYi9hcmNoL2FybS9kdHMvaW14N3Mt
d2FycC5kdHMKQEAgLTgsNyArOCw2IEBACiAgKi8KIAogI2luY2x1ZGUgPGFybS9pbXg3cy13YXJw
LmR0cz4KLSNpbmNsdWRlICJpbXg3cy5kdHNpIgogCiAvIHsKIAljaG9zZW4gewpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vZHRzL2lteDdzLmR0c2kgYi9hcmNoL2FybS9kdHMvaW14N3MuZHRzaQpkZWxl
dGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggOTVjNzkwNzE5ZjZlLi4wMDAwMDAwMDAwMDAKLS0t
IGEvYXJjaC9hcm0vZHRzL2lteDdzLmR0c2kKKysrIC9kZXYvbnVsbApAQCAtMSw0ICswLDAgQEAK
LSZncHQxIHsKLQljbG9ja3MgPSA8JmNsa3MgSU1YN0RfR1BUMV9ST09UX0NMSz4sCi0JCSA8JmNs
a3MgSU1YN0RfR1BUMV9ST09UX0NMSz47Ci19OwpcIE5vIG5ld2xpbmUgYXQgZW5kIG9mIGZpbGUK
LS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
