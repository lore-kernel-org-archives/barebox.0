Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x244.google.com ([2607:f8b0:4001:c06::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cTBB3-0001DK-2X
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 17:34:42 +0000
Received: by mail-io0-x244.google.com with SMTP id m98so13236540iod.2
 for <barebox@lists.infradead.org>; Mon, 16 Jan 2017 09:34:20 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170116073652.b7vrnj2k6u3jejmt@pengutronix.de>
References: <CAAMcf8CA-eTzHhQFXct7-udO1sYifL3zGULsoxiW9U1hcvKMvw@mail.gmail.com>
 <20170111200757.x33vfb4sdrsu4kmk@pengutronix.de>
 <d8c10ecb-f349-eae5-2fe9-ccf407e1d31c@mev.co.uk>
 <CAAMcf8D+fzttYtBFAZ6EBeZ3+9RAGpTqLtJ0skzCQL81PsDd9w@mail.gmail.com>
 <20170116073652.b7vrnj2k6u3jejmt@pengutronix.de>
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 16 Jan 2017 18:34:19 +0100
Message-ID: <CAAMcf8DQJHGHXvozzU9WNb67t1PmB8o2aejk8HYaFpFPWZTsbA@mail.gmail.com>
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
Subject: Re: scripts/checkpatch.pl is deprecated
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Ian Abbott <abbotti@mev.co.uk>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>

T24gTW9uLCBKYW4gMTYsIDIwMTcgYXQgODozNiBBTSwgU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBl
bmd1dHJvbml4LmRlPiB3cm90ZToKPiBPbiBTdW4sIEphbiAxNSwgMjAxNyBhdCAwODo0Mjo0MlBN
ICswMTAwLCBWaWNlbnRlIEJlcmdhcyB3cm90ZToKPj4gT24gVGh1LCBKYW4gMTIsIDIwMTcgYXQg
MTE6MjcgQU0sIElhbiBBYmJvdHQgPGFiYm90dGlAbWV2LmNvLnVrPiB3cm90ZToKPj4gPiBPbiAx
MS8wMS8xNyAyMDowNywgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4+ID4+Cj4+ID4+IE9uIFdl
ZCwgSmFuIDExLCAyMDE3IGF0IDA4OjM1OjExUE0gKzAxMDAsIFZpY2VudGUgQmVyZ2FzIHdyb3Rl
Ogo+PiA+Pj4KPj4gPj4+IEhlbGxvLAo+PiA+Pj4gd2hlbiB1c2luZyBzY3JpcHRzL2NoZWNrcGF0
Y2gucGwgaXQgbWF5IHJlcG9ydDoKPj4gPj4+ICAgVW5lc2NhcGVkIGxlZnQgYnJhY2UgaW4gcmVn
ZXggaXMgZGVwcmVjYXRlZCwKPj4gPj4+ICAgcGFzc2VkIHRocm91Z2ggaW4gcmVnZXggYXQgc2Ny
aXB0cy9jaGVja3BhdGNoLnBsIGxpbmUgMjI2Ny4KPj4gPj4KPj4gPj4KPj4gPj4gSSBiZXQgdGhp
cyBzY3JpcHRzIG9yaWdpbmF0ZXMgZnJvbSB0aGUga2VybmVsLiBTbyBJJ2QgcmVjb21tZW5kIHRv
IHRlc3QKPj4gPj4gaWYgdGhlaXIgdmVyc2lvbiBpcyBhZmZlY3RlZCB0by4gSWYgeWVzLCByZXBv
cnQgdG8gdGhlbSwgaWYgbm90LCB1cGRhdGUKPj4gPj4gYmFyZWJveCB0byBsYXRlc3QgTGludXgg
dmVyc2lvbi4KPj4gPgo+PiA+Cj4+ID4gSW4gdGhlIExpbnV4IGtlcm5lbCwgdGhpcyB3YXMgZml4
ZWQgaW4gY29tbWl0Cj4+ID4gNmI4YzY5ZTQzODRiMGJjZjE5MzZjMjEzNzgwNDg0MDIxMmRhYWY2
OSAoImNoZWNrcGF0Y2g6IGZpeCBhbm90aGVyIGxlZnQKPj4gPiBicmFjZSB3YXJuaW5nIiksIHdo
aWNoIG1hZGUgaXQgaW50byB0aGUgdGhlIDQuNiBrZXJuZWwuCj4+Cj4+IFRoaXMgY29tbWl0IGFw
cGxpZXMgYXMgaXMgaW4gYmFyZWJveCwgc28sIGNhbiBpdCBiZSBhcHBsaWVkPwo+PiBodHRwczov
L2dpdC5rZXJuZWwub3JnL2NnaXQvbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQv
cGF0Y2gvP2lkPTZiOGM2OWU0Mzg0YjBiY2YxOTM2YzIxMzc4MDQ4NDAyMTJkYWFmNjkKPgo+IFll
cy4gQ2FuIHlvdSBzZW5kIHRoaXMgYXMgcGF0Y2ggdG8gdGhlIGxpc3Q/CgpXaHkgZG9lcyBpdCBu
ZWVkIHRvIGJlIGluIHRoZSBsaXN0PyBjYW4gbm90IGl0IGJlIGFwcGxpZWQgZGlyZWN0bHk/Cgo+
Cj4gU2FzY2hhCj4KPiAtLQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBT
b2x1dGlvbnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwK
PiBQZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5
LTUxMjEtMjA2OTE3LTAgICAgfAo+IEFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAg
ICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==
