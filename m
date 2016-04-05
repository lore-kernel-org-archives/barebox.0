Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22e.google.com ([2607:f8b0:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1anSxC-00059y-OX
 for barebox@lists.infradead.org; Tue, 05 Apr 2016 15:31:43 +0000
Received: by mail-vk0-x22e.google.com with SMTP id c4so22317302vkb.3
 for <barebox@lists.infradead.org>; Tue, 05 Apr 2016 08:31:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160405122319.GF10108@pengutronix.de>
Date: Tue, 5 Apr 2016 17:31:21 +0200
Message-ID: <CABDcavbZzU2=AbnRKYvoi1JJW95QHDHmc1_UHeSFRvqW-Guq7w@mail.gmail.com>
From: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
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
Subject: Re: Scrolling issues in edit command
References: <alpine.DEB.2.10.1604051131350.3483@9VTHT2J-D520>
 <CABDcavY5+W7wQv19UiSGJ1-+-V4Mw4Trv8NsCCGAdWNgCPofbQ@mail.gmail.com>
 <20160405122319.GF10108@pengutronix.de>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Rolf Evers-Fischer <embedded24@evers-fischer.de>

SGVsbG8sCgoyMDE2LTA0LTA1IDE0OjIzIEdNVCswMjowMCBVd2UgS2xlaW5lLUvDtm5pZyA8dS5r
bGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPjoKPiBIZWxsbywKPgo+IE9uIFR1ZSwgQXByIDA1
LCAyMDE2IGF0IDAxOjAxOjAyUE0gKzAyMDAsIEd1aWxsZXJtbyBSb2RyaWd1ZXogR2FyY2lhIHdy
b3RlOgo+PiBIb3dldmVyIGlmIHRoZXJlIGFyZSBvdGhlciBpc3N1ZXMgSSB3b3VsZCBhbHNvIGxp
a2UgdG8gZmluZCBvdXQuIElmCj4+IHlvdSB3b3VsZCBsaWtlIHRvIHN1Z2dlc3QgYW55IG5ldyB0
ZXN0cyBwbGVhc2UgbGV0IG1lIGtub3cgYW5kIEknbGwgYmUKPj4gaGFwcHkgdG8gdHJ5IHRoZW0g
aGVyZS4KPiBUaGVyZSBhcmUgQU5TSSBjb250cm9sIHNlcXVlbmNlcyBmb3Igc2Nyb2xsaW5nLCB0
b28uIEkgZG9uJ3Qga25vdyBpZgo+IHRoZXkgYXJlIHVzZWQsIGJ1dCBpZiB0aGV5IHdlcmUgaXQg
d291bGQgZ3JlYXRseSByZWR1Y2UgdGhlIG5lZWRlZAo+IGJhbmR3aWR0aC4KClRoZSBBTlNJIGNv
bnRyb2wgc2VxdWVuY2VzIGFyZSBkaXNhYmxlZCBieSBkZWZhdWx0LCBidXQgdGhleSBhcmUgdXNl
ZAppZiB0aGUgY29tbWFuZCBpcyBpbnZva2VkIGFzICJzZWRpdCIgaW5zdGVhZCBvZiAiZWRpdCIu
CgpXaGVuIHRoZSBjb21tYW5kIGlzIGludm9rZWQgYXMgInNlZGl0IiB0aGUgc2Nyb2xsaW5nIHBy
b2JsZW0gaXMgZ29uZS4KCkkgZ3Vlc3MgdGhpcyBtb3JlIG9yIGxlc3Mgc3VwcG9ydHMgdGhlIGh5
cG90aGVzaXMgdGhhdCB0aGUgcHJvYmxlbQpjb3VsZCBiZSBjYXVzZWQgYnkgbG9zaW5nIGluY29t
aW5nIGNoYXJhY3RlcnMgZHVlIHRvIHRoZSBsYWNrIG9mIEZJRk9zCmluIHRoaXMgcG9ydCArIHRo
ZSByZXBhaW50aW5nIHBlcmZvcm1lZCBieSAiZWRpdCIuIElmIHRoaXMgc291bmRzCnJlYXNvbmFi
bGUgdGhlbiBJIGd1ZXNzIHRoZXJlJ3Mgbm90IG11Y2ggbW9yZSB0aGF0IGNhbiBiZSBkb25lIGhl
cmUuIEkKanVzdCB3YW50ZWQgdG8gbWFrZSBzdWVyZSB0aGVyZSB3ZXJlIG5vIG90aGVyIHVuZGVy
bHlpbmcgcHJvYmxlbXMuCgpUaGFuayB5b3UgYWxsIGZvciB0aGUgZmVlZGJhY2sgYW5kIGhlbHAs
CgpHdWlsbGVybW8gUm9kcmlndWV6IEdhcmNpYQpndWlsbGUucm9kcmlndWV6QGdtYWlsLmNvbQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
