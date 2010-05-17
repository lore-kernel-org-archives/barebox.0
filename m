Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([212.27.42.3])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OE5vI-0000Fa-Tx
	for barebox@lists.infradead.org; Mon, 17 May 2010 19:24:22 +0000
Received: from smtp3-g21.free.fr (localhost [127.0.0.1])
	by smtp3-g21.free.fr (Postfix) with ESMTP id 00CD5818078
	for <barebox@lists.infradead.org>;
	Mon, 17 May 2010 21:24:15 +0200 (CEST)
Received: from localhost.localdomain (tal33-3-82-233-81-124.fbx.proxad.net
	[82.233.81.124]) by smtp3-g21.free.fr (Postfix) with ESMTP
	for <barebox@lists.infradead.org>;
	Mon, 17 May 2010 21:24:14 +0200 (CEST)
From: =?utf-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Mon, 17 May 2010 21:24:13 +0200
Message-Id: <1274124253-3523-1-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] i.MX27: add required defines for I2C2
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vbWFjaC1pbXgvaW5jbHVkZS9tYWNoL2lteDI3LXJlZ3MuaCB8ICAgIDMgKysrCiAxIGZpbGVz
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9h
cmNoL2FybS9tYWNoLWlteC9pbmNsdWRlL21hY2gvaW14MjctcmVncy5oIGIvYXJjaC9hcm0vbWFj
aC1pbXgvaW5jbHVkZS9tYWNoL2lteDI3LXJlZ3MuaAppbmRleCA2YzMxY2NkLi40ZTIyNjEyIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLWlteC9pbmNsdWRlL21hY2gvaW14MjctcmVncy5oCisr
KyBiL2FyY2gvYXJtL21hY2gtaW14L2luY2x1ZGUvbWFjaC9pbXgyNy1yZWdzLmgKQEAgLTIyLDYg
KzIyLDcgQEAKICNkZWZpbmUgSU1YX1RJTTVfQkFTRSAgICAgICAgICAgICAgKDB4MWEwMDAgKyBJ
TVhfSU9fQkFTRSkKICNkZWZpbmUgSU1YX1VBUlQ1X0JBU0UgICAgICAgICAgICAgKDB4MWIwMDAg
KyBJTVhfSU9fQkFTRSkKICNkZWZpbmUgSU1YX1VBUlQ2X0JBU0UgICAgICAgICAgICAgKDB4MWMw
MDAgKyBJTVhfSU9fQkFTRSkKKyNkZWZpbmUgSU1YX0kyQzJfQkFTRSAgICAgICAgICAgICAgKDB4
MWQwMDAgKyBJTVhfSU9fQkFTRSkKICNkZWZpbmUgSU1YX1RJTTZfQkFTRSAgICAgICAgICAgICAg
KDB4MWYwMDAgKyBJTVhfSU9fQkFTRSkKICNkZWZpbmUgSU1YX0FJUEkyX0JBU0UgICAgICAgICAg
ICAgKDB4MjAwMDAgKyBJTVhfSU9fQkFTRSkKICNkZWZpbmUgSU1YX1BMTF9CQVNFICAgICAgICAg
ICAgICAgKDB4MjcwMDAgKyBJTVhfSU9fQkFTRSkKQEAgLTMwOSw2ICszMTAsOCBAQAogI2RlZmlu
ZSBQRTEzX1BGX1VBUlQxX1JYRAkoR1BJT19QT1JURSB8IEdQSU9fSU4gIHwgR1BJT19QRiB8IDEz
KQogI2RlZmluZSBQRTE0X1BGX1VBUlQxX0NUUwkoR1BJT19QT1JURSB8IEdQSU9fT1VUIHwgR1BJ
T19QRiB8IDE0KQogI2RlZmluZSBQRTE1X1BGX1VBUlQxX1JUUwkoR1BJT19QT1JURSB8IEdQSU9f
SU4gIHwgR1BJT19QRiB8IDE1KQorI2RlZmluZSBQQzVfUEZfSTJDMl9EQVRBCShHUElPX1BPUlRD
IHwgR1BJT19PVVQgfCBHUElPX1BGIHwgNSkKKyNkZWZpbmUgUEM2X1BGX0kyQzJfQ0xLCQkoR1BJ
T19QT1JUQyB8IEdQSU9fT1VUIHwgR1BJT19QRiB8IDYpCiAjZGVmaW5lIFBDN19QRl9VU0JPVEdf
REFUQTUgICAgIChHUElPX1BPUlRDIHwgR1BJT19QRiB8IEdQSU9fT1VUIHwgNykKICNkZWZpbmUg
UEM4X1BGX1VTQk9UR19EQVRBNiAgICAgKEdQSU9fUE9SVEMgfCBHUElPX1BGIHwgR1BJT19PVVQg
fCA4KQogI2RlZmluZSBQQzlfUEZfVVNCT1RHX0RBVEEwICAgICAoR1BJT19QT1JUQyB8IEdQSU9f
UEYgfCBHUElPX09VVCB8IDkpCi0tIAoxLjYuMy4zCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=
