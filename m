Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WwRDN-0004Yh-Bo
 for barebox@lists.infradead.org; Mon, 16 Jun 2014 07:20:26 +0000
Message-ID: <539E9A90.4010808@atmel.com>
Date: Mon, 16 Jun 2014 15:19:44 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <CACqcpZDTj-XaPOyH+Twhku26eSa-S3p3xDOWszAQC7JKfOyfsA@mail.gmail.com>
 <539A5353.7090306@atmel.com>
 <CACqcpZCNBZ6he2OnqQcdT3dPoeP0nFqSmteHAGYyLKAtAoT=nw@mail.gmail.com>
 <539AF326.7010504@gmail.com>
In-Reply-To: <539AF326.7010504@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: atmel_nand pmecc on 8k page [RFC]
To: Matteo Fortini <matteo.fortini@gmail.com>, =?UTF-8?B?UmFwaGHDq2wgUG9n?= =?UTF-8?B?Z2k=?= <raphio98@gmail.com>
Cc: barebox@lists.infradead.org

SGkgTWF0dGVvLAoKT24gMDYvMTMvMjAxNCAwODo0OCBQTSwgTWF0dGVvIEZvcnRpbmkgd3JvdGU6
Cj4gSGkgYWxsLAo+IGdsYWQgeW91IGZvdW5kIG15IHBhdGNoIHVzZWZ1bC4gU2FzY2hhIHJlamVj
dGVkIGl0IGJlY2F1c2UgaGUgc2VlcyBpdAo+IG1vcmUgZml0IHRvIHNlcGFyYXRlIHRoZSBpbml0
aWFsaXphdGlvbiBvZiBzYW1hNWQzIGFuZCBzYW05IHNpbmNlIHRoZXkKPiBhcmUgcXVpdGUgZGlm
ZmVyZW50Lgo+Cj4gSSBzdGFydGVkLCBhcyBhZHZpc2VkIGJ5IFNhc2NoYSwgdG8gY3JlYXRlIGlu
dG8gc2FtOV9zbWMuYyB0aGUgZnVuY3Rpb24KPgo+IHZvaWQgc2FtYTVkM19zbWNfY29uZmlndXJl
KGludCBpZCwgaW50IGNzLCBzdHJ1Y3Qgc2FtYTVkM19zbWNfY29uZmlnCj4gKmNvbmZpZykKPgo+
IGJ1dCB0aGlzIGJyaW5ncyBvbiBzb21lIG90aGVyIGNoYW5nZXMgdG8ga2VlcCB0aGUgc2FtZSBz
dHJ1Y3R1cmUgb2YKPiBmdW5jdGlvbnMsICBpLmUuIHdlIHdvdWxkIG5lZWQgdG8gaW1wbGVtZW50
Cj4KPiBzdGF0aWMgdm9pZCBzYW1hNWQzX3NtY19jc19jb25maWd1cmUodm9pZCBfX2lvbWVtICpi
YXNlLCBzdHJ1Y3QKPiBzYW1hNWQzX3NtY19jb25maWcgKmNvbmZpZykKPgo+IGFuZCBhbGwgdGhl
IHJlbGF0ZWQgZnVuY3Rpb25zLCBzaW5jZSB0aGUgYXJndW1lbnQgY2hhbmdlcyBmcm9tIHN0cnVj
dAo+IHNhbTlfc21jX2NvbmZpZyAqIHRvIHN0cnVjdCBzYW1hNWQzX3NtY19jb25maWcgKgo+Cj4g
Tm93IEknbSBhc2tpbmcgeW91IGFsbCBmb3IgYSBjb21tZW50OiBzaG91bGQgd2UgZ28gYWhlYWQg
YW5kIGNyZWF0ZSBhCj4gbmV3IHNhbWE1ZDNfc21jLmMgZmlsZSB3aXRoIGFsbCB0aGUgZnVuY3Rp
b25zIChzb21lIHdpbGwgdW5mb3J0dW5hdGVseQo+IGJlIGEgZHVwbGljYXRlIG9mIHRob3NlIHBy
ZXNlbnQgaW4gc2FtOV9zbWMuYyksIG9yIHNob3VsZCBJIGRvIGEgcGFydGlhbAo+IGhhY2sgdG8g
aW5zZXJ0IHNhbWE1ZDMgc3BlY2lmaWMgZnVuY3Rpb25zIGludG8gc2FtOV9zbWMuYyAobGlrZSwg
Zm9yCj4gZXhhbXBsZSwgcGxheWluZyB3aXRoIGNvbmZpZyBzdHJ1Y3R1cmVzIHNvIHRoYXQgdGhl
IHNhbTkgb25lIGlzIGp1c3QgdGhlCj4gaGVhZCBvZiB0aGUgc2FtYTVkMyk/CgpJIHRoaW5rIHdl
J2QgYmV0dGVyIHRvIGNyZWF0ZSBhIG5ldyBzYW1hNWQzX3NtYy5jLiBUaGlzIHdpbGwgYmUgbW9y
ZSAKcmVhZGFibGUsIGFuZCBhbHNvIGJlbmVmaXQgZm9yIHRoZSBuZXcgY29taW5nIFNvQy4KCj4g
VGhhbmsgeW91IGluIGFkdmFuY2UgZm9yIHlvdXIgY29tbWVudHMsIEkgYXNrIFJhcGhhw6tsIHRv
IHdhaXQgdW50aWwgdGhpcwo+IHBhdGNoIGlzIHNldHRsZWQgdG8gc2VuZCBpbiBoaXMgY2hhbmdl
cy4gVGhleSB3aWxsIGJlIHZlcnkgdXNlZnVsIGZvcgo+IG1lLCB0b28gKEkgaGFkIHRvIGRlYWN0
aXZhdGUgUE1FQ0MgdG8gdXNlIG15IE5BTkQuLi4pCj4KPiBNCgpCZXN0IFJlZ2FyZHMsCkJvIFNo
ZW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
