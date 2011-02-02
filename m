Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pkl4F-0003Jh-BT
	for barebox@lists.infradead.org; Wed, 02 Feb 2011 22:20:52 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  2 Feb 2011 23:20:48 +0100
Message-Id: <1296685248-18699-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2] defaultenv/bin/boot: fix ubi root's name assignment
To: barebox@lists.infradead.org

VGhpcyBwYXRjaCBmaXhlcyBhIHJlZ3Jlc3Npb24gaW50cm9kdWNlZCBpbiBjb21taXQKZDE1Y2Zh
ZmVlZjhmOTlmZjFhNDdlNzczNjJkMGFkZjFiMDdmMjZhZS4KCldoaWxlIHRoZXJlLCB1c2UgIi16
IiB0byBjaGVjayBpZiB1Ymlyb290IHZhcmlhYmxlIGlzIGVtcHR5LgoKU2lnbmVkLW9mZi1ieTog
TWFyYyBLbGVpbmUtQnVkZGUgPG1rbEBwZW5ndXRyb25peC5kZT4KQ2M6IEVyaWMgQsOpbmFyZCA8
ZXJpY0BldWtyZWEuY29tPgotLS0KCmNoYW5nZXMgc2luY2UgdjE6IGZpeCAoaG9wZWZ1bGx5KSBl
bmNvZGluZyBvZiBFbnJpYydzIG5hbWUsIHNvcnJ5LgoKIGRlZmF1bHRlbnYvYmluL2Jvb3QgfCAg
ICA0ICsrLS0KIDEgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RlZmF1bHRlbnYvYmluL2Jvb3QgYi9kZWZhdWx0ZW52L2Jpbi9ib290
CmluZGV4IGZhNjg3NDguLjc4OGE3ODEgMTAwNjQ0Ci0tLSBhL2RlZmF1bHRlbnYvYmluL2Jvb3QK
KysrIGIvZGVmYXVsdGVudi9iaW4vYm9vdApAQCAtMzQsOCArMzQsOCBAQCBlbHNlCiAJZmkKIAog
CWlmIFsgeCRyb290ZnNfdHlwZSA9IHh1YmlmcyBdOyB0aGVuCi0JCWlmIFsgeCR1Ymlyb290ID0g
eCBdOyB0aGVuCi0JCQl1Ymlyb290ID0gInJvb3QiCisJCWlmIFsgLXogJHViaXJvb3QgXTsgdGhl
bgorCQkJdWJpcm9vdD0icm9vdCIKIAkJZmkKIAkJYm9vdGFyZ3M9IiRib290YXJncyByb290PXVi
aTA6JHViaXJvb3QgdWJpLm10ZD0kcm9vdGZzX210ZGJsb2NrIgogCWVsc2UKLS0gCjEuNy4yLjMK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
