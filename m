Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xyzqk-0006Nl-ID
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 09:15:56 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 11 Dec 2014 10:15:26 +0100
Message-Id: <1418289327-28310-4-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1418289327-28310-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1418289327-28310-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 3/4] arm/cpu/lowlevel: Don't save the return address in
 another register
To: barebox@lists.infradead.org

VGhlIGNvcnJlc3BvbmRpbmcgY29kZSBkb2Vzbid0IHVzZSB0aGUgbHIgcmVnaXN0ZXIgKG5laXRo
ZXIgZXhwbGljaXRseQpub3IgaW1wbGljaXRseSBieSB0aGUgYmwgaW5zdHJ1Y3Rpb24pLCBzbyB0
aGVyZSBpcyBubyBnYWluIGluIHVzaW5nIHIyCmhlcmUuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xl
aW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGFyY2gvYXJt
L2NwdS9sb3dsZXZlbC5TIHwgMyArLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9jcHUvbG93bGV2ZWwuUyBiL2Fy
Y2gvYXJtL2NwdS9sb3dsZXZlbC5TCmluZGV4IDdjOTllY2FhZDlkZC4uZGQwZjc1YTg4MDJhIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9jcHUvbG93bGV2ZWwuUworKysgYi9hcmNoL2FybS9jcHUvbG93
bGV2ZWwuUwpAQCAtNCw3ICs0LDYgQEAKIAogLnNlY3Rpb24gIi50ZXh0X2JhcmVfaW5pdF8iLCJh
eCIKIEVOVFJZKGFybV9jcHVfbG93bGV2ZWxfaW5pdCkKLQltb3YJcjIsIGxyCiAJLyogc2V0IHRo
ZSBjcHUgdG8gU1ZDMzIgbW9kZSwgbWFzayBpcnEgYW5kIGZpcSAqLwogCW1ycwlyMTIsIGNwc3IK
IAliaWMJcjEyLCByMTIsICMweDFmCkBAIC00NCw1ICs0Myw1IEBAIEVOVFJZKGFybV9jcHVfbG93
bGV2ZWxfaW5pdCkKIAogCW1jcglwMTUsIDAsIHIxMiwgYzEsIGMwLCAwCQkvKiBTQ1RMUiAqLwog
Ci0JbW92CXBjLCByMgorCW1vdglwYywgbHIKIEVORFBST0MoYXJtX2NwdV9sb3dsZXZlbF9pbml0
KQotLSAKMi4xLjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
