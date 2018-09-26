Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g57iD-00062d-1Y
 for barebox@lists.infradead.org; Wed, 26 Sep 2018 11:10:43 +0000
References: <20180926081029.28103-1-s.hauer@pengutronix.de>
From: Marcin =?utf-8?Q?Niestr=C3=B3j?= <m.niestroj@grinn-global.com>
In-reply-to: <20180926081029.28103-1-s.hauer@pengutronix.de>
Date: Wed, 26 Sep 2018 13:09:55 +0200
Message-ID: <87r2hg3470.fsf@grinn-global.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH] fs: ramfs: make chunk counting in truncate() better
 readable
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

ClNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4gd3JpdGVzOgoKPiBJbiByYW1m
c190cnVuY2F0ZSgpICJuZXdjaHVua3MiIGRlbm90ZXMgdGhlIG51bWJlciBvZiBjaHVua3Mgd2UK
PiB3YW50IHRvIGhhdmUgYWZ0ZXIgdGhlIGNhbGwuIFdlIGRlY3JlYXNlIHRoYXQgbnVtYmVyIHdo
aWxlIGl0ZXJhdGluZwo+IG92ZXIgdGhlIGV4aXN0aW5nIGNodW5rcyBhbmQgZGVjcmVhc2UgaXQg
ZnVydGhlciB3aXRoIGV2ZXJ5IG5ld2x5Cj4gYWxsb2NhdGVkIGNodW5rIHVudGlsICJuZXdjaHVu
a3MiIGlzIHplcm8uCj4gVGhpcyBpcyBhIGJpdCBoYXJkIHRvIHJlYWQuIEluc3RlYWQgd2UgZHJv
cCB0aGUgZGVjcmVhc2luZyB3aGlsZQo+IGl0ZXJhdGluZyBvdmVyIGV4aXN0aW5nIGNodW5rcyBh
bmQgaW5jcmVhc2UgIm9sZGNodW5rcyIgd2hpbGUgYWxsb2NhdGluZwo+IHVudGlsIGl0IHJlYWNo
ZXMgIm5ld2NodW5rcyIuCj4KPiBUaGlzIGlzIG1haW5seSBkb25lIHRvIG1ha2UgdGhlIG5leHQg
cGF0Y2ggZWFzaWVyLgo+Cj4gU2lnbmVkLW9mZi1ieTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBl
bmd1dHJvbml4LmRlPgo+IC0tLQo+ICBmcy9yYW1mcy5jIHwgOSArKysrLS0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQg
YS9mcy9yYW1mcy5jIGIvZnMvcmFtZnMuYwo+IGluZGV4IDA5ZGFmZTAyYWUuLjhiYThkNzdkZTkg
MTAwNjQ0Cj4gLS0tIGEvZnMvcmFtZnMuYwo+ICsrKyBiL2ZzL3JhbWZzLmMKPiBAQCAtMzg0LDE5
ICszODQsMTggQEAgc3RhdGljIGludCByYW1mc190cnVuY2F0ZShzdHJ1Y3QgZGV2aWNlX2QgKmRl
diwgRklMRSAqZiwgdWxvbmcgc2l6ZSkKPiAgCQkJaWYgKCFub2RlLT5kYXRhKQo+ICAJCQkJcmV0
dXJuIC1FTk9NRU07Cj4gIAkJCWRhdGEgPSBub2RlLT5kYXRhOwo+ICsJCQluZXdjaHVua3MgPSAx
Owo+ICAJCX0KPiAgCj4gLQkJbmV3Y2h1bmtzLS07Cj4gLQkJd2hpbGUgKGRhdGEtPm5leHQpIHsK
PiAtCQkJbmV3Y2h1bmtzLS07Cj4gKwkJd2hpbGUgKGRhdGEtPm5leHQpCj4gIAkJCWRhdGEgPSBk
YXRhLT5uZXh0Owo+IC0JCX0KPiAgCj4gLQkJd2hpbGUgKG5ld2NodW5rcy0tKSB7Cj4gKwkJd2hp
bGUgKG5ld2NodW5rcyA+IG9sZGNodW5rcykgewo+ICAJCQlkYXRhLT5uZXh0ID0gcmFtZnNfZ2V0
X2NodW5rKCk7Cj4gIAkJCWlmICghZGF0YS0+bmV4dCkKPiAgCQkJCXJldHVybiAtRU5PTUVNOwo+
ICAJCQlkYXRhID0gZGF0YS0+bmV4dDsKPiArCQkJb2xkY2h1bmtzKys7Cj4gIAkJfQo+ICAJfQo+
ICAJbm9kZS0+c2l6ZSA9IHNpemU7CgpSZXZpZXdlZC1ieTogTWFyY2luIE5pZXN0cm9qIDxtLm5p
ZXN0cm9qQGdyaW5uLWdsb2JhbC5jb20+CgotLSAKTWFyY2luIE5pZXN0csOzagoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxp
c3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
