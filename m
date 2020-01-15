Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfzU-0000VZ-8v
 for barebox@lists.infradead.org; Wed, 15 Jan 2020 10:33:40 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 15 Jan 2020 11:33:28 +0100
Message-Id: <20200115103328.24700-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] imx25: drop global over-current setting for USB
To: barebox@lists.infradead.org

VGhlcmUgaXMgbm8gbXgyNSBib2FyZCBpbiBtYWlubGluZSB0aGF0IGFjdHVhbGx5IHVzZXMgVVNC
LiBNeQoob3V0LW9mLXRyZWUpIGJvYXJkIGhhcyBhY3RpdmUgbG93IHBvbGFyaXR5IHdoaWNoIG1h
a2VzIGl0IG5lY2Vzc2FyeSB0bwpoYXZlCgoJL2RlbGV0ZS1wcm9wZXJ0eS8gb3Zlci1jdXJyZW50
LWFjdGl2ZS1oaWdoOwoJb3Zlci1jdXJyZW50LWFjdGl2ZS1sb3c7CgppbiB0aGUgYm9hcmQncyBk
dHMgd2hpY2ggaXMgdWdseS4KCkluIHRoZSBhYnNlbmNlIG9mIHRoaXMgcHJvcGVydHkgTGludXgg
ZGVmYXVsdHMgdG8gYWN0aXZlLWhpZ2ggYW5kCmVuY291cmFnZXMgZXhwbGljaXQgY29uZmlndXJh
dGlvbiAoc2VlIGNvbW1pdCAxYmY0NzQzZjY0MWQgKCJ1c2I6CmNoaXBpZGVhOiBpbXg6IFdhcm4g
aWYgb2MgcG9sYXJpdHkgaXNuJ3Qgc3BlY2lmaWVkIikpLCBzbyBvdGhlciBleHRlcm5hbApib2Fy
ZCBkdHMgZmlsZXMgbGlrZWx5IGFscmVhZHkgaGF2ZSB0aGlzIHNldHRpbmcgYW55aG93LiAoT0ss
IG1heWJlIGEKYml0IG9wdGltaXN0aWMgaGVyZSA6LSkKClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVp
bmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogYXJjaC9hcm0v
ZHRzL2lteDI1LmR0c2kgfCA4IC0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvaW14MjUuZHRzaSBiL2FyY2gvYXJtL2R0cy9p
bXgyNS5kdHNpCmluZGV4IGU3MmRiZDVmMzY4Ni4uMDU2NzhhZjcxYWFlIDEwMDY0NAotLS0gYS9h
cmNoL2FybS9kdHMvaW14MjUuZHRzaQorKysgYi9hcmNoL2FybS9kdHMvaW14MjUuZHRzaQpAQCAt
MjQsMTEgKzI0LDMgQEAKICZ1c2JtaXNjIHsKIAlzdGF0dXMgPSAib2theSI7CiB9OwotCi0mdXNi
b3RnIHsKLQlvdmVyLWN1cnJlbnQtYWN0aXZlLWhpZ2g7Ci19OwotCi0mdXNiaG9zdDEgewotCW92
ZXItY3VycmVudC1hY3RpdmUtaGlnaDsKLX07Ci0tIAoyLjI0LjAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==
