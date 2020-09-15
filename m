Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIAAT-0000wk-76
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:34:42 +0000
Date: Tue, 15 Sep 2020 14:34:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200915123438.GH4498@pengutronix.de>
References: <20200915093721.25213-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915093721.25213-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] scripts/kwbimage: Fix a build warning
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

T24gVHVlLCBTZXAgMTUsIDIwMjAgYXQgMTE6Mzc6MjFBTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gVGhpcyBmaXhlczoKPiAKPiAJc2NyaXB0cy9rd2JpbWFnZS5jOjI1Mzo1OiB3
YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmGltYWdlX25hbmRfZWNjX21vZGVf
aWTigJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQo+IAo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVp
bmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIHNjcmlw
dHMva3diaW1hZ2UuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NjcmlwdHMva3diaW1hZ2UuYyBiL3Njcmlw
dHMva3diaW1hZ2UuYwo+IGluZGV4IGRiNjZmNzA2MGRjYi4uMjZlYjA3ZmE4MWJjIDEwMDY0NAo+
IC0tLSBhL3NjcmlwdHMva3diaW1hZ2UuYwo+ICsrKyBiL3NjcmlwdHMva3diaW1hZ2UuYwo+IEBA
IC0yNTAsNyArMjUwLDcgQEAgc3RhdGljIGNvbnN0IGNoYXIgKmltYWdlX25hbmRfZWNjX21vZGVf
bmFtZSh1bnNpZ25lZCBpbnQgaWQpCj4gIAlyZXR1cm4gTlVMTDsKPiAgfQo+ICAKPiAtaW50IGlt
YWdlX25hbmRfZWNjX21vZGVfaWQoY29uc3QgY2hhciAqbmFuZF9lY2NfbW9kZV9uYW1lKQo+ICtz
dGF0aWMgaW50IGltYWdlX25hbmRfZWNjX21vZGVfaWQoY29uc3QgY2hhciAqbmFuZF9lY2NfbW9k
ZV9uYW1lKQoKSSBhbHJlYWR5IGhhdmUgdGhpcyBpbiBhbm90aGVyIHBhdGNoIHdoaWNoIGFsc28g
Zml4ZXMgdGhpcyB0eXBlIG9mCnByb2JsZW0gZm9yIHRoZSBvdGhlciBjYXNlcyBpbiBzY3JpcHRz
LwoKU2FzY2hhCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAg
ICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcg
SGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIw
NjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwg
RmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK
