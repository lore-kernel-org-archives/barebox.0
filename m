Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001n6-Mj
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-000223-QK
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003Dy-T6
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:35 +0200
Message-Id: <20190527095744.5923-10-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 09/18] scripts: compiler.h: add endianness helpers for macOS
To: barebox@lists.infradead.org

VGhlc2UgYXJlIHRha2VuIGZyb20gTWF0aGlhcyBQYW56ZW5iw7ZjaydzIHBvcnRhYmxlX2VuZGlh
bi5oWzFdCndoaWNoIGhlIGhhZCByZWxlYXNlZCBpdCBpbnRvIHRoZSBwdWJsaWMgZG9tYWluLgoK
WzFdOiBodHRwczovL2dpc3QuZ2l0aHViLmNvbS9wYW56aS82ODU2NTgzCgpTaWduZWQtb2ZmLWJ5
OiBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPgotLS0KIHNjcmlwdHMvY29t
cGlsZXIuaCB8IDE4ICsrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zY3JpcHRzL2NvbXBpbGVyLmgg
Yi9zY3JpcHRzL2NvbXBpbGVyLmgKaW5kZXggYmQ3M2M3YTlhOGQzLi5lZTIwOTdhYTM2OTEgMTAw
NjQ0Ci0tLSBhL3NjcmlwdHMvY29tcGlsZXIuaAorKysgYi9zY3JpcHRzL2NvbXBpbGVyLmgKQEAg
LTQyLDcgKzQyLDIzIEBACiAjIGluY2x1ZGUgPGVuZGlhbi5oPgogIyBpbmNsdWRlIDxieXRlc3dh
cC5oPgogI2VsaWYgZGVmaW5lZChfX01BQ0hfXykKLSMgaW5jbHVkZSA8bWFjaGluZS9lbmRpYW4u
aD4KKyMgaWZkZWYgX19BUFBMRV9fCisjICBpbmNsdWRlIDxsaWJrZXJuL09TQnl0ZU9yZGVyLmg+
CisjICBkZWZpbmUgaHRvYmUxNih4KSBPU1N3YXBIb3N0VG9CaWdJbnQxNih4KQorIyAgZGVmaW5l
IGh0b2xlMTYoeCkgT1NTd2FwSG9zdFRvTGl0dGxlSW50MTYoeCkKKyMgIGRlZmluZSBiZTE2dG9o
KHgpIE9TU3dhcEJpZ1RvSG9zdEludDE2KHgpCisjICBkZWZpbmUgbGUxNnRvaCh4KSBPU1N3YXBM
aXR0bGVUb0hvc3RJbnQxNih4KQorIyAgZGVmaW5lIGh0b2JlMzIoeCkgT1NTd2FwSG9zdFRvQmln
SW50MzIoeCkKKyMgIGRlZmluZSBodG9sZTMyKHgpIE9TU3dhcEhvc3RUb0xpdHRsZUludDMyKHgp
CisjICBkZWZpbmUgYmUzMnRvaCh4KSBPU1N3YXBCaWdUb0hvc3RJbnQzMih4KQorIyAgZGVmaW5l
IGxlMzJ0b2goeCkgT1NTd2FwTGl0dGxlVG9Ib3N0SW50MzIoeCkKKyMgIGRlZmluZSBodG9iZTY0
KHgpIE9TU3dhcEhvc3RUb0JpZ0ludDY0KHgpCisjICBkZWZpbmUgaHRvbGU2NCh4KSBPU1N3YXBI
b3N0VG9MaXR0bGVJbnQ2NCh4KQorIyAgZGVmaW5lIGJlNjR0b2goeCkgT1NTd2FwQmlnVG9Ib3N0
SW50NjQoeCkKKyMgIGRlZmluZSBsZTY0dG9oKHgpIE9TU3dhcExpdHRsZVRvSG9zdEludDY0KHgp
CisjIGVsc2UgLyogbm9uIGFwcGxlIF9fTUFDSF9fICovCisjICBpbmNsdWRlIDxtYWNoaW5lL2Vu
ZGlhbi5oPgorIyBlbmRpZiAvKiBfX0FQUExFX18gKi8KICMgZGVmaW5lIF9fQllURV9PUkRFUiAg
ICBCWVRFX09SREVSCiAjIGRlZmluZSBfX0xJVFRMRV9FTkRJQU4gTElUVExFX0VORElBTgogIyBk
ZWZpbmUgX19CSUdfRU5ESUFOICAgIEJJR19FTkRJQU4KLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0
CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
