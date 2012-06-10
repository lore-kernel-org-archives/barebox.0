Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sdfji-0002DJ-7v
 for barebox@lists.infradead.org; Sun, 10 Jun 2012 10:51:12 +0000
Date: Sun, 10 Jun 2012 12:51:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120610105102.GL30400@pengutronix.de>
References: <1339148008-16248-1-git-send-email-shc_work@mail.ru>
 <20120609101904.GD30400@pengutronix.de>
 <1339259046.502527310@f238.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1339259046.502527310@f238.mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: initial =?iso-8859-15?Q?C?=
 =?iso-8859-15?Q?onnectCore=AE?= i.MX51 board support
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

T24gU2F0LCBKdW4gMDksIDIwMTIgYXQgMDg6MjQ6MDZQTSArMDQwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiBIZWxsby4KPiAKPiBTYXQsIDkgSnVuIDIwMTIgMTI6MTk6MDQgKzAyMDAg0L7R
giBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Ogo+IC4uLgo+ID4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1pbXgvaW5jbHVkZS9tYWNoL2lvbXV4LW14NTEuaCBiL2Fy
Y2gvYXJtL21hY2gtaW14L2luY2x1ZGUvbWFjaC9pb211eC1teDUxLmgKPiA+ID4gaW5kZXggYzdm
NTE2OS4uOGZiZTkyNiAxMDA2NDQKPiA+ID4gLS0tIGEvYXJjaC9hcm0vbWFjaC1pbXgvaW5jbHVk
ZS9tYWNoL2lvbXV4LW14NTEuaAo+ID4gPiArKysgYi9hcmNoL2FybS9tYWNoLWlteC9pbmNsdWRl
L21hY2gvaW9tdXgtbXg1MS5oCj4gPiBQbGVhc2UgZG8gbm90IG1hbnVhbGx5IHVwZGF0ZSB0aGlz
IGZpbGUuIEluc3RlYWQsIGp1c3QgY29weSB0aGUKPiA+IGlvbXV4LW14NTEuaCBmcm9tIHRoZSBr
ZXJuZWwuIEknZCBsaWtlIHRvIGtlZXAgdGhlbSBpbiBzeW5jLiBUaGUKPiA+IHRoaW5ncyB5b3Ug
Y2hhbmdlIGhlcmUgYXJlIGZpeGVkIGluIHRoZSBrZXJuZWwgYWxyZWFkeS4KPiAKPiBDYW4geW91
IHVwZGF0ZSB0aGlzIGZpbGUgaXRzZWxmIG9yIEkgc2hvdWxkIG1ha2Ugc2VwYXJhdGUgcGF0Y2gg
Zm9yIHRoaXMgb25lPwoKUGxlYXNlIHByZXBhcmUgYSBwYXRjaCBmb3IgdGhpcwoKVGhhbmtzCiBT
YXNjaGEKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAg
ICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfApQZWluZXIgU3Ry
LiA2LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3
LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6
ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=
