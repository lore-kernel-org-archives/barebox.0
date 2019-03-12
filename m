Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3dwh-00021Q-1J
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 09:43:40 +0000
Message-ID: <1552383817.2453.25.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 12 Mar 2019 10:43:37 +0100
In-Reply-To: <20190312074525.6153-1-andrew.smirnov@gmail.com>
References: <20190312074525.6153-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/3] Earlycon command line option support
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

SGkgQW5kcmV5LAoKQW0gRGllbnN0YWcsIGRlbiAxMi4wMy4yMDE5LCAwMDo0NSAtMDcwMCBzY2hy
aWViIEFuZHJleSBTbWlybm92Ogo+IEV2ZXJ5b25lOgo+IAo+IFRoaXMgc21hbGwgc2VyaWVzIGlz
IHNvbWV0aGluZyBJIGNhbWUgdXAgd2l0aCB0byBhdm9pZCBoYXZpbmcgdG8gbG9vawo+IHVwIHRo
ZSBzeW50YXggYW5kIG1hbnVhbGx5IHNwZWNpZnkgZWFybHljb24ga2VybmVsIGNvbW1hbmQgbGlu
ZSBvcHRpb24KPiBldmVyeSB0aW1lIEkgbmVlZGVkIGl0LiBUaGUgc2VyaWVzIGlzIHB1cmVseSBv
cHRpb25hbCBpbiBjYXNlIEkgYW0gbm90Cj4gdGhlIG9ubHkgb25lIHdobyB0aGlua3MgdGhpcyBp
cyB1c2VmdWwuCj4gCj4gRmVlZGJhY2sgaXMgd2VsY29tZSEKPiAKPiBUaGFua3MsCj4gQW5kcmV5
IFNtaXJub3YKPiAKPiBBbmRyZXkgU21pcm5vdiAoMyk6Cj4gwqAgY29uc29sZTogQWRkIHBsdW1i
aW5nIHRvIGV4cG9zZSBlYXJseWNvbi9ib290Y29uc29sZSBwYXJhbWV0ZXIKPiDCoCBzZXJpYWw6
IGkuTVg6IEFkZCBjb2RlIHRvIGV4cG9ydCAiZWFybHljb24iIHNldHRpbmcKPiDCoCBzZXJpYWw6
IGxwdWFydDogQWRkIGNvZGUgdG8gZXhwb3J0ICJlYXJseWNvbiIgc2V0dGluZwo+IAo+IMKgRG9j
dW1lbnRhdGlvbi91c2VyL3ZhcmlhYmxlcy5yc3QgfMKgwqAxICsKPiDCoGNvbW1vbi9jb25zb2xl
LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfCAyNSArKysrKysrKysrKysrKysr
KysrKysrKysrCj4gwqBkcml2ZXJzL3NlcmlhbC9zZXJpYWxfaW14LmPCoMKgwqDCoMKgwqB8wqDC
oDMgKysrCj4gwqBkcml2ZXJzL3NlcmlhbC9zZXJpYWxfbHB1YXJ0LmPCoMKgwqB8wqDCoDEgKwo+
IMKgaW5jbHVkZS9jb25zb2xlLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHzCoMKg
MSArCj4gwqA1IGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKykKCkkgZG9uJ3QgdGhpbmsg
YW55IG9mIHRoaXMgaXMgbmVjZXNzYXJ5LiBGb3IgRFQgYmFzZWQgcGxhdGZvcm1zIGVhcmx5Y29u
CndpbGwgdXNlIHRoZSBjb25zb2xlIHNwZWNpZmllZCB2aWEgdGhlICJzdGRvdXQtcGF0aCIgcHJv
cGVydHksIHNvIGl0J3MKZW50aXJlbHkgc3VmZmljaWVudCB0byBhZGQgImVhcmx5Y29uIiB0byB0
aGUga2VybmVsIGNvbW1hbmQgbGluZSBhbmQKdGhlIGtlcm5lbCB3aWxsIGRvIHRoZSByaWdodCB0
aGluZy4gTm8gbmVlZCBmb3IgYW55IG1vcmUgZWxhYm9yYXRlCmtlcm5lbCBjb21tYW5kbGluZSBv
cHRpb25zLgoKUmVnYXJkcywKTHVjYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
