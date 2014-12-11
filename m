Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xyzqk-0006Nk-IB
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 09:15:55 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 11 Dec 2014 10:15:23 +0100
Message-Id: <1418289327-28310-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 0/4] arm/cpu/lowlevel cleanups
To: barebox@lists.infradead.org

SGVsbG8sCgpzaW1pbGFyIHRvIGhvdyB0aGUgZC1jYWNoZSBpcyBjbGVhbmVkIGJlZm9yZSBlbmFi
bGluZyB0aGUgc2FtZSBzaG91bGQgYmUKZG9uZSBmb3IgdGhlIGktY2FjaGUuCgpJJ2Qgbm90IGNv
bnNpZGVyIHRoaXMgc2VyaWVzIGFzIHVyZ2VudCBiZWNhdXNlIG9mIHBhdGNoIDQuIEkgY3JlYXRl
ZAp0aGlzIHNlcmllcyBiZWNhdXNlIHRoZXJlIHdhcyBhIHByb2JsZW0gdGhhdCBjb3VsZCBoYXZl
IGhhcHBlbmQgYmVjYXVzZQpvZiBzdGFsZSBlbnRyaWVzIGluIHRoZSBpLWNhY2hlLCBidXQgdGhp
cyBwcm92ZWQgdG8gYmUgd3JvbmcuIFN0aWxsIGZvcgpjb3JyZWN0bmVzcyBzYWtlIHRoZSBwYXRj
aCBzaG91bGQgYXBwbGllZC4KClRoZSBvdGhlciB0aHJlZSBwYXRjaGVzIGFyZSBqdXN0IG1pbm9y
IGNsZWFudXBzIHRoYXQgSSBkaWQgb24gdGhlIHdheSB0bwpjcmVhdGUgcGF0Y2ggNC4KClV3ZSBL
bGVpbmUtS8O2bmlnICg0KToKICBhcm0vY3B1L2xvd2xldmVsOiBhZGQgYW5kIGZpeCBjb21tZW50
cyBmb3IgQ1BTUiBhbmQgU0NUTFIgYWNjZXNzZXMKICBhcm0vY3B1L2xvd2xldmVsOiBVc2UgY29w
cm9jZXNzb3IgaW5zdHJ1Y3Rpb24gZm9yIEFSTXY3LCB0b28KICBhcm0vY3B1L2xvd2xldmVsOiBE
b24ndCBzYXZlIHRoZSByZXR1cm4gYWRkcmVzcyBpbiBhbm90aGVyIHJlZ2lzdGVyCiAgYXJtL2Nw
dS9sb3dsZXZlbDogaW52YWxpZGF0ZSBpLWNhY2hlIGJlZm9yZSBlbmFibGluZwoKIGFyY2gvYXJt
L2NwdS9sb3dsZXZlbC5TIHwgMzkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgot
LSAKMi4xLjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
