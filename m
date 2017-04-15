Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1czHIY-0007LG-Ju
 for barebox@lists.infradead.org; Sat, 15 Apr 2017 06:35:08 +0000
Date: Sat, 15 Apr 2017 08:34:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170415063436.umvxggf7bran2dox@pengutronix.de>
References: <221c9119-96fa-845d-4525-b983d5b3fc03@126.com>
 <45b7af9b-719f-e34e-1075-60770af91c4a@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45b7af9b-719f-e34e-1075-60770af91c4a@126.com>
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
Subject: Re: How to change filesystem size of root
To: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Cc: barebox@lists.infradead.org

T24gRnJpLCBBcHIgMTQsIDIwMTcgYXQgMDM6MDM6MzZQTSArMDgwMCwg5byg5b+g5bGxIHdyb3Rl
Ogo+IOWcqCAyMDE35bm0MDTmnIgxNOaXpSAxMTo0OCwg5byg5b+g5bGxIOWGmemBkzoKPiA+IFdo
ZW4gdHJhbnNmZXIgYSBsYXJnZSBmaWxlIHRvIHJvb3QgdGhyb3VnaCB0ZnRwLiAiT3V0IG9mIG1l
bW9yeSIgZXJyb3IKPiA+IGxpa2UgdGhpczoKPiA+IAo+ID4gIyB0ZnRwIC94eTc1MjAvb3V0cHV0
X2ZpbGUucmJmIGEucmJmCj4gPiBUICAgICBbIyMjIyMjIyMjIyN3cml0ZTogT3V0IG9mIG1lbW9y
eSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBdCj4gPiAKPiA+IE15IGJvYXJkIGhh
cyAxRyBkZHIgYnV0IHRoZSBmaWxlIGp1cyAyM00uIFNvIHRoZSBtZW1vcnkgbGFyZ2UgZW5vdWdo
IHRvCj4gPiBob2xkIHRoZSBmaWxlLgo+ID4gCj4gPiBJIHRoaW5rIGl0IHNob3VsZCBoYXZlIGEg
bWV0aG9kIHRvIGFkanVzdCB0aGUgZmlsZXN5c3RlbSdzIHNpemUgb2Ygcm9vdC4KPiA+IEJ1dCBJ
IGNhbid0IGZpbmQgaXQuCj4gPiBIZWxwIG1lIHBsZWFzZS4KPiAKPiBKdWN0IGNoYW5nZSB0aGUg
c2l6ZSBvZiAiTUFMTE9DX1NJWkUiCgpXaGljaCBzaXplIHdhcyBjb25maWd1cmVkPyBOb3JtYWxs
eSB5b3UgY2FuIHNwZWNpZnkgaXQgdG8gMHgwIGFuZApiYXJlYm94IGZpZ3VyZXMgb3V0IGEgZ29v
ZCBtYWxsb2Mgc3BhY2UgYXJlYSBhdXRvbWF0aWNhbGx5LiBUaGF0IHdvdWxkCmJlIHJvdWdobHkg
aGFsZiBvZiB0aGUgbWVtb3J5LiAoVGhpcyBpcyBhdCBsZWFzdCB0cnVlIGZvciBBUk0pCgpTYXNj
aGEKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAg
ICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfApQZWluZXIgU3RyLiA2
LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAg
ICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAg
KzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJv
eAo=
