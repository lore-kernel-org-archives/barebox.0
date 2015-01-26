Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YFfne-0006lI-9T
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 09:17:39 +0000
Received: by mail-lb0-f171.google.com with SMTP id u14so6513357lbd.2
 for <barebox@lists.infradead.org>; Mon, 26 Jan 2015 01:17:16 -0800 (PST)
Date: Mon, 26 Jan 2015 13:20:03 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150126132003.7f8f59de52ee63a72a2c9978@gmail.com>
In-Reply-To: <6A48CA9F-26EB-433F-BE18-CDFEB050970B@jcrosoft.com>
References: <1422195690-20676-1-git-send-email-antonynpavlov@gmail.com>
 <20150126081420.GH12209@pengutronix.de>
 <6A48CA9F-26EB-433F-BE18-CDFEB050970B@jcrosoft.com>
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
Subject: Re: [RFC] [JUST DEMO] commands: implement 'fbputs' command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

T24gTW9uLCAyNiBKYW4gMjAxNSAxNjo1NTo0MCArMDgwMApKZWFuLUNocmlzdG9waGUgUExBR05J
T0wtVklMTEFSRCA8cGxhZ25pb2pAamNyb3NvZnQuY29tPiB3cm90ZToKCj4gPiBPbiBKYW4gMjYs
IDIwMTUsIGF0IDQ6MTQgUE0sIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4g
d3JvdGU6Cj4gPiAKPiA+IE9uIFN1biwgSmFuIDI1LCAyMDE1IGF0IDA1OjIxOjMwUE0gKzAzMDAs
IEFudG9ueSBQYXZsb3Ygd3JvdGU6Cj4gPj4gTWFpbmxpbmUgYmFyZWJveCBhdCB0aGUgbW9tZW50
IGhhcyBubyBmcmFtZWJ1ZmZlcgo+ID4+IGNvbnNvbGUgc3VwcG9ydC4KPiA+PiBUaGUgJ2ZicHV0
cycgZGVtbyBjb21tYW5kIGRpc3BsYXlzIGEgdGV4dCBzdHJpbmcKPiA+PiBvbiBmYiBkZXZpY2Uu
Cj4gPj4gCj4gPj4gVGhpcyBxdWljay1uLWRpcnR5IHBhdGNoIGRlbW9uc3RhdGVzIHRoYXQgYmFy
ZWJveAo+ID4+IGZyYW1lYnVmZmVyIGNvbnNvbGUgY2FuIGJlIGVhc2VseSByZWFsaXplZC4KPiA+
PiAKPiA+PiBJJ20gYXdhaXRpbmcgeW91ciBjb21tZW50cyEKPiA+IAo+ID4gVW5mb3J0dW5hdGVs
eSByZWFsIGNvbnNvbGUgc3VwcG9ydCBpcyBub3QgdGhhdCBzaW1wbGUsIHdlIHdvdWxkIGhhdmUg
dG8KPiA+IHBhcnNlIEFOU0kgZXNjYXBlIHNlcXVlbmNlcyB1cCB0byBzb21lIHBvaW50IHRvIG1h
a2UgaXQgZ2VuZXJhbGx5IHVzYWJsZS4KPiA+IAo+ID4gSmVhbiBDaHJpc3RvcGhlIGhhcyBmcmFt
ZWJ1ZmZlciBjb25zb2xlIHBhdGNoZXMsIGhlJ2xsIHByb2JhYmx5IGNvbW1lbnQKPiA+IG9uIHRo
aXMgb25lIGFzd2VsbC4KPiA+IFBlcnNvbmFsbHkgSSB3b3VsZCBiZSBmaW5lIHdpdGggeW91ciBz
aW1wbGUgYXBwcm9hY2ggdW50aWwgcmVhbCBjb25zb2xlCj4gPiBzdXBwb3J0IGFycml2ZXMuCj4g
Cj4gCj4gWWVzIEkgaGF2ZSB0aGUgZnJhbWVidWZmZXIgY29uc29sZSBzdXBwb3J0IGFuZCB5ZXMg
eW91IGRvIG5lZWQgdG8gaGF2ZSB0aGUgQU5TSSBzdXBwb3J0Cj4gYW5kIGl04oCZcyBub3QgdGhh
dCBlYXN5CgpBcmUgeW91ciBwbGFubmluZyBhZGQgeW91ciBmcmFtZWJ1ZmZlciBjb25zb2xlIHBh
dGNoZXMgdG8gbWFpbmxpbmUgYmFyZWJveD8KCi0twqAKQmVzdCByZWdhcmRzLArCoCBBbnRvbnkg
UGF2bG92CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
