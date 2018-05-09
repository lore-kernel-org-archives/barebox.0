Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGKmg-0004bJ-Rx
 for barebox@lists.infradead.org; Wed, 09 May 2018 08:49:16 +0000
Message-ID: <1525855742.17568.17.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 09 May 2018 10:49:02 +0200
In-Reply-To: <20180508212951.6446-26-andrew.smirnov@gmail.com>
References: <20180508212951.6446-1-andrew.smirnov@gmail.com>
 <20180508212951.6446-26-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 25/28] ARM: mmu: Use dma_inv_range() in
 dma_sync_single_for_cpu()
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

QW0gRGllbnN0YWcsIGRlbiAwOC4wNS4yMDE4LCAxNDoyOSAtMDcwMCBzY2hyaWViIEFuZHJleSBT
bWlybm92Ogo+IFRoZSBjb2RlIGluIHRoZSBpZiAoKSBzdGF0ZW1lbnQgaXMgaWRlbnRpY2FsIHRv
IGFscmVhZHkgZXhpc3RpbmcKPiBkbWFfaW52X3JhbmQoKS4gVXNlIGl0IGluc3RlYWQuCj4gCj4g
U2lnbmVkLW9mZi1ieTogQW5kcmV5IFNtaXJub3YgPGFuZHJldy5zbWlybm92QGdtYWlsLmNvbT4K
ClJldmlld2VkLWJ5OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KCj4gLS0t
Cj4gwqBhcmNoL2FybS9jcHUvbW11LmMgfCA3ICsrLS0tLS0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2NwdS9tbXUuYyBiL2FyY2gvYXJtL2NwdS9tbXUuYwo+IGluZGV4IGNlYjg1NGFjOC4uYjE0YTg2
OWFmIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2NwdS9tbXUuYwo+ICsrKyBiL2FyY2gvYXJtL2Nw
dS9tbXUuYwo+IEBAIC01NDgsMTEgKzU0OCw4IEBAIHZvaWQgZG1hX2ZyZWVfY29oZXJlbnQodm9p
ZCAqbWVtLCBkbWFfYWRkcl90IGRtYV9oYW5kbGUsIHNpemVfdCBzaXplKQo+IMKgdm9pZCBkbWFf
c3luY19zaW5nbGVfZm9yX2NwdShkbWFfYWRkcl90IGFkZHJlc3MsIHNpemVfdCBzaXplLAo+ID4g
wqAJCQnCoMKgwqDCoMKgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyKQo+IMKgewo+ID4gLQlp
ZiAoZGlyICE9IERNQV9UT19ERVZJQ0UpIHsKPiA+IC0JCWlmIChvdXRlcl9jYWNoZS5pbnZfcmFu
Z2UpCj4gPiAtCQkJb3V0ZXJfY2FjaGUuaW52X3JhbmdlKGFkZHJlc3MsIGFkZHJlc3MgKyBzaXpl
KTsKPiA+IC0JCV9fZG1hX2ludl9yYW5nZShhZGRyZXNzLCBhZGRyZXNzICsgc2l6ZSk7Cj4gPiAt
CX0KPiA+ICsJaWYgKGRpciAhPSBETUFfVE9fREVWSUNFKQo+ID4gKwkJZG1hX2ludl9yYW5nZShh
ZGRyZXNzLCBhZGRyZXNzICsgc2l6ZSk7Cj4gwqB9Cj4gwqAKPiDCoHZvaWQgZG1hX3N5bmNfc2lu
Z2xlX2Zvcl9kZXZpY2UoZG1hX2FkZHJfdCBhZGRyZXNzLCBzaXplX3Qgc2l6ZSwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBs
aXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
