Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5wok-0002cb-Hk
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 11:17:32 +0000
Date: Thu, 14 Feb 2013 12:17:16 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
Message-ID: <20130214121716.1f3ef4f7@e6520eb>
In-Reply-To: <511CB82E.9030105@free-electrons.com>
References: <1360773918-10663-1-git-send-email-maxime.ripard@free-electrons.com>
 <1360773918-10663-2-git-send-email-maxime.ripard@free-electrons.com>
 <201302140916.36347.jbe@pengutronix.de>
 <511CB82E.9030105@free-electrons.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] cfa-10036: Use the second MMC partition to store
 the environment
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>, Brian Lilly <brian@crystalfontz.com>

TGUgVGh1LCAxNCBGZWIgMjAxMyAxMToxMDo1NCArMDEwMCwKTWF4aW1lIFJpcGFyZCA8bWF4aW1l
LnJpcGFyZEBmcmVlLWVsZWN0cm9ucy5jb20+IGEgw6ljcml0IDoKCj4gSGkgSnVlcmdlbiwKPiAK
PiBMZSAxNC8wMi8yMDEzIDA5OjE2LCBKdWVyZ2VuIEJlaXNlcnQgYSDDqWNyaXQgOgo+ID4gTWF4
aW1lIFJpcGFyZCB3cm90ZToKPiA+PiBTaW5jZSB0aGUgb25seSBzdG9yYWdlIG1lZGl1bSBvbiB0
aGUgY2ZhLTEwMDM2IGlzIHRoZSBNTUMgY2FyZCwgd2UgbmVlZAo+ID4+IHRvIGhhdmUgYSByZWdp
c3RlcmVkIGVudmlyb25tZW50IHBhcnRpdGlvbiBvbiBpdCBpZiB3ZSB3YW50IHRvIGJlIGFibGUK
PiA+PiB0byBtb2RpZnkgYXQgcnVudGltZS4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IE1heGlt
ZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAZnJlZS1lbGVjdHJvbnMuY29tPgo+ID4+IC0tLQo+ID4+
ICBhcmNoL2FybS9ib2FyZHMvY3J5c3RhbGZvbnR6LWNmYTEwMDM2L2NmYTEwMDM2LmMgfCAgIDQ0
Cj4gPj4gKysrKysrKysrKysrKysrKysrKysrLSAxIGZpbGUgY2hhbmdlZCwgNDMgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJk
cy9jcnlzdGFsZm9udHotY2ZhMTAwMzYvY2ZhMTAwMzYuYyBiL2FyY2gvYXJtL2JvYXJkcy9jcnlz
dGFsZm9udHotY2ZhMTAwMzYvY2ZhMTAwMzYuYwo+ID4+IGluZGV4IGI1OWRiYWIuLjE4MjFiMTAg
MTAwNjQ0IAo+ID4+IC0tLSBhL2FyY2gvYXJtL2JvYXJkcy9jcnlzdGFsZm9udHotY2ZhMTAwMzYv
Y2ZhMTAwMzYuYwo+ID4+ICsrKyBiL2FyY2gvYXJtL2JvYXJkcy9jcnlzdGFsZm9udHotY2ZhMTAw
MzYvY2ZhMTAwMzYuYwo+ID4+IEBAIC05Nyw5ICs5Nyw0NiBAQCBzdGF0aWMgaW50IGNmYTEwMDM2
X21lbV9pbml0KHZvaWQpCj4gPj4gIH0KPiA+PiAgbWVtX2luaXRjYWxsKGNmYTEwMDM2X21lbV9p
bml0KTsKPiA+Pgo+ID4+ICsvKioKPiA+PiArICogVHJ5IHRvIHJlZ2lzdGVyIGFuIGVudmlyb25t
ZW50IHN0b3JhZ2Ugb24gdGhlIGF0dGFjaGVkIE1DSSBjYXJkCj4gPj4gKyAqIEByZXR1cm4gMCBv
biBzdWNjZXNzCj4gPj4gKyAqCj4gPj4gKyAqIFdlIHJlbHkgb24gdGhlIGV4aXN0ZW5jZSBvZiBh
IHVzYWJsZSBTRCBjYXJkLCBhbHJlYWR5IGF0dGFjaGVkIHRvCj4gPj4gKyAqIG91ciBzeXN0ZW0s
IHRvIGdldCBzb21ldGhpbmcgbGlrZSBhIHBlcnNpc3RlbnQgbWVtb3J5IGZvciBvdXIgZW52aXJv
bm1lbnQuCj4gPj4gKyAqIElmIHRoaXMgU0QgY2FyZCBpcyBhbHNvIHRoZSBib290IG1lZGlhLCB3
ZSBjYW4gdXNlIHRoZSBzZWNvbmQgcGFydGl0aW9uCj4gPj4gKyAqIGZvciBvdXIgZW52aXJvbm1l
bnQgcHVycG9zZSAoaWYgcHJlc2VudCEpLiAKPiA+PiArICovCj4gPj4gK3N0YXRpYyBpbnQgcmVn
aXN0ZXJfcGVyc2lzdGFudF9lbnZpcm9ubWVudCh2b2lkKQo+ID4gCj4gPiByZWdpc3Rlcl9wZXJz
aXN0KmUqbnRfZW52aXJvbm1lbnQKPiA+IAo+ID4gU2VlbXMgYSBjb3B5IGZyb20gbXkgdHlwbyBp
biB0aGUgZmFsY29ud2luZy4gSSByZWFsbHkgc2hvdWxkIGZpeCBpdCA6KSkKPiAKPiBPb3BzIDop
Cj4gSSB3aWxsIGZpeCBpdCwgaXQgd2lsbCBwcm9iYWJseSBlbmQgdXAgaW4gYSBjb21tb24gZnVu
Y3Rpb24gYW55d2F5Lgo+IApGV0lXIDogSSBoYXZlIGNvb2tlZCBhIHBhdGNoIGZvciB0aGlzIGNv
bW1vbiBmdW5jdGlvbiwgSSB3aWxsIGJlCmFibGUgdG8gc2VuZCBpdCB0b25pZ2h0LgoKRXJpYwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
