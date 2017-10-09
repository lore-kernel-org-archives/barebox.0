Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e1dOM-0004Mu-4F
 for barebox@lists.infradead.org; Mon, 09 Oct 2017 19:07:08 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon,  9 Oct 2017 21:06:24 +0200
Message-Id: <20171009190627.2486-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH v2 0/3] e1000: fix access to companion flash chip
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

SGVsbG8sCgp0aGlzIGlzIHYyIG9mIHRoZSBzZXJpZXMuIENvbXBhcmVkIHRvIChpbXBsaWNpdCkg
djEgSSB3b3JrZWQgaW4gQW5kcmV5J3MKZmVlZGJhY2sgYW5kIHVwZGF0ZWQgdGhlIGNvbW1pdCBs
b2dzLiBUaGUgdGhpcmQgcGF0Y2ggaXMgbm90IG1hcmtlZCBhcwpIQUNLIGFueSBtb3JlIChhbmQg
Z290IHNvbWUgcmVmb3JtYXR0aW5nKS4gSW4gdGhlIG1lYW4gdGltZSBJIGFsc28KdGVzdGVkIHN1
Y2Nlc3NmdWxseSB0aGUgd3JpdGUgc3VwcG9ydC4gRm9yIE5EQSByZWFzb25zIEkgZG9uJ3QgaGF2
ZQphY2Nlc3MgdG8gZmlybXdhcmUsIHNvIG1ha2luZyBmdWxsIHVzZSBvZiBhIGkyMTAgYWZ0ZXIg
Zmxhc2hpbmcgaXMgbm90CnRlc3RlZCB5ZXQuCgpFdmVuIHRob3VnaCBJIGNoYW5nZWQgYSBmZXcg
Yml0cyBpbiB0aGUgZmlyc3QgdHdvIHBhdGNoZXMsIEkgYWxyZWFkeQphZGRlZCB0aGUgYWNrcyBi
eSBBbmRyZXkgdGhhdCBJIGdvdCBmb3IgdjEuCgpCZXN0IHJlZ2FyZHMKVXdlCgpVd2UgS2xlaW5l
LUvDtm5pZyAoMyk6CiAgZTEwMDA6IGltcGxlbWVudCByZWdpc3RlciBtYXBwaW5nIGZvciBFMTAw
MF9GTFNXe0NUTCxEQVRBLENOVH0KICBlMTAwMDogaW1wbGVtZW50IHN1cHBvcnQgZm9yIHNtYWxs
ZXIgZmxhc2ggY2hpcHMKICBlMTAwMDogRG9uJ3QgcG9sbCBmb3IgRkxTV0NUTC5HTERPTkUgYmVm
b3JlIHN0YXJ0aW5nIGEgZmxhc2gKICAgIHRyYW5zYWN0aW9uCgogZHJpdmVycy9uZXQvZTEwMDAv
ZTEwMDAuaCAgfCAgOSArKystLS0tLS0KIGRyaXZlcnMvbmV0L2UxMDAwL2VlcHJvbS5jIHwgMjcg
KysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL25ldC9lMTAwMC9yZWdpby5jICB8
ICA5ICsrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAyOCBkZWxl
dGlvbnMoLSkKCi0tIAoyLjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
