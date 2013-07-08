Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwCbi-0001px-Ji
 for barebox@lists.infradead.org; Mon, 08 Jul 2013 14:40:04 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1UwCbJ-0000S7-J1
 for barebox@lists.infradead.org; Mon, 08 Jul 2013 16:39:37 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1UwCbb-0002S4-2N
 for barebox@lists.infradead.org; Mon, 08 Jul 2013 16:39:55 +0200
Message-ID: <1373294394.4284.4.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 08 Jul 2013 16:39:54 +0200
In-Reply-To: <1373289430-6965-8-git-send-email-t.gamez@phytec.de>
References: <1373289430-6965-1-git-send-email-t.gamez@phytec.de>
 <1373289430-6965-8-git-send-email-t.gamez@phytec.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 08/12] PCM051: Add first stage support
To: barebox@lists.infradead.org

T24gTW9uLCAyMDEzLTA3LTA4IGF0IDE1OjE3ICswMjAwLCBUZXJlc2EgR8OhbWV6IHdyb3RlOgo+
IEBAIC0xNTMsMTMgKzE1NCwyMCBAQAo+ICAjZGVmaW5lIEFNMzNYWF9EQVRBMF9SRF9EUVNfU0xB
VkVfUkFUSU9fMSAgICAgIChBTTMzWFhfRERSX1BIWV9CQVNFX0FERFIgKyAweDBDQykKPiAgI2Rl
ZmluZSAgICAgICAgQU0zM1hYX0RBVEEwX1dSX0RRU19TTEFWRV9SQVRJT18wICAgICAgIChBTTMz
WFhfRERSX1BIWV9CQVNFX0FERFIgKyAweDBEQykKPiAgCj4gKyNkZWZpbmUgICAgICAgIEFNMzNY
WF9EQVRBMV9SRF9EUVNfU0xBVkVfUkFUSU9fMCAoQU0zM1hYX0REUl9QSFlfQkFTRV9BRERSICsg
MHgxNkMpCj4gKyNkZWZpbmUgICAgICAgIEFNMzNYWF9EQVRBMV9XUl9EUVNfU0xBVkVfUkFUSU9f
MCAoQU0zM1hYX0REUl9QSFlfQkFTRV9BRERSICsgMHgxODApCj4gKyNkZWZpbmUgICAgICAgIEFN
MzNYWF9EQVRBMV9GSUZPX1dFX1NMQVZFX1JBVElPXzAgKEFNMzNYWF9ERFJfUEhZX0JBU0VfQURE
UiArIDB4MUFDKQo+ICsjZGVmaW5lICAgICAgICBBTTMzWFhfREFUQTFfV1JfREFUQV9TTEFWRV9S
QVRJT18wIChBTTMzWFhfRERSX1BIWV9CQVNFX0FERFIgKyAweDFDNCkKPiArCj4gICNkZWZpbmUg
ICAgICAgIEFNMzNYWF9EQVRBMF9XUl9EUVNfU0xBVkVfUkFUSU9fMSAgICAgICAoQU0zM1hYX0RE
Ul9QSFlfQkFTRV9BRERSICsgMHgwRTApCj4gICNkZWZpbmUgICAgICAgIEFNMzNYWF9EQVRBMF9X
UkxWTF9JTklUX1JBVElPXzAgICAgICAgICAoQU0zM1hYX0REUl9QSFlfQkFTRV9BRERSICsgMHgw
RjApCgpDb3VsZCB3ZSBrZWVwIHRoZSBkZWZpbmVzIG9yZGVyZWQgYnkgYWRkcmVzcz8KQWxzbywg
aXQgc2VlbXMgdGhhdCB0aGUgYWxpZ25tZW50IGlzIGluY29uc2lzdGVudC4KClJlZ2FyZHMsCkph
bgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAg
ICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKUGVpbmVyIFN0ci4gNi04
LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAg
IHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0
OS01MTIxLTIwNjkxNy01NTU1IHwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
