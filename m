Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gn8Bx-0001JC-JN
 for barebox@lists.infradead.org; Fri, 25 Jan 2019 20:35:11 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 25 Jan 2019 21:35:04 +0100
Message-Id: <20190125203504.22764-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] gen-dtb-s: annotate magic values with their meaning
To: barebox@lists.infradead.org

VGhpcyBoZWxwcyB1bmRlcnN0YW5kIGhvdyB0aGUgaW1kIHN0dWZmIHdvcmtzIGJlY2F1c2Ugbm93
CiQoZ2l0IGdyZXAgSU1EX1RZUEVfT0ZfQ09NUEFUSUJMRSkgYWxzbyBtYXRjaGVzIHRoZSBjcml0
aWNhbCBjb2RlCmxvY2F0aW9uIHRoYXQgY3JlYXRlcyB0aGUgaW1kIGVudHJ5LgoKU2lnbmVkLW9m
Zi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
LS0tCiBzY3JpcHRzL2dlbi1kdGItcyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zY3JpcHRzL2dlbi1kdGItcyBi
L3NjcmlwdHMvZ2VuLWR0Yi1zCmluZGV4IDQyMTU0NjFlZGIzYy4uMmI0NGZmYjM2MWViIDEwMDc1
NQotLS0gYS9zY3JpcHRzL2dlbi1kdGItcworKysgYi9zY3JpcHRzL2dlbi1kdGItcwpAQCAtMjUs
NyArMjUsNyBAQCBpZiBbICIkaW1kIiA9ICJ5IiBdOyB0aGVuCiAJaWYgWyAiJGNvbXBhdCIgIT0g
Im5vdGZvdW5kIiBdOyB0aGVuCiAKIAkJY29tcGF0bGVuPSQoJEZEVEdFVCAtdCBzICIkZHRiIiAv
IGNvbXBhdGlibGUgfCB3YyAtYykKLQkJbGUzMiAweDY0MGM4MDA1CisJCWxlMzIgMHg2NDBjODAw
NSAjIElNRF9UWVBFX09GX0NPTVBBVElCTEUKIAkJbGUzMiAkY29tcGF0bGVuCiAJCWVjaG8gIi5i
eXRlICIgJGNvbXBhdAogCQllY2hvICIuYmFsaWduIDQiCkBAIC0zNSw3ICszNSw3IEBAIGlmIFsg
IiRpbWQiID0gInkiIF07IHRoZW4KIAogCWlmIFsgIiRtb2RlbCIgIT0gIm5vdGZvdW5kIiBdOyB0
aGVuCiAJCW1vZGVsbGVuPSQoJEZEVEdFVCAtdCBzICIkZHRiIiAvIG1vZGVsIHwgd2MgLWMpCi0J
CWxlMzIgMHg2NDBjODAwNAorCQlsZTMyIDB4NjQwYzgwMDQgIyBJTURfVFlQRV9NT0RFTAogCQls
ZTMyICRtb2RlbGxlbgogCQllY2hvICIuYnl0ZSAiICRtb2RlbAogCQllY2hvICIuYmFsaWduIDQi
Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
