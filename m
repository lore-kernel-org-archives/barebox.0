Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YICcI-0001GX-U5
 for barebox@lists.infradead.org; Mon, 02 Feb 2015 08:44:23 +0000
Received: by mail-la0-f54.google.com with SMTP id hv19so38189237lab.13
 for <barebox@lists.infradead.org>; Mon, 02 Feb 2015 00:43:59 -0800 (PST)
Date: Mon, 2 Feb 2015 12:46:58 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150202124658.d5a89863bda9de9bba4a895d@gmail.com>
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
T0wtVklMTEFSRCA8cGxhZ25pb2pAamNyb3NvZnQuY29tPiB3cm90ZToKCj4gCj4gPiBPbiBKYW4g
MjYsIDIwMTUsIGF0IDQ6MTQgUE0sIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5k
ZT4gd3JvdGU6Cj4gPiAKPiA+IE9uIFN1biwgSmFuIDI1LCAyMDE1IGF0IDA1OjIxOjMwUE0gKzAz
MDAsIEFudG9ueSBQYXZsb3Ygd3JvdGU6Cj4gPj4gTWFpbmxpbmUgYmFyZWJveCBhdCB0aGUgbW9t
ZW50IGhhcyBubyBmcmFtZWJ1ZmZlcgo+ID4+IGNvbnNvbGUgc3VwcG9ydC4KPiA+PiBUaGUgJ2Zi
cHV0cycgZGVtbyBjb21tYW5kIGRpc3BsYXlzIGEgdGV4dCBzdHJpbmcKPiA+PiBvbiBmYiBkZXZp
Y2UuCj4gPj4gCj4gPj4gVGhpcyBxdWljay1uLWRpcnR5IHBhdGNoIGRlbW9uc3RhdGVzIHRoYXQg
YmFyZWJveAo+ID4+IGZyYW1lYnVmZmVyIGNvbnNvbGUgY2FuIGJlIGVhc2VseSByZWFsaXplZC4K
PiA+PiAKPiA+PiBJJ20gYXdhaXRpbmcgeW91ciBjb21tZW50cyEKPiA+IAo+ID4gVW5mb3J0dW5h
dGVseSByZWFsIGNvbnNvbGUgc3VwcG9ydCBpcyBub3QgdGhhdCBzaW1wbGUsIHdlIHdvdWxkIGhh
dmUgdG8KPiA+IHBhcnNlIEFOU0kgZXNjYXBlIHNlcXVlbmNlcyB1cCB0byBzb21lIHBvaW50IHRv
IG1ha2UgaXQgZ2VuZXJhbGx5IHVzYWJsZS4KPiA+IAo+ID4gSmVhbiBDaHJpc3RvcGhlIGhhcyBm
cmFtZWJ1ZmZlciBjb25zb2xlIHBhdGNoZXMsIGhlJ2xsIHByb2JhYmx5IGNvbW1lbnQKPiA+IG9u
IHRoaXMgb25lIGFzd2VsbC4KPiA+IFBlcnNvbmFsbHkgSSB3b3VsZCBiZSBmaW5lIHdpdGggeW91
ciBzaW1wbGUgYXBwcm9hY2ggdW50aWwgcmVhbCBjb25zb2xlCj4gPiBzdXBwb3J0IGFycml2ZXMu
Cj4gCj4gCj4gWWVzIEkgaGF2ZSB0aGUgZnJhbWVidWZmZXIgY29uc29sZSBzdXBwb3J0IGFuZCB5
ZXMgeW91IGRvIG5lZWQgdG8gaGF2ZSB0aGUgQU5TSSBzdXBwb3J0Cj4gYW5kIGl04oCZcyBub3Qg
dGhhdCBlYXN5Cj4gCgpBcmUgeW91ciBwbGFubmluZyBhZGQgeW91ciBmcmFtZWJ1ZmZlciBjb25z
b2xlIHBhdGNoZXMgdG8gbWFpbmxpbmUgYmFyZWJveD8KCldoYXQgaXMgYWJvdXQgeW91ciByYXNw
YmVycnktcGkgcGF0Y2hzZXJpZXM/CgotLcKgCkJlc3QgcmVnYXJkcywKwqAgQW50b255IFBhdmxv
dgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJv
eCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
