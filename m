Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYFdu-0008VR-89
 for barebox@lists.infradead.org; Thu, 10 Apr 2014 14:07:51 +0000
Received: from s326.sam-solutions.net ([217.21.35.11])
 by s250.sam-solutions.net with esmtps (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <U.Bely@sam-solutions.com>)
 id 1WYFdV-00006N-4X
 for barebox@lists.infradead.org; Thu, 10 Apr 2014 17:07:25 +0300
Message-ID: <5346A597.1010008@sam-solutions.net>
Date: Thu, 10 Apr 2014 17:07:19 +0300
From: Uladzimir Bely <u.bely@sam-solutions.net>
MIME-Version: 1.0
References: <20140410061620.GL27055@pengutronix.de>
In-Reply-To: <20140410061620.GL27055@pengutronix.de>
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
Subject: Re: Re: [PATCH] imx6: ocotp: Add On-Chip OTP registers write support
To: barebox@lists.infradead.org

SGVsbG8sIFNhc2hhLgoKSXQgc2VlbXMgSSd2ZSBmaXhlZCBhbGwgYWNjb3JkaW5nIHlvdXIgcmVt
YXJrcyBpbnN0ZWFkIG9mIG9uZSBxdWVzdGlvbi4KCjEwLjA0LjIwMTQgMDk6MTYsIFNhc2NoYSBI
YXVlciDQv9C40YjQtdGCOgo+IAo+IEFzIHN1Z2dlc3RlZCBpbiBteSBsYXN0IG1haWw6Cj4gCj4g
RG8gd2UgbmVlZCB0aGlzIHRvb2wgYXQgYWxsPyBXZSBjYW4gYWRkIGEgLm1hY2FkZHIgcGFyYW1l
dGVyIHRvIHRoZQo+IG9jb3RwIGRldmljZSB1c2luZyBkZXZfYWRkX3BhcmFtX21hYygpIChUaGlz
IGZ1bmN0aW9uIGlzIG5ldyBhbmQKPiBjdXJyZW50bHkgb25seSBpbiB0aGUgLW5leHQgYnJhbmNo
KQo+IAoKSG93IGNhbiB3ZSB0byB1c2Ugc3VjaCBwYXJhbWV0ZXJzIChldmVuIG5vdCBtYWNhZGRy
LCBqdXN0IGJvb2wpPwoKRm9yIGV4YW1wbGUsIEknbSB0cnlpbmcganVzdCB0byBhZGQgYm9vbCBw
YXJhbWV0ZXIgaW4gaW14X29jb3RwX3Byb2JlKCksCmZvciBhZGRpdGlvbmFsIEZVU0Ugd3JpdGUg
cHJvdGVjdGlvbjoKCj4gaWYgKElTX0VOQUJMRUQoQ09ORklHX0lNWF9PQ09UUF9XUklURSkpIHsK
PiAJZGV2X2FkZF9wYXJhbV9ib29sKGRldiwgInBlcm1hbmVudF93cml0ZV9lbmFibGUiLAo+IAkJ
TlVMTCwgTlVMTCwgJnByaXYtPndyaXRlX2VuYWJsZSwgTlVMTCk7Cj4gfQoKYW5kIGNoZWNrIHBy
aXYtPndyaXRlX2VuYWJsZSBpbnN0ZWFkIG9mIENPTkZJR19JTVhfT0NPVFBfV1JJVEUgaW4gd3Jp
dGUgZnVuY3Rpb24uCgpCdXQgaG93IHRvIHNldCBwZXJtYW5lbnRfd3JpdGVfZW5hYmxlIHRvIDEg
aW4gYmFyZWJveCBzaGVsbD8KQXMgSSB1bmRlcnN0YW5kLCBpdCBzaG91bGQgYmUgc29tZXRoaW5n
IGxpa2Ugb2NvdHAwLnBlcm1hbmVudF93cml0ZV9lbmFibGU9MSwKYnV0IEkgZG9uJ3Qgc2VlIGFu
eSBzaW1pbGFyLgoKSWYgSSBhZGQKCj4gYWRkX2dlbmVyaWNfZGV2aWNlKCJvY290cCIsIDAsIE5V
TEwsIE1YNl9PQ09UUF9CQVNFX0FERFIsIDB4MjAwMCwKPiAJCSAgIElPUkVTT1VSQ0VfTUVNLCBO
VUxMKTsKCnRvIGJvYXJkLmMsIEkgc2VlIHNvbWV0aGluZyBsaWtlIDIxYmMwMDAub2NvdHAud3Jp
dGVfZW5hYmxlPSBhdmFpbGFibGUsIGJ1dAoyMWJjMDAwLm9jb3RwLndyaXRlX2VuYWJsZT0xIG9y
IDIxYmMwMDAub2NvdHAud3JpdGVfZW5hYmxlPTAgZG9lc24ndCB3b3JrLApzYXlpbmcgIk5vIHN1
Y2ggZmlsZSBvciBkaXJlY3RvcnkiLgoKQWxzbywgYXMgSSB1bmRlcnN0YW5kLCBpdCdzIGFuIGlu
Y29ycmVjdCBpbiBmaWVsZCBvZiB1c2luZyBkZXZpY2V0cmVlLgoKCk9uZSBtb3JlIHF1ZXN0aW9u
OiBpcyB0aGVyZSBhbnkgd2F5IGluIGJhcmVib3ggc2hlbGwgdG8gd3JpdGUgdG8gY2hhcmFjdGVy
IGRldmljZQp3aXRoIG9mZnNldD8gRm9yIGV4YW1wbGUsIG9jb3RwdG9vbCBqdXN0IHdyaXRlcyAo
cmVhZHMpIDggYnl0ZXMgdG8gb2NvdHAgY2RldiB3aXRoIG9mZnNldAoweDIyKjQgKE1BQyBvZmZz
ZXQpLiBIb3cgdG8gZG8gaXQgZnJvbSBzaGVsbD8KCi0tIApXaXRoIHJlZ2FyZHMsClVsYWR6aW1p
ciBCZWx5LgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
