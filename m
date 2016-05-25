Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5UVE-0000PH-Gv
 for barebox@lists.infradead.org; Wed, 25 May 2016 08:49:21 +0000
Date: Wed, 25 May 2016 10:48:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160525084858.GF23750@pengutronix.de>
References: <1464107282-17942-1-git-send-email-shc_work@mail.ru>
 <20160525084030.GD23750@pengutronix.de>
 <1464165907.676469722@f360.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464165907.676469722@f360.i.mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Sascha Hauer <s.hauer@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MCI: imx-esdhc: Allow to use 1-bit bus width in board
 files
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

T24gV2VkLCBNYXkgMjUsIDIwMTYgYXQgMTE6NDU6MDdBTSArMDMwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiA+INCh0YDQtdC00LAsIDI1INC80LDRjyAyMDE2LCAxMTo0MCArMDM6MDAg0L7R
giBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Ogo+ID4gCj4gPiBPbiBUdWUs
IE1heSAyNCwgMjAxNiBhdCAwNzoyODowMlBNICswMzAwLCBBbGV4YW5kZXIgU2hpeWFuIHdyb3Rl
Ogo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgU2hpeWFuIDxzaGNfd29ya0BtYWlsLnJ1
Pgo+ID4gPiAtLS0KPiA+ID4gIGFyY2gvYXJtL2JvYXJkcy9mcmVlc2NhbGUtbXg1My1zbWQvYm9h
cmQuYyB8IDEgKwo+ID4gPiAgYXJjaC9hcm0vYm9hcmRzL2thcm8tdHg1My9ib2FyZC5jICAgICAg
ICAgIHwgMSArCj4gPiA+ICBkcml2ZXJzL21jaS9pbXgtZXNkaGMuYyAgICAgICAgICAgICAgICAg
ICAgfCA5ICsrKy0tLS0tLQo+ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCj4gPiAKPiA+IEFwcGxpZWQsIHRoYW5rcy4KPiA+IAo+ID4gSWYgeW91
IG5lZWQgdGhpcyBwYXRjaCBJIGFzc3VtZSB5b3VyIGJvYXJkIHN0aWxsIGhhcyBubyBkZXZpY2Ug
dHJlZQo+ID4gc3VwcG9ydC4gWW91IHNob3VsZCBmaXggdGhhdCA7KQo+IAo+IFllcyA6KQo+IAo+
IFBsZWFzZSBmaXggTU1DX0JVU19XSURUSF80IGluIHBhdGNoIHdpdGggTU1DX0NBUF80X0JJVF9E
QVRBLCB0aGlzIGlzIG15IGJ1Zy4gU29ycnkuCgpKdXN0IGRpZCB0aGF0LgoKU2FzY2hhCgotLSAK
UGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAg
ICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKUGVpbmVyIFN0ci4gNi04LCAzMTEz
NyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10
c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIx
LTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
