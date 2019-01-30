Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gozOK-0004UL-5Y
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 23:35:37 +0000
Received: by mail-wr1-x42e.google.com with SMTP id x10so1306060wrs.8
 for <barebox@lists.infradead.org>; Wed, 30 Jan 2019 15:35:35 -0800 (PST)
MIME-Version: 1.0
References: <19d6d395-5263-26f0-b940-abbe60a0fc1b@nexgo.de>
In-Reply-To: <19d6d395-5263-26f0-b940-abbe60a0fc1b@nexgo.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 30 Jan 2019 15:35:22 -0800
Message-ID: <CAHQ1cqG3YLtHG8TsNnEk2Wk4h1KEA1YBzzkXUXPTM6Ffe0mFQw@mail.gmail.com>
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
Subject: Re: bootm of 2019.01.0 doesn't load/start images
To: Kai Volkmar <kai.volkmar@nexgo.de>
Cc: Barebox List <barebox@lists.infradead.org>

T24gV2VkLCBKYW4gMzAsIDIwMTkgYXQgMTE6MjYgQU0gS2FpIFZvbGttYXIgPGthaS52b2xrbWFy
QG5leGdvLmRlPiB3cm90ZToKPgo+IEhpIGV2ZXJ5b25lLAo+Cj4gSSB0cmllZCB0byByZW5ldyB0
aGUgYmFyZWJveCBvZiBhbiBFREI5MzAyIGJ5IDIwMTkuMDEuMC4KPiBJIHVzZWQgdG8gbG9hZCB0
aGUgbmV3IGltYWdlIGJ5IGJvb3RtIGNvbW1hbmQgb2YgdGhlIG9sZCB2ZXJzaW9uIHdoaWNoCj4g
d29ya2VkIGZpbmUgaW4gYXQgbGVhc3QgMjAxOC4wMS4wOgo+Cj4gICAgIExvYWRpbmcgQVJNIGJh
cmVib3ggaW1hZ2UgJ2JhcmVib3guYmluJwo+ICAgICBjb21tYW5kbGluZTogPE5VTEw+Cj4gICAg
IGHDv2NoX251bWJlcjogNTM4Cj4KPiAyMDE5LjAxLjAncyBib290bSByZWNvZ25pemVzIHRoZSBm
aWxlIHR5cGUgYnV0IGZhaWxzIGFmdGVyd2FyZHMgd2l0aAo+Cj4gICAgIExvYWRpbmcgQVJNIGJh
cmVib3ggaW1hZ2UgJ2JhcmVib3guYmluJwo+ICAgICBoYW5kbGVyIGZhaWxlZCB3aXRoOiBGdW5j
dGlvbiBub3QgaW1wbGVtZW50ZWQKPgo+IC4KPgo+IEknbSBub3QgYWJsZSB0byBib290IHpJbWFn
ZXMgYnkgMjAxOS4wMS4wJ3MgYm9vdG0gYXMgd2VsbCB3aGljaCB3b3JrZWQKPiB3aXRoIDIwMTgu
MDEuMCBzbyBJIGFzc3VtZSBib290bSBpcyBicm9rZW4gYW55d2VyZSBiZXR3ZWVuIDIwMTguMDEu
MCBhbmQKPiAyMDE5LjAxLjAuCj4KPiBBbnl3YXksIGl0IGlzIHBvc3NpYmxlIHRvIGJvb3Qgeklt
YWdlcyBieSBib290ei4KPgo+IENvdWxkIHlvdSBwbGVhc2UgcG9pbnQgbWUgaW4gdGhlIHJpZ2h0
IGRpcmVjdGlvbiAtIEknbSBxdWl0ZSBuZXcgYXQgdGhpcwo+IGZpZWxkLCBtYXliZSBJJ20gbWlz
dGFraW5nPwo+Cj4gSSBjYW4gdHJ5IG90aGVyIHJlbGVhc2VzIGFzIHdlbGwgaWYgdGhpcyB3b3Vs
ZCBiZSBvZiBhbnkgaGVscC4KPgoKU2luY2UgeW91IGtub3cgYm90aCAiZ29vZCIgYW5kICJiYWQi
IHJldmlzaW9ucyBhbHJlYWR5LCBkb2luZyBnaXQKYmlzZWN0IHdvdWxkIHByb2JhYmx5IHNpbXBs
ZXN0LCBmYXN0ZXN0IGFuZCBtb3N0IHN0cmFpZ2h0Zm9yd2FyZCB3YXkKdG8gZmlndXJlIG91dCB3
aGljaCBjb21taXQgYnJva2UgdGhpbmdzIG9uIHlvdXIgYm9hcmQuIE9uY2Ugb2ZmZW5kaW5nCmNv
bW1pdCBpcyBrbm93IGl0IHNob3VsZCBiZSBtdWNoIGVhc2llciB0byBmaWd1cmUgb3V0IGlmIHRo
aXMgaXMgYQpnZW51aW5lIGJ1ZyBvciBzb21ldGhpbmcgZWxzZS4KCkhvcGUgdGhpcyBoZWxwcy4K
ClRoYW5rcywKQW5kcmV5IFNtaXJub3YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
