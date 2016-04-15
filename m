Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-x241.google.com ([2607:f8b0:4003:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqxyf-0001Ho-8f
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 07:15:42 +0000
Received: by mail-ob0-x241.google.com with SMTP id tz8so6418976obc.1
 for <barebox@lists.infradead.org>; Fri, 15 Apr 2016 00:15:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160414075826.GB9102@pengutronix.de>
References: <1460557139-64673-1-git-send-email-poggi.raph@gmail.com>
 <20160414075826.GB9102@pengutronix.de>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <poggi.raph@gmail.com>
Date: Fri, 15 Apr 2016 09:14:40 +0200
Message-ID: <CACqcpZDeBjSJtCycSZ2eMbqA5c6QGbyqBRHYkw6pT+a5mwy0Yw@mail.gmail.com>
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
Subject: Re: [PATCH] bitops: fls64: add missing include
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

MjAxNi0wNC0xNCA5OjU4IEdNVCswMjowMCBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9u
aXguZGU+Ogo+IE9uIFdlZCwgQXByIDEzLCAyMDE2IGF0IDA0OjE4OjU4UE0gKzAyMDAsIFJhcGhh
ZWwgUG9nZ2kgd3JvdGU6Cj4+IFNpZ25lZC1vZmYtYnk6IFJhcGhhZWwgUG9nZ2kgPHBvZ2dpLnJh
cGhAZ21haWwuY29tPgo+PiAtLS0KPj4gIGluY2x1ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2ZsczY0
LmggfCAxICsKPj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRvcHMvZmxzNjQuaCBiL2luY2x1ZGUvYXNtLWdl
bmVyaWMvYml0b3BzL2ZsczY0LmgKPj4gaW5kZXggODZkNDAzZi4uZThlZmY3NiAxMDA2NDQKPj4g
LS0tIGEvaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRvcHMvZmxzNjQuaAo+PiArKysgYi9pbmNsdWRl
L2FzbS1nZW5lcmljL2JpdG9wcy9mbHM2NC5oCj4+IEBAIC0yLDYgKzIsNyBAQAo+PiAgI2RlZmlu
ZSBfQVNNX0dFTkVSSUNfQklUT1BTX0ZMUzY0X0hfCj4+Cj4+ICAjaW5jbHVkZSA8YXNtL3R5cGVz
Lmg+Cj4+ICsjaW5jbHVkZSA8YXNtLWdlbmVyaWMvYml0b3BzL19fZmxzLmg+Cj4KPiBUaGlzIGlz
IHdyb25nLiBUaGlzIGluY2x1ZGUgbXVzdCBub3QgYmUgaGVyZSB0byBnaXZlIHRoZSBhcmNoaXRl
Y3R1cmUKPiB0aGUgY2hhbmNlIHRvIHByb3ZpZGUgYW4gb3B0aW1pemVkIHZlcnNpb24gb2YgX19m
bHMoKSwgYnV0IHRoZSBnZW5lcmljCj4gdmVyc2lvbiBvZiBmbHM2NCgpLiBUaGlzIG1heSBub3Qg
YmUgY2xlYXIgaW4gYmFyZWJveCBjb250ZXh0IHNpbmNlIGFsbAo+IHVzZXJzIHVzZSB0aGUgZ2Vu
ZXJpYyB2ZXJzaW9uLCBidXQgaW4gdGhlIGtlcm5lbCB0aGVyZSBhcmUgc29tZQo+IGFyY2hpdGVj
dHVyZXMgaW1wbGVtZW50aW5nIHRoZWlyIG93biB2ZXJzaW9uIG9mIF9fZmxzKCkgd2hpbGUgb3Ro
ZXJzIHVzZQo+IHRoZSBnZW5lcmljIHZhcmlhbnQ6Cj4KPiBhcmNoL21pcHMvaW5jbHVkZS9hc20v
Yml0b3BzLmg6NDgwOnN0YXRpYyBpbmxpbmUgdW5zaWduZWQgbG9uZyBfX2Zscyh1bnNpZ25lZCBs
b25nIHdvcmQpCj4gLi4uCj4gI2luY2x1ZGUgPGFzbS1nZW5lcmljL2JpdG9wcy9mbHM2NC5oPgo+
Cj4gYXJjaC9tZXRhZy9pbmNsdWRlL2FzbS9iaXRvcHMuaDoxMTg6I2luY2x1ZGUgPGFzbS1nZW5l
cmljL2JpdG9wcy9fX2Zscy5oPgo+IC4uLgo+ICNpbmNsdWRlIDxhc20tZ2VuZXJpYy9iaXRvcHMv
ZmxzNjQuaD4KPgo+IFNhc2NoYQo+Cj4KPgo+IC0tCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiBJbmR1
c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1
dHJvbml4LmRlLyAgfAo+IFBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFu
eSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8Cj4gQW10c2dlcmljaHQgSGlsZGVzaGVp
bSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCk9r
LCBJIHVuZGVyc3RhbmQgaG93IGl0IHdvcmtzIG5vdywKClRoYW5rIHlvdSwKClJhcGhhw6tsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
