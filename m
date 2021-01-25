Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3xfy-0005Pq-SL
 for barebox@lists.infradead.org; Mon, 25 Jan 2021 08:56:47 +0000
Received: by mail-ej1-x62d.google.com with SMTP id l9so16878226ejx.3
 for <barebox@lists.infradead.org>; Mon, 25 Jan 2021 00:56:46 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvT79QvYYTL9O+V+HR=XVTKHS=UxJtc1ZvNaMu1yQZns9w@mail.gmail.com>
 <a8d24265-a9e7-c521-c0b1-cc8e0691d636@pengutronix.de>
In-Reply-To: <a8d24265-a9e7-c521-c0b1-cc8e0691d636@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 25 Jan 2021 11:56:34 +0300
Message-ID: <CAP1tNvSGFXWxVKoQanR9S6FxjV_U0DUMrkL-C1Bg7Ze5TaS1+w@mail.gmail.com>
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
Subject: Re: AM335x NAND write hungs
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

V29ya3MgYXMgZXhwZWN0ZWQuCkNhbiB5b3UgY29tbWl0IHRoaXMgY2hhbmdlIGludG8gbWFzdGVy
PwpUaGFua3MhCgrQv9C9LCAyNSDRj9C90LIuIDIwMjEg0LMuINCyIDExOjM3LCBBaG1hZCBGYXRv
dW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPjoKPgo+IEhlbGxvLAo+Cj4gT24gMjUuMDEuMjEg
MDk6MjAsIEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6Cj4gPiBIZWxsby4KPiA+Cj4gPiBJIHJlY2Vu
dGx5IHVwZ3JhZGVkIG15IGJhcmVib3ggZnJvbSAyMDIwLjExIHRvIDIwMjEuMDEgZm9yIGEgY3Vz
dG9tIGJvYXJkCj4gPiBiYXNlZCBvbiBUSSBBTTMzNXggcHJvY2Vzc29yLgo+ID4gVGhlIHVwZGF0
ZSByZXZlYWxlZCB0aGUgaW5vcGVyYWJpbGl0eSBvZiB3cml0aW5nIHRvIE5BTkQuIFdoZW4gdHJ5
aW5nIHRvIHdyaXRlLAo+ID4gdGhlIGJvb3Rsb2FkZXIgaGFuZ3MgZm9yZXZlci4KPiA+IFJldmVy
dGluZyB0aGUgY29tbWl0ICJtdGQ6IG5hbmQ6IG9tYXBfZ3BtYzogRml4IHdyb25nIGxlbmd0aCBj
aGVjayIgaGVscHMKPiA+IHRvIHNvbHZlIHRoZSBwcm9ibGVtLgo+Cj4gV2hhdCBoYXBwZW5zIHdo
ZW4gY2hhbmdpbmcgdGhlIGNvbmRpdGlvbiB0byBsZW4gPiAwPwo+Cj4gPiBEb2VzIGFueW9uZSBo
YXZlIHNpbWlsYXIgcHJvYmxlbXM/Cj4gPgo+ID4gVGhhbmtzIQo+ID4KPiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBiYXJlYm94IG1haWxpbmcg
bGlzdAo+ID4gYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gKPiA+Cj4KPiAtLQo+IFBlbmd1dHJv
bml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8Cj4gU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwg
aHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKPiAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55
ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfAo+IEFtdHNn
ZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0y
MDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
