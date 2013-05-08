Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ua7oX-00078K-L1
 for barebox@lists.infradead.org; Wed, 08 May 2013 17:06:02 +0000
Date: Wed, 8 May 2013 19:05:33 +0200
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
Message-ID: <20130508190533.0c964611@e6520eb>
In-Reply-To: <20130508164158.GE1884@game.jcrosoft.org>
References: <1368030050-7989-1-git-send-email-eric@eukrea.com>
 <20130508164158.GE1884@game.jcrosoft.org>
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
Subject: Re: [PATCH] nand_base: fix to test for JCPV problem
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

TGUgV2VkLCA4IE1heSAyMDEzIDE4OjQxOjU4ICswMjAwLApKZWFuLUNocmlzdG9waGUgUExBR05J
T0wtVklMTEFSRCA8cGxhZ25pb2pAamNyb3NvZnQuY29tPiBhIMOpY3JpdCA6Cgo+IE9uIDE4OjIw
IFdlZCAwOCBNYXkgICAgICwgRXJpYyBCw6luYXJkIHdyb3RlOgo+ID4gU2lnbmVkLW9mZi1ieTog
RXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Cj4gCj4gYmV0dGVyIGJ1dCBhbiBvdGhlciBC
VUcKPiAKPiBCb2FyZDogQXRtZWwgYXQ5MXNhbTl4NS1lawo+IEFUOTE6IERldGVjdGVkIHNvYyB0
eXBlOiBhdDkxc2FtOXg1Cj4gQVQ5MTogRGV0ZWN0ZWQgc29jIHN1YnR5cGU6IGF0OTFzYW05eDI1
Cj4gQ2xvY2tzOiBDUFUgNDAwIE1IeiwgbWFzdGVyIDEzMyBNSHosIG1haW4gMTIuMDAwIE1Iego+
IG5ldGNvbnNvbGU6IHJlZ2lzdGVyZWQgYXMgY3MyCj4gQ006IFNBTTlYMjUtQ00gW0IyXSBmcm9t
IFJPTkVUSVgKPiBFSzogU0FNOXg1LUVLIFtCMF0gZnJvbSBGTEVYCj4gRE06IFNBTTl4NS1ETSBb
QjBdIGZyb20gRkxFWAo+IHNuOiAweDQwMTA0NjUsIHJldjogMHgxMDQyMQo+IGF0bWVsX25hbmQ6
IFVzZSBPbiBGbGFzaCBCQlQKPiBuYW5kOiBPTkZJIGZsYXNoIGRldGVjdGVkIC4uLiBuYW5kOiBu
byB2YWxpZCBPTkZJIHBhcmFtIHBhZ2UgZm91bmQKCk9rIHNvIHlvdXIgZmxhc2ggaGFzIHRoZSBP
TkZJIHN0cmluZyBidXQgbm90IHRoZSBwYXJhbSBwYWdlLCBzb21lIGh5bml4CmhhdmUgdGhhdCAu
Li4gd2hpY2ggaXMgcXVpdGUgc3RyYW5nZSBidXQgYWxyZWFkeSBoYW5kbGVkIGluIHRoZSBrZXJu
ZWwuCgo+IG5hbmQ6IE1hbnVmYWN0dXJlciBJRDogMHhhZCwgQ2hpcCBJRDogMHhkYSAoSHluaXgg
TkFORCAyNTZNaUIgMywzViA4LWJpdCksIHBhZ2Ugc2l6ZTogMCwgT09CIHNpemU6IDAKPiBhdG1l
bF9uYW5kIGF0bWVsX25hbmQwOiBJbml0aWFsaXplIFBNRUNDIHBhcmFtcywgY2FwOiAyLCBzZWN0
b3I6IDUxMgo+IG5hbmQ6IE5vIG9vYiBzY2hlbWUgZGVmaW5lZCBmb3Igb29ic2l6ZSAwCj4gQlVH
OiBmYWlsdXJlIGF0IC9vcHQvd29yay9iYXJlYm94L2RyaXZlcnMvbXRkL25hbmQvbmFuZF9iYXNl
LmM6MTQ4My9uYW5kX3NjYW5fdGFpbCgpIQo+IEJVRyEKCk9LIG5ldyB2ZXJzaW9uIHNlbnQuIFBs
ZWFzZSBzZW5kIG1lIHRoZSBib290bG9nIGFnYWluLgoKdGhhbmtzLApFcmljCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlz
dApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
