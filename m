Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WpX3F-0004rA-HL
 for barebox@lists.infradead.org; Wed, 28 May 2014 06:09:26 +0000
Date: Wed, 28 May 2014 08:08:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140528060859.GO15686@pengutronix.de>
References: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
 <1401097557.4829.20.camel@weser.hi.pengutronix.de>
 <20140526160933.db2250dd20bc4c385d56c747@gmail.com>
 <CAOngqVU9N6Y1yR9A2NW4LRWJN8HeWti+ErMW6OxOjpJxDc74rQ@mail.gmail.com>
 <20140527180411.9c1c650b8e9d19fdcec7614d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140527180411.9c1c650b8e9d19fdcec7614d@gmail.com>
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
Subject: Re: [RFC] [WIP] incorporate picotcp into barebox: a small demo
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Kristof Roelants <kristof.roelants@tass.be>, barebox <barebox@lists.infradead.org>, Daniele Lacamera <daniele.lacamera@tass.be>, Daniele Lacamera <mlists@danielinux.net>, Sam Van Den Berge <sam.van.den.berge@tass.be>

T24gVHVlLCBNYXkgMjcsIDIwMTQgYXQgMDY6MDQ6MTFQTSArMDQwMCwgQW50b255IFBhdmxvdiB3
cm90ZToKPiBPbiBUdWUsIDI3IE1heSAyMDE0IDExOjQ2OjI5ICswMjAwCj4gRGFuaWVsZSBMYWNh
bWVyYSA8ZGFuaWVsZS5sYWNhbWVyYUB0YXNzLmJlPiB3cm90ZToKPiAKPiAkIGdjYyAtLXZlcnNp
b24KPiBnY2MgKERlYmlhbiA0LjguMy0xKSA0LjguMwo+IAo+IEhlcmUgaXMgbXkgJ21ha2UgLXMn
IG91dHB1dCBmb3Igc2FuZGJveCBiYXJlYm94Ogo+IAo+IG5ldC9waWNvdGNwL21vZHVsZXMvcGlj
b19pcHY0LmM6IEluIGZ1bmN0aW9uIOKAmHBpY29faXB2NF9yZWJvdW5kX2xhcmdl4oCZOgo+IG5l
dC9waWNvdGNwL21vZHVsZXMvcGljb19pcHY0LmM6MTU4MjoyNDogd2FybmluZzogdW51c2VkIHZh
cmlhYmxlIOKAmGZy4oCZIFstV3VudXNlZC12YXJpYWJsZV0KPiAgICAgIHN0cnVjdCBwaWNvX2Zy
YW1lICpmcjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBeCj4gbmV0L3BpY290Y3AvbW9kdWxl
cy9waWNvX2lwdjQuYzoxNTgxOjE0OiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUg4oCYbGVu4oCZ
IFstV3VudXNlZC12YXJpYWJsZV0KPiAgICAgIHVpbnQzMl90IGxlbiA9IGYtPnRyYW5zcG9ydF9s
ZW47Cj4gICAgICAgICAgICAgICBeCj4gbmV0L3BpY290Y3AvbW9kdWxlcy9waWNvX2lwdjQuYzox
NTgwOjE0OiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUg4oCYdG90YWxfcGF5bG9hZF93cml0dGVu
4oCZIFstV3VudXNlZC12YXJpYWJsZV0KPiAgICAgIHVpbnQzMl90IHRvdGFsX3BheWxvYWRfd3Jp
dHRlbiA9IDA7Cj4gICAgICAgICAgICAgICBeCgpUaGF0J3MgYW5vdGhlciBhZHZhbnRhZ2Ugb2Yg
SVNfRU5BQkxFRC4gVGhpcyBoYXBwZW5zIGJlY2F1c2UgdGhlIHZhcmlhYmxlcyBhcmUKb25seSB1
c2VkIHVuZGVyIGFuIGlmZGVmLiBGaXhpbmcgdGhpcyB3b3VsZCBtZWFuIHRvIHB1dCB0aGUgZGVm
aW5pdGlvbnMgdW5kZXIKdGhlIHNhbWUgaWZkZWYgd2hpY2ggcmVxdWlyZXMgYW5vdGhlciBpZmRl
Zi4KClNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29sdXRp
b25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBlaW5l
ciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEyMS0y
MDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8
IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9iYXJlYm94Cg==
