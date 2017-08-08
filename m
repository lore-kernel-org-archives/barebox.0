Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1df6Ye-00013N-RT
 for barebox@lists.infradead.org; Tue, 08 Aug 2017 15:38:09 +0000
Message-ID: <1502206574.2934.93.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 08 Aug 2017 17:36:14 +0200
In-Reply-To: <20170808152049.njl24tcwafccebwt@gportay>
References: <20170807221042.19700-1-gael.portay@savoirfairelinux.com>
 <20170807221042.19700-2-gael.portay@savoirfairelinux.com>
 <1502178714.2934.21.camel@pengutronix.de>
 <20170808152049.njl24tcwafccebwt@gportay>
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
Subject: Re: [PATCH 1/2] readline_simple: return -1 if getc fails
To: =?ISO-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
Cc: barebox@lists.infradead.org

QW0gRGllbnN0YWcsIGRlbiAwOC4wOC4yMDE3LCAxMToyMCAtMDQwMCBzY2hyaWViIEdhw6tsIFBP
UlRBWToKPiBIaSBMdWNhcywKPiAKPiBPbiBUdWUsIEF1ZyAwOCwgMjAxNyBhdCAwOTo1MTo1NEFN
ICswMjAwLCBMdWNhcyBTdGFjaCB3cm90ZToKPiA+IEFtIE1vbnRhZywgZGVuIDA3LjA4LjIwMTcs
IDE4OjEwIC0wNDAwIHNjaHJpZWIgR2HDq2wgUE9SVEFZOgo+ID4gPiBUaGUgZ2V0YyBmdW5jdGlv
biBtYXkgcmV0dXJuIGFuIGVycm5vIGNvZGUgaWYgYW4gZXJyb3IgaGFwcGVucy4KPiA+ID4gCj4g
PiA+IFRoaXMgcGF0Y2ggcHJldmVudHMgcmVhZGxpbmUgZnJvbSBwcmludGluZyBhIG5vbiBwcmlu
dGFibGUgY2hhcmFjdGVyIGFuZAo+ID4gPiBmcm9tIGxvb3BpbmcgdG8gaW5maW5pdHkgYW5kIGJl
eW9uZy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEdhw6tsIFBPUlRBWSA8Z2FlbC5wb3J0
YXlAc2F2b2lyZmFpcmVsaW51eC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgbGliL3JlYWRsaW5lX3Np
bXBsZS5jIHwgMiArKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+ID4g
PiAKPiA+ID4gZGlmZiAtLWdpdCBhL2xpYi9yZWFkbGluZV9zaW1wbGUuYyBiL2xpYi9yZWFkbGlu
ZV9zaW1wbGUuYwo+ID4gPiBpbmRleCBjNGQzZDI0MGUuLjEyODNjOTYwMiAxMDA2NDQKPiA+ID4g
LS0tIGEvbGliL3JlYWRsaW5lX3NpbXBsZS5jCj4gPiA+ICsrKyBiL2xpYi9yZWFkbGluZV9zaW1w
bGUuYwo+ID4gPiBAQCAtNTgsNiArNTgsOCBAQCBpbnQgcmVhZGxpbmUgKGNvbnN0IGNoYXIgKnBy
b21wdCwgY2hhciAqbGluZSwgaW50IGxlbikKPiA+ID4gIAo+ID4gPiAgCWZvciAoOzspIHsKPiA+
ID4gIAkJYyA9IGdldGNoYXIoKTsKPiA+ID4gKwkJaWYgKGMgPCAwKQo+ID4gPiArCQkJcmV0dXJu
ICgtMSk7Cj4gPiAKPiA+IEkgZG9uJ3QgbGlrZSBtYWRlIHVwIGVycm9yIGNvZGVzLiBJcyB0aGVy
ZSBhbnkgcmVhc29uIHdoeSB3ZSBjb3VsZG4ndAo+ID4ganVzdCBwYXNzIHRocm91Z2ggdGhlIG5l
Z2F0aXZlIGVycm9yIGNvZGUgZnJvbSBnZXRjaGFyPwo+ID4gCj4gCj4gVGhlIHRoaW5nIGhlcmUg
aXMgdGhhdCBnZXRjaGFyKCkgbWF5IHJldHVybiBhbiBlcnJvciwgYW5kIHRoYXQgZXJyb3IgaXMg
bm90Cj4gdGVzdGVkLiBUaGlzIGNhdXNlcyByZWFkbGluZSB0byBwcmludCB0aGUgY2hhcmFjdGVy
IDB4ZWEgKC1FSU5WQUwpIHdoaWNoIGlzIG5vdAo+IHByaW50YWJsZS4KClNvIHdoeSB3b3VsZG4n
dCB0aGUgZm9sbG93aW5nIGZpeCB0aGUgaXNzdWU/CgpzaWduZWQgY2hhciBjOwoKaWYgKGMgPCAw
KQoJcmV0dXJuIGM7CgpSZWdhcmRzLApMdWNhcwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9iYXJlYm94Cg==
