Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNc0K-0000iW-5v
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 13:18:45 +0000
MIME-Version: 1.0
Date: Wed, 30 Sep 2020 15:18:39 +0200
From: robin <robin@protonic.nl>
In-Reply-To: <a447a82ae7f8e45a9e86b39d1aa0383504f1cf75.camel@pengutronix.de>
References: <af59b1cfcfbb69990ddc84d9d454f44e@protonic.nl>
 <20200930073946.GG11648@pengutronix.de>
 <5ad7abf6ca49d58b928acceb49bac2225a0629f4.camel@pengutronix.de>
 <c88ecdbe8296e1e05b546115b2e3d21e@protonic.nl>
 <ec3d10ca7432771f49d1f4e14aaa5cae@protonic.nl>
 <a447a82ae7f8e45a9e86b39d1aa0383504f1cf75.camel@pengutronix.de>
Message-ID: <2345573d89ba39fcb96a2d182ff3e5aa@protonic.nl>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: robin@protonic.nl
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Using bootspec with RAUC and redundant partitions
To: =?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl

T24gMjAyMC0wOS0zMCAxMzo0OCwgRW5yaWNvIErDtnJucyB3cm90ZToKPiBIaSBSb2JpbiwKPiAK
PiBBbSBNaXR0d29jaCwgZGVuIDMwLjA5LjIwMjAsIDEzOjI2ICswMjAwIHNjaHJpZWIgcm9iaW46
Cj4+IEVucmljbywKPj4gCj4+ID4gT24gMjAyMC0wOS0zMCAxMDowOSwgRW5yaWNvIErDtnJucyB3
cm90ZToKPj4gPiA+IEhpIFJvYmluLAo+PiAuLgo+PiA+ID4gV2h5IHRoaXMgd291bGQgd29yayBh
bnl3YXkgaXMgYmVjYXVzZSBiYXJlYm94IGV4dGVuZHMgdGhlIGtlcm5lbAo+PiA+ID4gY29tbWFu
ZGxpbmUgd2l0aCB0aGUgcm9vdD0gZW50cmllcyByZXF1aXJlZCB0byBib290IHRoZSBrZXJuZWwg
ZnJvbQo+PiA+ID4gdGhhdCBzcGVjaWZpYyBwYXJ0aXRpb24gd2hlcmUgaXQgZGlkIHJlYWQgdGhl
IGVudHJ5IGZyb20uCj4+IAo+PiBSZS1yZWFkaW5nIHRoaXMsIGRvIHlvdSBtZWFuIHRoYXQgdGhl
IGJsc3BlYyBmaWxlcyBvbiB0aGUgcm9vdGZzCj4+IHBhcnRpdGlvbnMKPj4gc2hvdWxkIGNvbnRh
aW4gYSByb290PS9kZXYvbW1jYmxrKiBvZiB0aGUgcGFydGl0aW9uIHRoZXkgYXJlIG9uPyBBbmQK
Pj4gdGh1cwo+PiBzdGlsbCBjb250YWluIGR5bmFtaWMgKGluc3RhbGwgdGltZSBjb21wdXRlZCkg
Y29uZmlndXJhdGlvbj8KPiAKPiBubywgd2hhdCBJIG1lYW50IHdhcyB0aGUgb3Bwb3NpdGU6IFRv
IGV4Y2x1ZGUgdGhpcyBpbmZvcm1hdGlvbiBmcm9tIHRoZQo+IGJsc3BlYyBmaWxlLgoKYWNrLCB0
aGFuIHdlJ3JlIG9uIHRoZSBzYW1lIHBhZ2UgaGVyZSA7KQoKPj4gSWYgSSB1c2UgJ2Jvb3QgL21u
dC9tbWMyLjQvYm9vdCcgYmFyZWJveCBmaW5kcyB0aGUgc3BlYywga2VybmVsIGFuZCAKPj4gZHRi
Cj4+IGJ1dCBteSByb290PSBpcyBub3Qgc2V0IGluIHRoZSBrZXJuZWwgY29tbWFuZGxpbmUuCj4g
Cj4gQSBsaXR0bGUgZGV0YWlsIEkgZm9yZ290IHRvIG1lbnRpb24gaXMgdGhhdCBiYXJlYm94IHJl
cXVpcmVzIHlvdSB0bwo+IGhhdmUgYSBsaW5lICdsaW51eC1hcHBlbmRyb290IHRydWUnIGluIHRo
ZSBibHNwZWMgZmlsZS4KClRoYXRzIHdoYXQgSSBtaXNzZWQuIEEgY3VzdG9tIGJvb3RzcGVjIGtl
eSA6UAoKICBibHNwZWM6IGJvb3RpbmcgdmljdXQxLTEuMDUuODguMi4xIGZyb20gbW1jMgogIEFk
ZGluZyAicm9vdD1QQVJUVVVJRD1mMzQwYTBmNS0wNSIgdG8gS2VybmVsIGNvbW1hbmRsaW5lCgpO
b3cgd29ya3MgYXMgcHJldmlvdXNseSBkaXNjdXNzZWQsIHRoYW5rcyEKCkJlc3QgcmVnYXJkcywK
Um9iaW4gdmFuIGRlciBHcmFjaHQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
