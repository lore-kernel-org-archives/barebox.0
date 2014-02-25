Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIQqx-0001sp-PT
 for barebox@lists.infradead.org; Tue, 25 Feb 2014 22:51:58 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 25 Feb 2014 23:51:15 +0100
Message-Id: <1393368681-1190-5-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1393368681-1190-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1393368681-1190-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 04/10] mtd/nand: constify filename parameter
To: barebox@lists.infradead.org

VGhlIHN0cmluZyBwb2ludGVkIHRvIGlzbid0IG1vZGlmaWVkLCBzbyBkZWNsYXJlIGl0IGFzIGNv
bnN0LgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0Bw
ZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL210ZC9uYW5kL25hbmQtYmIuYyB8IDIgKy0KIGlu
Y2x1ZGUvbmFuZC5oICAgICAgICAgICAgIHwgNCArKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5k
L25hbmQtYmIuYyBiL2RyaXZlcnMvbXRkL25hbmQvbmFuZC1iYi5jCmluZGV4IDAyOTJmMmY0MjZj
MC4uZjM4N2VmNjg3YTliIDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9uYW5kL25hbmQtYmIuYwor
KysgYi9kcml2ZXJzL210ZC9uYW5kL25hbmQtYmIuYwpAQCAtMjYxLDcgKzI2MSw3IEBAIHN0YXRp
YyBMSVNUX0hFQUQoYmJfbGlzdCk7CiAgKiBAcGFyYW1baW5dIG5hbWUgUGFydGl0aW9uIG5hbWUg
KGNhbiBiZSBvYnRhaW5lZCB3aXRoIGRldmluZm8gY29tbWFuZCkKICAqIEByZXR1cm4gVGhlIGRl
dmljZSByZXByZXNlbnRpbmcgdGhlIG5ldyBwYXJ0aXRpb24uCiAgKi8KLWludCBkZXZfYWRkX2Ji
X2RldihjaGFyICpwYXRoLCBjb25zdCBjaGFyICpuYW1lKQoraW50IGRldl9hZGRfYmJfZGV2KGNv
bnN0IGNoYXIgKnBhdGgsIGNvbnN0IGNoYXIgKm5hbWUpCiB7CiAJc3RydWN0IG5hbmRfYmIgKmJi
OwogCWludCByZXQgPSAtRU5PTUVNOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uYW5kLmggYi9pbmNs
dWRlL25hbmQuaAppbmRleCBiMTc2MmRmYTQ1OTEuLmEwZTc3Y2M4Y2RlMCAxMDA2NDQKLS0tIGEv
aW5jbHVkZS9uYW5kLmgKKysrIGIvaW5jbHVkZS9uYW5kLmgKQEAgLTUsMTAgKzUsMTAgQEAKIHN0
cnVjdCBuYW5kX2JiOwogCiAjaWZkZWYgQ09ORklHX05BTkQKLWludCBkZXZfYWRkX2JiX2Rldihj
aGFyICpmaWxlbmFtZSwgY29uc3QgY2hhciAqbmFtZSk7CitpbnQgZGV2X2FkZF9iYl9kZXYoY29u
c3QgY2hhciAqZmlsZW5hbWUsIGNvbnN0IGNoYXIgKm5hbWUpOwogaW50IGRldl9yZW1vdmVfYmJf
ZGV2KGNvbnN0IGNoYXIgKm5hbWUpOwogI2Vsc2UKLXN0YXRpYyBpbmxpbmUgaW50IGRldl9hZGRf
YmJfZGV2KGNoYXIgKmZpbGVuYW1lLCBjb25zdCBjaGFyICpuYW1lKSB7CitzdGF0aWMgaW5saW5l
IGludCBkZXZfYWRkX2JiX2Rldihjb25zdCBjaGFyICpmaWxlbmFtZSwgY29uc3QgY2hhciAqbmFt
ZSkgewogCXJldHVybiAwOwogfQogc3RhdGljIGlubGluZSBpbnQgZGV2X3JlbW92ZV9iYl9kZXYo
Y29uc3QgY2hhciAqbmFtZSkKLS0gCjEuOC41LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9iYXJlYm94Cg==
