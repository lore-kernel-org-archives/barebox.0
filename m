Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk2ac-0000GE-Ug
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 07:59:52 +0000
Date: Thu, 17 Jan 2019 08:59:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190117075948.4f6pwllc66k774gj@pengutronix.de>
References: <44943261547037040@iva5-750e13568e4d.qloud-c.yandex.net>
 <87941547037637@iva6-19b25c513db4.qloud-c.yandex.net>
 <20190109130341.sxiqrcg43mxuzrai@pengutronix.de>
 <26388451547654386@iva5-0acfc31d2b43.qloud-c.yandex.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <26388451547654386@iva5-0acfc31d2b43.qloud-c.yandex.net>
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
Subject: Re: [HELP] Barebox porting
To: =?utf-8?B?0KHQtdGA0LDRhNC40Lwg0JTQvtC70LHQuNC70L7Qsg==?= <s.dlblv@ya.ru>
Cc: Barebox List <barebox@lists.infradead.org>

T24gV2VkLCBKYW4gMTYsIDIwMTkgYXQgMDY6NTk6NDZQTSArMDMwMCwg0KHQtdGA0LDRhNC40Lwg
0JTQvtC70LHQuNC70L7QsiB3cm90ZToKPiBJcyB0aGVyZSBhbnkgYW5vdGhlciB3YXkgdG8gbGlu
ayBEVCB0byB0aGUgaW1hZ2UgYmVzaWRlcyBpbXgqX2JhcmVib3hfZW50cnkodm9pZCAqYm9hcmRk
YXRhKSBmdW5jdGlvbnM/CgpZb3UgY2FuIGhhdmUgYW55IGRldmljZXRyZWUgYnkgYWRkaW5nIGl0
IHRvIGFyY2gvYXJtL2R0cy9NYWtlZmlsZToKCnBibC1kdGItJChDT05GSUdfTUFDSF9GUkVFU0NB
TEVfTVg1MV9QREspICs9IGlteDUxLWJhYmJhZ2UuZHRiLm8KClRoZW4gYWRkIGEgZGVjbGFyYXRp
b24gZm9yIGl0IChyZXBsYWNlIGJlZ2lubmluZyBvZiBmaWxlbmFtZSB3aXRoCl9fZHRiXywgLmR0
Yi5vIHdpdGggX3N0YXJ0IGFuZCAnLScgd2l0aCAnXycpOgoKZXh0ZXJuIGNoYXIgX19kdGJfaW14
NTFfYmFiYmFnZV9zdGFydFtdOwoKQW5kIHRoZW4geW91IGNhbiB1c2UgaXQuIFVzZSBvYmotZHRi
LSQoQ09ORklHX01BQ0hfRlJFRVNDQUxFX01YNTFfUERLKQp3aGVuIHlvdSB3YW50IHRvIGhhdmUg
aXQgaW4gdGhlIGZ1bGwgYmFyZWJveCBpbWFnZSByYXRoZXIgdGhhbiBpbiB0aGUKUEJMLgoKU2Fz
Y2hhCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAg
ICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKUGVpbmVyIFN0ci4g
Ni04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0w
ICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAg
ICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
