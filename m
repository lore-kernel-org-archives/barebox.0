Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLztZ-0005TZ-Rq
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 19:57:54 +0000
Date: Thu, 12 Feb 2015 20:57:30 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150212195730.GK10842@pengutronix.de>
References: <1423768031-5014-1-git-send-email-rockford@yandex.ru>
 <20150212193457.GI10842@pengutronix.de>
 <832111423770319@web2g.yandex.ru>
 <20150212195144.GJ10842@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150212195144.GJ10842@pengutronix.de>
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
Subject: Re: [PATCH] ARM: Rockchip: Add DEBUG_LL based on mach-socfpga
To: =?utf-8?B?0J/QsNC90L7QsiDQkNC90LTRgNC10Lk=?= <rockford@yandex.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

SGVsbG8sCgpPbiBUaHUsIEZlYiAxMiwgMjAxNSBhdCAwODo1MTo0NFBNICswMTAwLCBVd2UgS2xl
aW5lLUvDtm5pZyB3cm90ZToKPiBPbiBUaHUsIEZlYiAxMiwgMjAxNSBhdCAxMDo0NToxOVBNICsw
MzAwLCDQn9Cw0L3QvtCyINCQ0L3QtNGA0LXQuSB3cm90ZToKPiA+IDEyLjAyLjIwMTUsIDIyOjM0
LCAiVXdlIEtsZWluZS1Lw7ZuaWciIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ogo+
ID4gPiBCZXR0ZXIgbWFrZSB1c2Ugb2YgREVCVUdfVUFSVF9QSFlTIGFuZCBERUJVR19VQVJUX0JB
U0UuCj4gPiA+IEFuZCB0aGVyZSBpcyBhbHJlYWR5IERFQlVHX1JLMjlfVUFSVFsxMjNdIGFuZCBE
RUJVR19SSzNYX1VBUlRbMDEyM10gYW5kCj4gPiA+IERFQlVHX1JLMzJfVUFSVDIuIERvZXNuJ3Qg
b25lIG9mIHRob3NlIGZpdCB5b3VyIG5lZWRzPwo+ID4gPgo+ID4gCj4gPiBXaGljaCBicmFuY2gg
Y29udGFpbnMgaXQ/IEkndmUgY2hlY2tlZCBtYXN0ZXIgYW5kIG5leHQgYW5kIHRoZXJlIGlzIG5v
IHN1Y2ggYSBkZWZpbml0aW9ucy4KPiBUaGVuIHlvdSBkaWRuJ3QgY2hlY2sgY29ycmVjdGx5LiBJ
dCdzIGF2YWlsYWJsZSBzaW5jZSBhdCBsZWFzdAo+IHYzLjEyLXJjMToKPiAKPiAgJCBnaXQgc2hv
dyB2My4xMi1yYzE6YXJjaC9hcm0vS2NvbmZpZy5kZWJ1ZyB8IGdyZXAgREVCVUdfUksyOV9VQVJU
MSB8IHdjIC1sCj4gIDMKPiAKPiBUaGUgc2FtZSBoYXBwZW5zIHdoZW4gdXNpbmcgMy4xOSBpbnN0
ZWFkIG9mIDMuMTItcmMxLgpodXBzLCB0aGlzIGlzIHRoZSB3cm9uZyBsaXN0LiBJIHRob3VnaHQg
d2UncmUgdGFsa2luZyBhYm91dCB0aGUga2VybmVsLgoKKmJsdXNoKgoKVXdlCgotLSAKUGVuZ3V0
cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgVXdlIEtsZWluZS1Lw7ZuaWcg
ICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8
IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9iYXJlYm94Cg==
