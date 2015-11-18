Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyyqD-0001Wb-Pl
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 09:15:50 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B4C6FA004EE
 for <barebox@lists.infradead.org>; Wed, 18 Nov 2015 10:15:56 +0100 (CET)
Date: Wed, 18 Nov 2015 10:15:24 +0100
From: Stefan Christ <s.christ@phytec.de>
Message-ID: <20151118091524.GA2509@lws-christ>
References: <1447837725-21625-1-git-send-email-s.christ@phytec.de>
 <1447837725-21625-2-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
In-Reply-To: <1447837725-21625-2-git-send-email-s.christ@phytec.de>
Content-Disposition: inline
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
Subject: Re: [PATCH v2 2/3] net: fec: implement dtb property phy-reset-duration
To: barebox@lists.infradead.org

SGksCgp1cHMuIENoYW5nZSBpbmZvcm1hdGlvbiBpcyBtaXNzaW5nOgoKdjI6IFJlbW92ZSB1cHBl
ciBib3VuZCBjaGVjayBvZiByZXNldCBkdXJhdGlvbiBhbmQgdXBkYXRlIGNvbW1pdCBtZXNzYWdl
CgpNaXQgZnJldW5kbGljaGVuIEdyw7zDn2VuIC8gS2luZCByZWdhcmRzLAoJU3RlZmFuIENocmlz
dAoKT24gV2VkLCBOb3YgMTgsIDIwMTUgYXQgMTA6MDg6NDRBTSArMDEwMCwgU3RlZmFuIENocmlz
dCB3cm90ZToKPiBJbXBsZW1lbnQgZGV2aWNlIHRyZWUgcHJvcGVydHkgcGh5LXJlc2V0LWR1cmF0
aW9uIHRvIGFkanVzdCBsZW5ndGggb2YKPiBwaHkgcmVzZXQuCj4gCj4gU2lnbmVkLW9mZi1ieTog
U3RlZmFuIENocmlzdCA8cy5jaHJpc3RAcGh5dGVjLmRlPgo+IC0tLQo+ICBkcml2ZXJzL25ldC9m
ZWNfaW14LmMgfCA1ICsrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZmVjX2lteC5jIGIvZHJp
dmVycy9uZXQvZmVjX2lteC5jCj4gaW5kZXggZjE5ZDA0Ni4uNzAwODdhZCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL25ldC9mZWNfaW14LmMKPiArKysgYi9kcml2ZXJzL25ldC9mZWNfaW14LmMKPiBA
QCAtNjU0LDYgKzY1NCw3IEBAIHN0YXRpYyBpbnQgZmVjX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAq
ZGV2KQo+ICAJaW50IHJldDsKPiAgCWVudW0gZmVjX3R5cGUgdHlwZTsKPiAgCWludCBwaHlfcmVz
ZXQ7Cj4gKwl1MzIgbXNlYyA9IDE7Cj4gIAo+ICAJcmV0ID0gZGV2X2dldF9kcnZkYXRhKGRldiwg
KGNvbnN0IHZvaWQgKiopJnR5cGUpOwo+ICAJaWYgKHJldCkKPiBAQCAtNjg0LDYgKzY4NSw4IEBA
IHN0YXRpYyBpbnQgZmVjX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQo+ICAKPiAgCXBoeV9y
ZXNldCA9IG9mX2dldF9uYW1lZF9ncGlvKGRldi0+ZGV2aWNlX25vZGUsICJwaHktcmVzZXQtZ3Bp
b3MiLCAwKTsKPiAgCWlmIChncGlvX2lzX3ZhbGlkKHBoeV9yZXNldCkpIHsKPiArCQlvZl9wcm9w
ZXJ0eV9yZWFkX3UzMihkZXYtPmRldmljZV9ub2RlLCAicGh5LXJlc2V0LWR1cmF0aW9uIiwgJm1z
ZWMpOwo+ICsKPiAgCQlyZXQgPSBncGlvX3JlcXVlc3QocGh5X3Jlc2V0LCAicGh5LXJlc2V0Iik7
Cj4gIAkJaWYgKHJldCkKPiAgCQkJZ290byBlcnJfZnJlZTsKPiBAQCAtNjkyLDcgKzY5NSw3IEBA
IHN0YXRpYyBpbnQgZmVjX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQo+ICAJCWlmIChyZXQp
Cj4gIAkJCWdvdG8gZXJyX2ZyZWU7Cj4gIAo+IC0JCW1kZWxheSgxKTsKPiArCQltZGVsYXkobXNl
Yyk7Cj4gIAkJZ3Bpb19zZXRfdmFsdWUocGh5X3Jlc2V0LCAxKTsKPiAgCX0KPiAgCj4gLS0gCj4g
MS45LjEKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IGJhcmVib3ggbWFpbGluZyBsaXN0Cj4gYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1h
aWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
