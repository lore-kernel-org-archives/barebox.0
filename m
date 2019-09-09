Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FFd-0007Bd-Sp
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 08:42:23 +0000
Date: Mon, 9 Sep 2019 10:42:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190909084220.23dw5yg7ekwni5jw@pengutronix.de>
References: <20190907235645.22442-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907235645.22442-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: aarch64: Re-implement most of barebox_arm_entry()
 in assembly
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

T24gU2F0LCBTZXAgMDcsIDIwMTkgYXQgMDQ6NTY6NDVQTSAtMDcwMCwgQW5kcmV5IFNtaXJub3Yg
d3JvdGU6Cj4gR0NDOSBub3cgcHJvZHVjZXMgdGhlIGZvbGxvd2luZyB3YXJuaW5nOgo+IAo+IGNv
bW1vbi5oOjUxOjI6IHdhcm5pbmc6IGxpc3RpbmcgdGhlIHN0YWNrIHBvaW50ZXIgcmVnaXN0ZXIg
4oCYc3DigJkgaW4gYSBjbG9iYmVyIGxpc3QgaXMgZGVwcmVjYXRlZCBbLVdkZXByZWNhdGVkXQo+
ICAgIDUxIHwgIF9fYXNtX18gX192b2xhdGlsZV9fKCJtb3Ygc3AsICUwIgo+ICAgICAgIHwgIF5+
fn5+fn4KPiBjb21tb24uaDo1MToyOiBub3RlOiB0aGUgdmFsdWUgb2YgdGhlIHN0YWNrIHBvaW50
ZXIgYWZ0ZXIgIGFuIOKAmGFzbeKAmSBzdGF0ZW1lbnQgbXVzdCBiZSB0aGUgc2FtZSBhcyBpdCB3
YXMgYmVmb3JlIHRoZSBzdGF0ZW1lbnQKCkhtLCB0aGlzIG1ha2VzIGFuIGFybV9zZXR1cF9zdGFj
aygpIGZ1bmN0aW9uIGlsbGVnYWwgYnkgZGVmaW5pdGlvbi4gSQp0aGluayB3ZSBoYXZlIHdvcmsg
dG8gZG8gOigKCkNhbiB5b3UgY2hhbmdlIGJvdGggYXJtMzIgYW5kIGFhcmNoNjQgdG8gYXNzZW1i
bHkgaW4gdGhpcyBwYXRjaD8gV2UgaGF2ZQp0byBkbyBzb21ldGhpbmcgYW55d2F5LCBjaGFuZ2lu
ZyBib3RoIGFyY2hpdGVjdHVyZXMgbWlnaHQgbWFrZSB0aGlzCnBhdGNoIHNpbXBsZXIuCgpTYXNj
aGEKCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAg
ICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKUGVpbmVyIFN0ci4g
Ni04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0w
ICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAg
ICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
