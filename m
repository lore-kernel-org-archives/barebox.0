Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnN5b-0000y5-TM
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 10:20:34 +0000
Received: from player771.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 7B68DA788E
 for <barebox@lists.infradead.org>; Mon, 13 Mar 2017 11:20:05 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20170313082042.clsq2tqito7tt7h7@pengutronix.de>
Date: Mon, 13 Mar 2017 18:19:58 +0800
Message-Id: <FD96AE73-808A-45E0-AF81-86F03DD28BC7@jcrosoft.com>
References: <20170303152759.GF4120@mail.ovh.net>
 <20170309143840.GJ4120@mail.ovh.net>
 <20170313072442.qmtz4xvytj745tww@pengutronix.de>
 <20170313082042.clsq2tqito7tt7h7@pengutronix.de>
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
Subject: Re: [PATCH 0/2] efivarfs: rework the filesystem to make it human
 readable
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

Cj4gT24gMTMgTWFyIDIwMTcsIGF0IDQ6MjAgUE0sIE1pY2hhZWwgT2xicmljaCA8bS5vbGJyaWNo
QHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiAKPiBIaSwKPiAKPiBPbiBNb24sIE1hciAxMywgMjAx
NyBhdCAwODoyNDo0MkFNICswMTAwLCBTYXNjaGEgSGF1ZXIgd3JvdGU6Cj4+IE9uIFRodSwgTWFy
IDA5LCAyMDE3IGF0IDAzOjM4OjQwUE0gKzAxMDAsIEplYW4tQ2hyaXN0b3BoZSBQTEFHTklPTC1W
SUxMQVJEIHdyb3RlOgo+Pj4gCVNhc2NoYSBpcyB0aGlzIG9uZSBvaz8KPj4gCj4+IEkgYXNrZWQg
TWljaGFlbCB0byBoYXZlIGEgbG9vayBhdCB0aGlzIHNlcmllcywgc28gZmFyIGhlIGRpZG4ndCBm
aW5kCj4+IHRpbWUuCj4gCj4gSSdtIG5vdCBzdXJlIEkgbGlrZSBpdCB0aGlzIHdheS4gVGhlIG9s
ZCB3YXkgbWF0Y2hlcyB3aGF0IHRoZSBMaW51eCBrZXJuZWwKPiBkb2VzIHNvIGl0J3MgZmFtaWxp
YXIuIEFuZCB0aGUgbWl4IG9mIGd1aWRzIGFuZCAnbmFtZXMnIGlzIHJhdGhlcgo+IGNsdXR0ZXJl
ZCBiZWNhdXNlIHRoZXkgYXJlIG5vdCBncm91cGVkIHNlcGFyYXRlbHkuCndlIGNhbiBzcGxpdCB0
aGVtIGluIHN1YiBkaXJzCgovZWZpdmFycy9ieS1ndWlkLzxndWlkPi92YXIKCmFuZCBrZWVwIHRo
ZSBrbm93biBvbmUgaW4KCi9lZml2YXJzL0VmaS/igKYKL2VmaXZhcnMvYmFyZWJveC/igKYKL2Vm
aXZhcnMvc3lzdGVtZC/igKYKCmFzIHdlIHdpbGwgdXNlIGtub3duIGd1aWQgZm9yIG1vc3Qgb2Yg
dGhlIHRpbWUKCmFzIGRvZXMgbGludXggdG9vIG1vc3Qgb2YgdGhlIHRpbWUKCj4gTWF5YmUga2Vl
cCB0aGUgb2xkIHZlcnNpb24gYW5kIGFkZCBzb21ldGhpbmcgbGlrZSB0aGUgYnktbmFtZSBldGMu
IHN5bWxpbmtzCj4gdXNlZCBpbiB1ZGV2Ogo+IAo+IDxndWlkLWZvci1mb28+LWJhcgo+IDxzb21l
dGhpbmc+Cj4gIEVGSQo+ICAgIFsuLi5dCj4gIGZvbwo+ICAgIGJhciAtPiAuLi8uLi88Z3VpZC1m
b3ItZm9vPi1iYXIKCjxndWlkLWZvci1mb28+LWJhciBpcyB1biByZWFkYWJsZSAKCmFuZCB3ZSBu
ZWVkIHRvIHBhcnNlIGEgZmlsZW5hbWUgd2hpY2ggaXMgYSBwcm9uZSB0byBlcnJvciBldmVuIHdo
ZW4gY3JlYXRpbmcgbmV3IHZhcmlhYmxlCmFuZCB0b2RheSB3ZSBvbmx5IGFsbG93IHRvIGNyZWF0
ZSB2YXIgZm9yIGJhcmVib3ggZ3VpZCBpbiB0aGUgInVzZXIgc3BhY2XigJ0KU28gdGhpcyBpcyBl
YXNpZXIgdG8gaGFuZGxlCgphbmQgd2hlbiB5b3UgbHMgaXQgYXQgdGhlIGVuZCBpcyBoYXJkIHRv
IHJlYWQKClRoZSBlZml2YXJmcyBpcyBmb3IgdXNlciBub3QgQyBDb2RlIAoKVGhhdOKAmXMgd2h5
IEkgcHJlZmVyIHRvIGhhdmUgYSBkZXNpZ24gdGhhdCBpcyBlYXN5IHRvIHJlYWQKCkJlc3QgUmVn
YXJkcywKSi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
