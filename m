Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from canuck.infradead.org ([2001:4978:20e::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShmRh-0006zo-OZ
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 18:49:33 +0000
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShmRg-0000hc-WD
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 18:49:33 +0000
Date: Thu, 21 Jun 2012 20:49:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120621184931.GI28394@pengutronix.de>
References: <1340265903-16017-1-git-send-email-shc_work@mail.ru>
 <1340265903-16017-2-git-send-email-shc_work@mail.ru>
 <20120621094117.GA28394@pengutronix.de>
 <1340274307.480951624@f269.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340274307.480951624@f269.mail.ru>
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
Subject: Re: [PATCH 2/2] mx51-pdk: Move lowlevel_init before UART
 initialization
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

T24gVGh1LCBKdW4gMjEsIDIwMTIgYXQgMDI6MjU6MDdQTSArMDQwMCwgQWxleGFuZGVyIFNoaXlh
biB3cm90ZToKPiBIZWxsby4KPiAKPiBUaHUsIDIxIEp1biAyMDEyIDExOjQxOjE3ICswMjAwINC+
0YIgU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPjoKPiA+IE9uIFRodSwgSnVu
IDIxLCAyMDEyIGF0IDEyOjA1OjAzUE0gKzA0MDAsIEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6Cj4g
PiAKPiA+IDxwbGVhc2UgcHV0IHRoZSByZWFzb24gb2YgdGhpcyBjaGFuZ2UgaGVyZT4KPiAuLi4K
PiA+ID4gQEAgLTI3NCw2ICsyNzMsOCBAQCBzdGF0aWMgaW50IGYzc19jb25zb2xlX2luaXQodm9p
ZCkKPiA+ID4gIHsKPiA+ID4gIAlteGNfaW9tdXhfdjNfc2V0dXBfbXVsdGlwbGVfcGFkcyhmM3Nf
cGFkcywgQVJSQVlfU0laRShmM3NfcGFkcykpOwo+ID4gPiAgCj4gPiA+ICsJaW14NTFfaW5pdF9s
b3dsZXZlbCg4MDApOwo+ID4gPiArCj4gPiA+ICAJaW14NTFfYWRkX3VhcnQwKCk7Cj4gPiA+ICAK
PiA+ID4gIAlyZXR1cm4gMDsKPiAuLi4KPiAKPiBUaGlzIGlzIGp1c3QgYnJpbmdpbmcgdGhlIGlu
aXRpYWxpemF0aW9uIGZvciBhbGwgbXg1MS1iYXNlZCBib2FyZHMgdG8gdGhlIHNhbWUgZm9ybWF0
Lgo+IFlvdSBjYW4ganVzdCByZWplY3QgdGhpcyBwYXRjaCBhbmQgYXBwbHkgb25seSBwYXJ0IDEu
CgpPaywgZGlkIHRoYXQuCgpUaGFua3MKIFNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cklu
ZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVu
Z3V0cm9uaXguZGUvICB8ClBlaW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFu
eSB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0s
IEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxp
bmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
