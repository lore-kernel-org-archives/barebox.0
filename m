Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TU0KD-0000ZC-EW
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 19:21:10 +0000
Date: Thu, 1 Nov 2012 20:21:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121101192107.GZ24458@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
 <1350507817-7819-7-git-send-email-s.hauer@pengutronix.de>
 <1350508337.128691867@f327.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350508337.128691867@f327.mail.ru>
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
Subject: Re: [PATCH 06/28] ARM i.MX boards: switch to barebox_arm_entry
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

SGkgQWxleGFuZGVyLAoKT24gVGh1LCBPY3QgMTgsIDIwMTIgYXQgMDE6MTI6MTdBTSArMDQwMCwg
QWxleGFuZGVyIFNoaXlhbiB3cm90ZToKPiBXZWQsIDE3IE9jdCAyMDEyIDIzOjAzOjE1ICswMjAw
INC+0YIgU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPjoKPiA+TW9zdCBpLk1Y
IGJvYXJkcyBjYW4gdXNlIHRoZSBpbXgqX2JhcmVib3hfZW50cnkgZnVuY3Rpb25zLiBUaGUgcmVt
YWluaW5nCj4gKGkuTVgyMSwgaS5NWDYpIHVzZSBoYXJkY29kZWQgYmFzZSBhZGRyZXNzZXMuCj4g
U2lnbmVkLW9mZi1ieTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+ID4K
PiBTYXNjaGEsIHN0b3AuIFRvbyBtYW55IHBhdGNoZXMgd2hpbGUgeW91IG5lZWQgdG8gcHJlcGFy
ZSBzdGFibGUgdmVyc2lvbiBmb3IgY29uZmVyZW5jZS4KPiBSZWFsbHksIHN0b3AgYW5kIHRyeSB0
byBtYWtlIG9uZSBtb3JlIHN0YWJsZSB2ZXJzaW9uIGZvciB5b3VyIHByZXNlbnRhdGlvbi4KPiA7
KSBTb3JyeSwgYnV0IEkgdGhpbmsgYWJvdXQgYWxsIDopCgpBbHRob3VnaCB1bnRpbCBub3cgSSBo
YXZlbid0IGFuc3dlcmVkIHRoaXMgbWFpbCBJIGZvciBzdXJlIGhhdmUgcmVhZCBpdCwKYW5kIHll
cywgeW91IGFyZSByaWdodC4gVGhhdCdzIHdoeSBJIGhhdmUgY29uY2VudHJhdGVkIG9uIGdldHRp
bmcgc29tZQpmaXhlcyBvdXQgcmF0aGVyIHRoYW4gYWRkaW5nIG1vcmUgZmVhdHVyZXMuIFRoYW5r
cyBmb3IgcG9pbnRpbmcgdGhhdCBvdXQKOykKClNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4g
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
CkluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cu
cGVuZ3V0cm9uaXguZGUvICB8ClBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2Vy
bWFueSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hl
aW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
