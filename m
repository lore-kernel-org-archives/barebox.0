Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x22d.google.com ([2607:f8b0:4001:c06::22d])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cSqgX-00039t-II
 for barebox@lists.infradead.org; Sun, 15 Jan 2017 19:41:53 +0000
Received: by mail-io0-x22d.google.com with SMTP id j18so78710473ioe.2
 for <barebox@lists.infradead.org>; Sun, 15 Jan 2017 11:41:28 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <d8c10ecb-f349-eae5-2fe9-ccf407e1d31c@mev.co.uk>
References: <CAAMcf8CA-eTzHhQFXct7-udO1sYifL3zGULsoxiW9U1hcvKMvw@mail.gmail.com>
 <20170111200757.x33vfb4sdrsu4kmk@pengutronix.de>
 <d8c10ecb-f349-eae5-2fe9-ccf407e1d31c@mev.co.uk>
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 15 Jan 2017 20:41:27 +0100
Message-ID: <CAAMcf8CcEDc--=WV-aUhuone7hGwU5dq2Xx15e9Gi24VrhieGg@mail.gmail.com>
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
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>

T24gVGh1LCBKYW4gMTIsIDIwMTcgYXQgMTE6MjcgQU0sIElhbiBBYmJvdHQgPGFiYm90dGlAbWV2
LmNvLnVrPiB3cm90ZToKPiBPbiAxMS8wMS8xNyAyMDowNywgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4+Cj4+IE9uIFdlZCwgSmFuIDExLCAyMDE3IGF0IDA4OjM1OjExUE0gKzAxMDAsIFZpY2Vu
dGUgQmVyZ2FzIHdyb3RlOgo+Pj4KPj4+IEhlbGxvLAo+Pj4gd2hlbiB1c2luZyBzY3JpcHRzL2No
ZWNrcGF0Y2gucGwgaXQgbWF5IHJlcG9ydDoKPj4+ICAgVW5lc2NhcGVkIGxlZnQgYnJhY2UgaW4g
cmVnZXggaXMgZGVwcmVjYXRlZCwKPj4+ICAgcGFzc2VkIHRocm91Z2ggaW4gcmVnZXggYXQgc2Ny
aXB0cy9jaGVja3BhdGNoLnBsIGxpbmUgMjI2Ny4KPj4KPj4KPj4gSSBiZXQgdGhpcyBzY3JpcHRz
IG9yaWdpbmF0ZXMgZnJvbSB0aGUga2VybmVsLiBTbyBJJ2QgcmVjb21tZW5kIHRvIHRlc3QKPj4g
aWYgdGhlaXIgdmVyc2lvbiBpcyBhZmZlY3RlZCB0by4gSWYgeWVzLCByZXBvcnQgdG8gdGhlbSwg
aWYgbm90LCB1cGRhdGUKPj4gYmFyZWJveCB0byBsYXRlc3QgTGludXggdmVyc2lvbi4KPgo+Cj4g
SW4gdGhlIExpbnV4IGtlcm5lbCwgdGhpcyB3YXMgZml4ZWQgaW4gY29tbWl0Cj4gNmI4YzY5ZTQz
ODRiMGJjZjE5MzZjMjEzNzgwNDg0MDIxMmRhYWY2OSAoImNoZWNrcGF0Y2g6IGZpeCBhbm90aGVy
IGxlZnQKPiBicmFjZSB3YXJuaW5nIiksIHdoaWNoIG1hZGUgaXQgaW50byB0aGUgdGhlIDQuNiBr
ZXJuZWwuCj4KPiAtLQo+IC09KCBJYW4gQWJib3R0IEAgTUVWIEx0ZC4gICAgRS1tYWlsOiA8YWJi
b3R0aUBtZXYuY28udWs+ICk9LQo+IC09KCAgICAgICAgICAgICAgICAgICAgICAgICAgV2ViOiBo
dHRwOi8vd3d3Lm1ldi5jby51ay8gICk9LQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=
