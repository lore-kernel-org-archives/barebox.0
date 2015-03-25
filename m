Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YajkQ-0000yr-Jr
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 11:45:23 +0000
Received: from mail191.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 4351A1038113
 for <barebox@lists.infradead.org>; Wed, 25 Mar 2015 12:44:50 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150325102635.GD9742@pengutronix.de>
Date: Wed, 25 Mar 2015 19:44:43 +0800
Message-Id: <339AF302-AF56-4794-92B7-0022D3FEEAE9@jcrosoft.com>
References: <20150324130035.GB8125@ns203013.ovh.net>
 <20150325102635.GD9742@pengutronix.de>
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
Subject: Re: [PATCH 0/7 v2] digest: allow multiple implementation of digest
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Cj4gT24gTWFyIDI1LCAyMDE1LCBhdCA2OjI2IFBNLCBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+IAo+IE9uIFR1ZSwgTWFyIDI0LCAyMDE1IGF0IDAyOjAwOjM1
UE0gKzAxMDAsIEplYW4tQ2hyaXN0b3BoZSBQTEFHTklPTC1WSUxMQVJEIHdyb3RlOgo+PiBIaSwK
Pj4gCj4+IAlUaGUgZm9sbG93aW5nIHNlcmllIGFsbG93IHlvdSB0byBoYXZlIG11bHRpcGxlIGRy
aXZlciBmb3IKPj4gCXRoZSBkaWdlc3QuCj4+IAo+PiAJVGhpcyBhbHNvIHN3aXRjaCB0aGUgc2hh
MSBpbXBsZW1lbnRhdGlvbiB0byB0aGUga2VybmVsIG9uZSBhbmQKPj4gCWFkZCB0aGUgYXJtdjQg
YXNtIGltcGxlbWVudHRpb24gdGhhdCBzYXZlIG5lYXJseSA2S2lCIGluIGEgemJhcmVib3gKPj4g
CWx6by4KPj4gCj4+IAo+PiB2MjoKPj4gCXN3aXRjaCBzaGEyNTYgYW5kIHNoYTUxMiB0byBsaW51
eCBpbXBsZW1lbnRhdGlvbgo+PiAJYWRkIGFybSBzaGEyNTYgYXNtIGltcGxlbWVudGF0aW9uCj4+
IAo+PiBUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDUyZDRhMDMyMTQwNWI3NTI1
NDIyZjA0ZmZmYmU3ZjMxOGM5YzVhODg6Cj4+IAo+PiAgTWVyZ2UgYnJhbmNoICdmb3ItbmV4dC9z
dGF0ZScgaW50byBuZXh0ICgyMDE1LTAzLTE5IDA3OjU1OjU5ICswMTAwKQo+PiAKPj4gYXJlIGF2
YWlsYWJsZSBpbiB0aGUgZ2l0IHJlcG9zaXRvcnkgYXQ6Cj4+IAo+PiAgZ2l0Oi8vZ2l0Lmpjcm9z
b2Z0Lm9yZy9iYXJlYm94LmdpdCBkZWxpdmVyeS9zaGExCj4+IAo+PiBmb3IgeW91IHRvIGZldGNo
IGNoYW5nZXMgdXAgdG8gNmJlYmU2MmY0YjgyOGYwYjg1MzM0YjhhOGExODllOGE4NDg2NDkzNToK
Pj4gCj4+ICBhcm06IGNyeXB0bzogYWRkIHNoYTI1NiBhc3NlbWJseSBzdXBwb3J0ICgyMDE1LTAz
LTI0IDE3OjE4OjU1ICswODAwKQo+IAo+IEV4Y2VwdCBmb3IgdGhlIG9uZSBjb21tZW50IEkgbWFk
ZSB0aGUgc2VyaWVzIGxvb2tzIGZpbmUuCgpJIGZvdW5kIGEgYnVnIGluIHRoZSBzaGEyNTYgYXNt
IGNvZGUgd2UgZGlzY3VzcyBpdCBvbiB0aGUgYXJtIE1MIHdpdGggYSBmaXgKSeKAmWxsIGludGVn
cmF0ZSBpdAoKYW5kIEkgZm91bmQgYW4gb3RoZXIgYnVnIHRoYXQgdGhlIGhtYWMgd2lsbCByZWdp
c3RlciBtdWx0aXBsZSBpbnN0YW5jZSBvZiBpdHNlbGYKZm9yIGVhY2ggc2hheHh4IGFsZ28sIGJ1
dCB3aWxsIGFsd2F5cyB1c2UgdGhlIGJlc3Qgc2hheHh4IGF0IHJ1bnRpbWUKClNvIGl04oCZbGwg
c2VuZCBhIHYzIGZvciB0aG9zZSBmaXgKCkJlc3QgUmVnYXJkcywKSi4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=
