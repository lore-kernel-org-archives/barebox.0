Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJbmr-0003NB-6T
 for barebox@lists.infradead.org; Thu, 25 Apr 2019 10:39:30 +0000
References: <20190423171852.26126-1-a.fatoum@pengutronix.de>
 <20190423171852.26126-3-a.fatoum@pengutronix.de>
 <20190423174149.GB8801@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ef8de050-c0b3-c87a-b136-b48e216cb441@pengutronix.de>
Date: Thu, 25 Apr 2019 12:39:25 +0200
MIME-Version: 1.0
In-Reply-To: <20190423174149.GB8801@ravnborg.org>
Content-Language: en-US
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
Subject: Re: [PATCH 2/5] ARM: imx: work around i.MX6UL ERR008958 (ARM errata
 814220)
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org, ore@pengutronix.de, rcz@pengutronix.de

CgpPbiAyMy80LzE5IDE5OjQxLCBTYW0gUmF2bmJvcmcgd3JvdGU6Cj4gSGkgQWhtYWQuCj4gCj4g
T24gVHVlLCBBcHIgMjMsIDIwMTkgYXQgMDc6MTg6NDlQTSArMDIwMCwgQWhtYWQgRmF0b3VtIHdy
b3RlOgo+PiBUaGUgQ29ydGV4LUE3IGluIGJvdGggdGhlIGkuTVg2VUxbMV0gYW5kIGkuTVg2VUxM
WzJdIGlzIGFmZmVjdGVkIGJ5IHRoZQo+PiBlcnJhdGEgRVJSMDA4OTU4ICJBcm0vTVA6IDgxNDIy
MOKAlEItQ2FjaGUgbWFpbnRlbmFuY2UgYnkgc2V0L3dheSBvcGVyYXRpb25zCj4+IGNhbiBleGVj
dXRlIG91dCBvZiBvcmRlciIuCj4+Cj4+IHNlbGVjdCBBUk1fRVJSQVRBXzgxNDIyMCB0byBhZGRy
ZXNzIHRoaXMuCj4+Cj4+IFsxXTogaHR0cHM6Ly93d3cubnhwLmNvbS9kb2NzL2VuL2VycmF0YS9J
TVg2VUxDRS5wZGYKPj4gWzJdOiBodHRwczovL3d3dy5ueHAuY29tL2RvY3MvZW4vZXJyYXRhL0lN
WDZVTExDRS5wZGYKPj4KPj4gU2lnbmVkLW9mZi1ieTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBw
ZW5ndXRyb25peC5kZT4KPj4gLS0tCj4+ICBhcmNoL2FybS9tYWNoLWlteC9LY29uZmlnIHwgMSAr
Cj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4KPj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL21hY2gtaW14L0tjb25maWcgYi9hcmNoL2FybS9tYWNoLWlteC9LY29uZmlnCj4+IGlu
ZGV4IGQ0N2RkMzU0NzcxMi4uYjE1ZTZkZmRmZDliIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9t
YWNoLWlteC9LY29uZmlnCj4+ICsrKyBiL2FyY2gvYXJtL21hY2gtaW14L0tjb25maWcKPj4gQEAg
LTE2NCw2ICsxNjQsNyBAQCBjb25maWcgQVJDSF9JTVg2U1gKPj4gIGNvbmZpZyBBUkNIX0lNWDZV
TAo+PiAgCWJvb2wKPj4gIAlzZWxlY3QgQVJDSF9JTVg2Cj4+ICsJc2VsZWN0IEFSTV9FUlJBVEFf
ODE0MjIwCj4gCj4gU2VsZWN0aW5nIGEgdmlzaWJsZSBvcHRpb24gaXMgY29uc2lkZXJlZCBiYWQg
cHJhY3RpY2UuCj4gSWYgQVJNX0VSUkFUQV84MTQyMjAgd2FzIGRlZmluZWQgd2l0aG91dCBhIHBy
b21wdCBpdCB3b3VsZCBoYXZlIGJlZW4KPiBmaW5lLgoKQWgsIGdvb2QgdG8ga25vdy4KClRoYW5r
cwoKPiAKPiAJU2FtCj4gCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBT
b2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwK
UGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01
MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAg
ICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
