Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTRMa-00050g-Io
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 08:42:37 +0000
Date: Thu, 5 Mar 2015 09:42:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150305084213.GF11010@pengutronix.de>
References: <1425455398-18858-1-git-send-email-s.hauer@pengutronix.de>
 <1425455398-18858-2-git-send-email-s.hauer@pengutronix.de>
 <166D2BA8-3932-4EE3-855B-B286BC53A5E6@jcrosoft.com>
 <20150304104519.GA11010@pengutronix.de>
 <CD9E5BF5-982B-4A7A-AD48-C5B11D7090FD@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CD9E5BF5-982B-4A7A-AD48-C5B11D7090FD@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] remove unnecessary device pointer argument
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Barebox List <barebox@lists.infradead.org>

T24gVGh1LCBNYXIgMDUsIDIwMTUgYXQgMTI6MjQ6NTdBTSArMDgwMCwgSmVhbi1DaHJpc3RvcGhl
IFBMQUdOSU9MLVZJTExBUkQgd3JvdGU6Cj4gCj4gPiBPbiBNYXIgNCwgMjAxNSwgYXQgNjo0NSBQ
TSwgU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+IAo+ID4g
T24gV2VkLCBNYXIgMDQsIDIwMTUgYXQgMDQ6NDM6MTNQTSArMDgwMCwgSmVhbi1DaHJpc3RvcGhl
IFBMQUdOSU9MLVZJTExBUkQgd3JvdGU6Cj4gPj4gCj4gPj4+IE9uIE1hciA0LCAyMDE1LCBhdCAz
OjQ5IFBNLCBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+ID4+
PiAKPiA+Pj4gVGhlIHN0cnVjdCBkZXZpY2VfZCAqIGFyZ3VtZW50IGlzIG5vdCBuZWNlc3Nhcnks
IGl0IGNhbiBiZSByZXRyaWV2ZWQgZnJvbQo+ID4+PiB0aGUgRklMRSAqLiBUaGlzIGFkZHMgYSBj
b252ZW5pZW5jZSBmdW5jdGlvbiBmb3IgZG9pbmcgdGhpcyBhbmQgcmVtb3Zlcwo+ID4+PiB0aGUg
c3RydWN0IGRldmljZV9kICogYXJndW1lbnQgZnJvbSB0aGUgdGhlIGZpbGVzeXN0ZW0gZHJpdmVy
cyBmdW5jdGlvbnMuCj4gPj4gCj4gPj4gaWYgeW91IGRvIHNvIHlvdSBzaG91bGQgaW50cm9kdWNl
IGZzX3dhcm4vaW5mbyAmIGNvIHRvbwo+ID4+IAo+ID4+IHNvIHdlIGRlIG5vdCB1c2UgZGV2X3h4
eCB2ZXJzaW9uIGluIGZzCj4gPiAKPiA+IFdlIGNhbiBkbyB0aGF0LCBidXQgaXQncyBpbmRlcGVu
ZGVudCBvZiB0aGVzZSBwYXRjaGVzLCByaWdodD8KPiBJ4oCZZCBzYWlkIG5vIGFzIHdlIGRyb3Ag
dGhlIGRldmljZV9kIHdlIG5lZWQgZHJvcCBkZXZfeHh4IHRvbwo+IHRvIGJlIGxvZ2ljCgpJIGRv
bid0IHVuZGVyc3RhbmQgd2h5IHRoaXMgaXMgcmVsZWF0ZWQgYnV0IGlmIHlvdSB3aXNoIEkganVz
dCBkcm9wIHRoaXMKcGF0Y2guCgpTYXNjaGEKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApJbmR1c3Ry
aWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJv
bml4LmRlLyAgfApQZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQ
aG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEg
MjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxp
c3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
