Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x233.google.com ([2a00:1450:400c:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YJ2WZ-0004V4-CH
 for barebox@lists.infradead.org; Wed, 04 Feb 2015 16:09:56 +0000
Received: by mail-wi0-f179.google.com with SMTP id l15so4750550wiw.0
 for <barebox@lists.infradead.org>; Wed, 04 Feb 2015 08:09:33 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1423060756.4050.78.camel@pengutronix.de>
References: <1422956739-2957-1-git-send-email-yamada.m@jp.panasonic.com>
 <1423060756.4050.78.camel@pengutronix.de>
Date: Thu, 5 Feb 2015 01:09:33 +0900
Message-ID: <CAMhH57TJPFVBepWVpMPON2MaYyyBtqWz4HD+FMj76qYwO-eRnQ@mail.gmail.com>
From: Masahiro YAMADA <yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH] fixup! defaultenv: generate force-built-in (zero)
 environment file
To: =?UTF-8?Q?Jan_L=C3=BCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

SGkgSmFuLAoKCjIwMTUtMDItMDQgMjM6MzkgR01UKzA5OjAwIEphbiBMw7xiYmUgPGpsdUBwZW5n
dXRyb25peC5kZT46Cj4gT24gRGksIDIwMTUtMDItMDMgYXQgMTg6NDUgKzA5MDAsIE1hc2FoaXJv
IFlhbWFkYSB3cm90ZToKPj4gV2l0aG91dCB0aGlzLCBvdXQtb2YtdHJlZSBidWlsZCAoTz1vcHRp
b24pIGZhaWxzLgo+Pgo+PiBkaWZmIC0tZ2l0IGEvZGVmYXVsdGVudi9NYWtlZmlsZSBiL2RlZmF1
bHRlbnYvTWFrZWZpbGUKPj4gaW5kZXggOGEwMDFlYy4uMzNlMGVjZSAxMDA2NDQKPj4gLS0tIGEv
ZGVmYXVsdGVudi9NYWtlZmlsZQo+PiArKysgYi9kZWZhdWx0ZW52L01ha2VmaWxlCj4+IEBAIC0y
NCw3ICsyNCw3IEBAICQob2JqKS9iYXJlYm94X2RlZmF1bHRfZW52Lmg6ICQob2JqKS9iYXJlYm94
X2RlZmF1bHRfZW52JChERUZBVUxUX0NPTVBSRVNTSU9OX1NVCj4+ICAgICAgICQoY2FsbCBpZl9j
aGFuZ2VkLGVudl9oKQo+Pgo+PiAgcXVpZXRfY21kX2Vudl96ZXJvID0gRU5WWiAgICAkQAo+PiAt
Y21kX2Vudl96ZXJvID0gKCQoc3JjdHJlZSkvc2NyaXB0cy9iYXJlYm94ZW52IC16ICQoQ09ORklH
X0RFRkFVTFRfRU5WSVJPTk1FTlRfUEFUSCkgJEApCj4+ICtjbWRfZW52X3plcm8gPSAoJChvYmp0
cmVlKS9zY3JpcHRzL2JhcmVib3hlbnYgLXogJChDT05GSUdfREVGQVVMVF9FTlZJUk9OTUVOVF9Q
QVRIKSAkQCkKPgo+IEkgYWRhcHRlZCB0aGlzIGZyb20gdGhlIHNhbWUgZmlsZSBhIGZldyBsaW5l
cyBhYm92ZToKPiBxdWlldF9jbWRfZW52X2RlZmF1bHQgPSBFTlYgICAgICRACj4gY21kX2Vudl9k
ZWZhdWx0ID0gKCQoc3JjdHJlZSkvc2NyaXB0cy9nZW5lbnYgJChzcmN0cmVlKSAkKG9ianRyZWUp
ICRAICQoQ09ORklHX0RFRkFVTFRfRU5WSVJPTk1FTlRfUEFUSCkpCj4KPiBXaHkgZGlkbid0IHRo
aXMgZmFpbCBmb3IgeW91cj8KPgoKc2NyaXB0cy9nZXRlbnYgaXMgYSBzaGVsbCBzY3JpcHQuCkl0
IHJlc2lkZXMgaW4gdGhlIHNvdXJjZSBkaXJlY3RvcnkuCgoKT24gdGhlIG90aGVyIGhhbmQsIHNj
cmlwdHMvYmFyZWJveGVudiBpcyBhIEMgcHJvZ3JhbQp0aGF0IGlzIGNvbXBpbGVkIGZyb20gYmFy
ZWJveGVudi5jLgoKClRoYXQncyB0aGUgZGlmZmVyZW5jZS4KCgoKLS0gCkJlc3QgUmVnYXJkcwpN
YXNhaGlybyBZYW1hZGEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
