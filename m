Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo4.mail-out.ovh.net ([178.33.251.8])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YH6iB-0005pO-D4
 for barebox@lists.infradead.org; Fri, 30 Jan 2015 08:13:56 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 6A11EFFA213
 for <barebox@lists.infradead.org>; Fri, 30 Jan 2015 09:13:29 +0100 (CET)
Date: Fri, 30 Jan 2015 09:13:26 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
Message-ID: <20150130091326.3a597054@e6520eb.localdomain>
In-Reply-To: <C03A4704-67BB-4EA6-8643-D79F9D14064D@jcrosoft.com>
References: <1422488254-18414-1-git-send-email-eric@eukrea.com>
 <C03A4704-67BB-4EA6-8643-D79F9D14064D@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] dhcp: fix request packet's requested IP option
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

TGUgRnJpLCAzMCBKYW4gMjAxNSAxNjowMTo0NiArMDgwMCwKSmVhbi1DaHJpc3RvcGhlIFBMQUdO
SU9MLVZJTExBUkQgPHBsYWduaW9qQGpjcm9zb2Z0LmNvbT4gYSDDqWNyaXQgOgoKPiAKPiA+IE9u
IEphbiAyOSwgMjAxNSwgYXQgNzozNyBBTSwgRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+
IHdyb3RlOgo+ID4gCj4gPiBJbiB0aGUgcmVxdWVzdCBwYWNrZXQsIHdlIGFyZSBzdXBwb3NlZCB0
byBjb3B5IHRoZSBJUCB0aGF0IHRoZSBESENQIHNlcnZlcgo+ID4gcHJvdmlkZWQgaW4gdGhlIG9m
ZmVyIHBhY2tldCBzbyB0aGF0IGRoY3BfZXh0ZW5kZWQgY2FuIGZpbGwgdGhlIG9wdGlvbiA1MC4K
PiA+IFRoZXJlIGlzIGFjdHVhbGx5IGFuIGVycm9yIGluIGJhcmVib3ggYXMgdGhlIHBvaW50ZXIg
dG8gdGhlIHBhY2tldCBjdXJyZW50bHkKPiA+IGJ1aWx0IGlzIHVzZWQgYXMgdGhlIHNvdXJjZSBp
bnN0ZWFkIG9mIHRoZSBwb2ludGVyIHRvIHRoZSBvZmZlciBwYWNrZXQuCj4gPiBXaXRoIHRoaXMg
cGF0Y2gsIGJhcmVib3ggbm93IHNlbmRzIGEgcmVxdWVzdCBwYWNrZXQgd2hpY2ggaW5jbHVkZXMg
dGhlIHJpZ2h0Cj4gPiByZXF1ZXN0ZWQgSVAgaW4gb3B0aW9uIDUwLgo+ID4gCj4gPiBTaWduZWQt
b2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KPiA+IC0tLQo+ID4gbmV0L2Ro
Y3AuYyB8IDQgKy0tLQo+ID4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0
aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvbmV0L2RoY3AuYyBiL25ldC9kaGNwLmMKPiA+
IGluZGV4IDk1NTFkNjAuLjc4NDQwZGQgMTAwNjQ0Cj4gPiAtLS0gYS9uZXQvZGhjcC5jCj4gPiAr
KysgYi9uZXQvZGhjcC5jCj4gPiBAQCAtNTc5LDcgKzU3OSw3IEBAIHN0YXRpYyB2b2lkIGRoY3Bf
c2VuZF9yZXF1ZXN0X3BhY2tldChzdHJ1Y3QgYm9vdHAgKmJwX29mZmVyKQo+ID4gCS8qCj4gPiAJ
ICogQ29weSBvcHRpb25zIGZyb20gT0ZGRVIgcGFja2V0IGlmIHByZXNlbnQKPiA+IAkgKi8KPiA+
IC0JbmV0X2NvcHlfaXAoJk9mZmVyZWRJUCwgJmJwLT5icF95aWFkZHIpOwo+ID4gKwluZXRfY29w
eV9pcCgmT2ZmZXJlZElQLCAmYnBfb2ZmZXItPmJwX3lpYWRkcik7Cj4gPiAJZXh0bGVuID0gZGhj
cF9leHRlbmRlZCgodTggKilicC0+YnBfdmVuZCwgREhDUF9SRVFVRVNULCBuZXRfZGhjcF9zZXJ2
ZXJfaXAsCj4gPiAJCQkJT2ZmZXJlZElQKTsKPiA+IAo+ID4gQEAgLTc0NSw5ICs3NDUsNyBAQCBz
dGF0aWMgaW50IGRvX2RoY3AoaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKPiA+IAlyZXQgPSBuZXRf
dWRwX2JpbmQoZGhjcF9jb24sIFBPUlRfQk9PVFBDKTsKPiA+IAlpZiAocmV0KQo+ID4gCQlnb3Rv
IG91dDE7Cj4gPiAtCj4gPiAJbmV0X3NldF9pcCgwKTsKPiA+IC0KPiAKPiBvbmUgZml4IGF0IGEg
dGltZQo+IAo+IEkgZG8gcHJlZmVyIHRoZSBlbXB0eSBpdCBtYWtlIHRoZSBjb2RlIG1vcmUgcmVh
ZGFibGUKPiAKdGhlbiByZWFkIHYyIDstKQoKRXJpYwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=
