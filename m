Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abNir-0002Po-Vd
 for barebox@lists.infradead.org; Thu, 03 Mar 2016 07:30:59 +0000
Date: Thu, 3 Mar 2016 08:30:28 +0100
From: Stefan Christ <s.christ@phytec.de>
Message-ID: <20160303073027.GA2345@lws-christ>
References: <1456398922-8253-1-git-send-email-s.christ@phytec.de>
 <20160301092232.GM9224@pengutronix.de>
 <20160301105605.GA4982@lws-christ>
 <20160302185422.GT9224@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20160302185422.GT9224@pengutronix.de>
Content-Disposition: inline
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
Subject: Re: [PATCH] ARM: i.MX: bbu-internal: call detect for mmc devices
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

SGkgU2FzY2hhLAoKPiBBcyBpdCdzIG5vdCBhIHJlZ3Jlc3Npb24gb3Igc2VyaW91cyBidWcgSSBh
cHBsaWVkIGl0IHRvIG5leHQgYW5kIG5vdCB0bwo+IG1hc3Rlci4KICAKT2guIHllcyBvZiBjb3Vy
c2UuIFNyeSBteSB0eXBpbmcgd2FzIGZhc3RlciB0aGFuIG15IHRoaW5raW5nLiBUaGUgbmV4dCBi
cmFuY2gKaXMgdGhlIGNvcnJlY3QgcGxhY2UgZm9yIGl0LgoKTWl0IGZyZXVuZGxpY2hlbiBHcsO8
w59lbiAvIEtpbmQgcmVnYXJkcywKCVN0ZWZhbiBDaHJpc3QKCk9uIFdlZCwgTWFyIDAyLCAyMDE2
IGF0IDA3OjU0OjIyUE0gKzAxMDAsIFNhc2NoYSBIYXVlciB3cm90ZToKPiBPbiBUdWUsIE1hciAw
MSwgMjAxNiBhdCAxMTo1NjowNUFNICswMTAwLCBTdGVmYW4gQ2hyaXN0IHdyb3RlOgo+ID4gSGkg
U2FzY2hhLAo+ID4gCj4gPiA+IGRldmljZV9kZXRlY3RfYnlfbmFtZSgpIHNob3VsZCBiZSBzYWZl
IHRvIGNhbGwsIEkgZG9uJ3QgdGhpbmsgd2UgbmVlZAo+ID4gPiB0aGlzIGFkZGl0aW9uYWwgZmxh
Zy4gSnVzdCBhbHdheXMgY2FsbCBkZXZpY2VfZGV0ZWN0X2J5X25hbWUoKS4gV2UgaGF2ZQo+ID4g
PiB0byBkcm9wIHRoZSByZXR1cm4gdmFsdWUgY2hlY2tpbmcgdGhvdWdoLgo+ID4gPiAKPiA+ID4g
SW4gZmFjdCB3ZSBoYXZlIHRoZSBmb2xsb3dpbmcgcGF0Y2ggaW4gb25lIG9mIG91ciBpbnRlcm5h
bCBjdXN0b21lcgo+ID4gPiB0cmVlcywgdGhpcyBzaG91bGQgYmUgc3VpdGFibGUgZm9yIHlvdXIg
aXNzdWUsIHJpZ2h0Pwo+ID4gCj4gPiBZZXAuIFRoZXNlIHR3byBsaW5lcyBvZiBjb2RlIGFyZSBz
dWZmaWNlbnQgZm9yIG91ciB1c2UgY2FzZSA7LSkgSGVyZSBpcyBteToKPiA+IAo+ID4gICAgIFRl
c3RlZC1ieTogU3RlZmFuIENocmlzdCA8cy5jaHJpc3RAcGh5dGVjLmRlPgo+ID4gCj4gPiBXaWxs
IHlvdSBhcHBseSB0aGF0IHBhdGNoIHRvIG1hc3Rlcj8KPiAKPiBBcyBpdCdzIG5vdCBhIHJlZ3Jl
c3Npb24gb3Igc2VyaW91cyBidWcgSSBhcHBsaWVkIGl0IHRvIG5leHQgYW5kIG5vdCB0bwo+IG1h
c3Rlci4KPiAKPiBTYXNjaGEKPiAKPiAtLSAKPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+IEluZHVzdHJp
YWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9u
aXguZGUvICB8Cj4gUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwg
UGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBI
UkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
