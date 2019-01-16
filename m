Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjqF0-0003cv-8c
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:48:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id s5-v6so6311519ljd.12
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2019 10:48:41 -0800 (PST)
Date: Wed, 16 Jan 2019 21:48:37 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190116214837.d890dc8ca97f5de171a79408@gmail.com>
In-Reply-To: <20190116172806.GB31124@ravnborg.org>
References: <44943261547037040@iva5-750e13568e4d.qloud-c.yandex.net>
 <87941547037637@iva6-19b25c513db4.qloud-c.yandex.net>
 <20190109130341.sxiqrcg43mxuzrai@pengutronix.de>
 <1140741547651643@iva7-d29a8296bc3c.qloud-c.yandex.net>
 <20190116172806.GB31124@ravnborg.org>
Mime-Version: 1.0
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
Subject: Re: [HELP] Barebox porting
To: Sam Ravnborg <sam@ravnborg.org>, =?UTF-8?B?0KHQtdGA0LDRhNC40Lwg0JQ=?= =?UTF-8?B?0L7Qu9Cx0LjQu9C+0LI=?= <s.dlblv@ya.ru>
Cc: Barebox List <barebox@lists.infradead.org>

T24gV2VkLCAxNiBKYW4gMjAxOSAxODoyODowNiArMDEwMApTYW0gUmF2bmJvcmcgPHNhbUByYXZu
Ym9yZy5vcmc+IHdyb3RlOgoKSGkhCgo+IE9uIFdlZCwgSmFuIDE2LCAyMDE5IGF0IDA2OjE0OjAz
UE0gKzAzMDAsINCh0LXRgNCw0YTQuNC8INCU0L7Qu9Cx0LjQu9C+0LIgd3JvdGU6Cj4gPiAKPiA+
IEEgbmV3IHBvcnRpb24gb2YgcXVlc3Rpb25zIGlzIHJlYWR5OikKPiA+IDEuIGRsbWFsbG9jIG9y
IHRsc2YgLSB3aGF0IGFyZSBwcm9zIGFuZCBjb25zIG9mIGVhY2ggb2YgdGhlbT8KPiAKPiBMb29r
aW5nIGF0IHRoZSBoaXN0b3J5IEkgY291bGQgc2VlIHRoYXQgZGxtYWxsb2Mgd2FzIHByZXNlbnQg
c2luY2UgYmFyZWJveAo+IHdhcyBmb3JrZWQgZnJvbSBVLWJvb3QuIFNvIGFuZCBvbGQgaW1wbG1l
bnRhdGlvbi4KPiAKPiBMYXRlciB0bHNmIHdhcyBhZGRlZCwgd2lodG91dCBhbnkgZXhwbGFuYXRp
b24gd2h5Lgo+IEJ1dCBiYXNlZCBvbiB0aGUgZmFjdCB0aGF0IEplYW4gKHdobyBhZGRlZCB0bHNm
KSBkaWQgaXMgd2hlbiB3ZSBhbHJlYWR5Cj4gaGFkIGRsbWFsbG9jIEkgdGVudGF0aXZlbHkgY29u
Y2x1ZGUgdGhhdCB0bHNmIGlzIHRoZSBiZXR0ZXIgYWx0ZXJuYXRpdmUuCj4gQW5kIEkgY2FuIHNl
ZSBsaW5lIG9mIGNvZGUgaXMgbGVzcyB0aGFuIGRsbWFsbG9jIHRvbyAtIHNvIG1heWJlIGl0IGlz
IGV2ZW4gc21hbGxlci4KPiBJIHdvdWxkIGdvIGZvciB0bHNmIGJhc2VkIG9uIHRoZSBhYm92ZSBh
bmQgbm90IGJvdGhldGluZyBhYm91dCB0aGlzIGFueW1vcmUuCgpQbGVhc2Ugc2VlIHRoaXMgU2Fz
Y2hhJ3MgY29tbWVudCBvbiB0bHNmOgoKICBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBl
cm1haWwvYmFyZWJveC8yMDExLURlY2VtYmVyLzAwNTI4OC5odG1sCgpBdCB0aGUgbW9tZW50IHdl
IHVzZSB0bHNmMiBpbiBiYXJlYm94LiBQbGVhc2Ugbm90ZSB0aGF0IHRoZXJlIGlzIG1vcmUgcmVj
ZW50IHRsc2YzIGF0IGdpdGh1YjoKCiAgaHR0cHM6Ly9naXRodWIuY29tL21hdHRjb250ZS90bHNm
CgotLSAKQmVzdCByZWdhcmRzLArCoCBBbnRvbnkgUGF2bG92CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
