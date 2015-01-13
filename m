Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAwrn-0000U0-Ax
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 08:30:24 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B7D7D10087D9
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 09:29:58 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150113082546.GC23940@pengutronix.de>
Date: Tue, 13 Jan 2015 16:29:51 +0800
Message-Id: <80FED513-D72C-4527-A51C-687BF4A89D35@jcrosoft.com>
References: <20150113061940.GA30554@ns203013.ovh.net>
 <1421130070-31704-1-git-send-email-plagnioj@jcrosoft.com>
 <1421130070-31704-2-git-send-email-plagnioj@jcrosoft.com>
 <20150113082546.GC23940@pengutronix.de>
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
Subject: Re: [PATCH 2/3] defaultenv-2: introduce /env/rc.d
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Cj4gT24gSmFuIDEzLCAyMDE1LCBhdCA0OjI1IFBNLCBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+IAo+IE9uIFR1ZSwgSmFuIDEzLCAyMDE1IGF0IDA3OjIxOjA5
QU0gKzAxMDAsIEplYW4tQ2hyaXN0b3BoZSBQTEFHTklPTC1WSUxMQVJEIHdyb3RlOgo+PiBhcyB3
ZSBub3cgd2lsbCB1c2Ugc3ltbGluayBvbiAvZW52L3JjLmQgdG8gc3BlY2lmeSBpbml0IG9yZGVy
Cj4+IAo+PiB0aGUgc2NyaXB0IHdpbGwgYmUgc3RvcmUgaW4gL2Vudi9pbml0Cj4+IAo+PiBzbyBh
bnkgYm9hcmQgY2FuIG92ZXJ3cml0ZSB0aGVtIG9yIGFkZCBzY3JpcHQgdGhhdCBuZWVkIHRvIHJ1
biBiZWZvcmUgYQo+PiBkZWZhdWx0IG9uZQo+IAo+IEJvYXJkcyBjYW4gb3ZlcndyaXRlIHNjcmlw
dHMgd2l0aG91dCBsaW5rcy4gTnVtYmVyaW5nIHRoZSBmaWxlcyBzZWVtcwo+IGdvb2QgYmVjYXVz
ZSBpdCBtYWtlcyB0aGUgZXhlY3V0aW9uIG9yZGVyIG1vcmUgcHJlZGljdGFibGUgYW5kIGVhc2ll
ciB0bwo+IHB1dCBhIHNjcmlwdCBiZXR3ZWVuIHR3byBvdGhlciBzY3JpcHRzLgo+IAo+IEJ1dCB3
aHkgbGlua3M/IE9uIExpbnV4IFBDcyB0aGlzIGFsbG93cyB0byBzZXBhcmF0ZSBkaXN0cmlidXRp
b24KPiBwcm92aWRlZCBzY3JpcHRzIGZyb20gdGhlaXIgYWN0dWFsIChzaXRlIHNwZWNpZmljKSBl
eGVjdXRpb24uIEFsc28KPiB0aGUgc2FtZSBzY3JpcHRzIGNhbiBiZSBleGVjdXRlZCBmcm9tIGRp
ZmZlcmVudCBydW5sZXZlbHMuCj4gT24gYmFyZWJveCBJIHNlZSBubyBnb29kIHJlYXNvbiBmb3Ig
bGlua3MuIFRoZXJlIGlzIG9ubHkgb25lIHJ1bmxldmVsCj4gaW4gYmFyZWJveCBhbmQgaWYgSSBk
b24ndCB3YW50IHRvIGV4ZWN1dGUgYSBzY3JpcHQgSSBjYW4ganVzdCByZW1vdmUgaXQuCj4gCgpS
dW50aW1lIGNoYW5nZQoKSeKAmXZlIGEgYm9hcmQgd2hlcmUgSSBuZWVkIHRvIGNoYW5nZSB0aGUg
aW5pdCBvcmRlciBiYXNlZCBvbiB0aGUgYm9hcmQgcmV2aXNpb24KCnNvIHRoZSBzeW1saW5rIGFs
bG93IHRoaXMKCmFuZCB0aGlzIHdpbGwgYWxsb3cgYWxzbyB0byBoYXZlIHRoZSBzYW1lIHNjcmlw
dCBhdCBkaWZmZXJlbnQgb3JkZXIgYmFzZWQgb24gdGhlIGJvYXJkCnJlcXVpcmVtZW50LgoKQmVz
dCBSZWdhcmRzLApKLgoKPiBTYXNjaGEKPiAKPiAKPiAtLSAKPiBQZW5ndXRyb25peCBlLksuICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+
IEluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cu
cGVuZ3V0cm9uaXguZGUvICB8Cj4gUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBH
ZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKPiBBbXRzZ2VyaWNodCBIaWxk
ZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUg
fAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
