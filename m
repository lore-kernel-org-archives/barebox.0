Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRSoF-0005YS-A2
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 20:14:11 +0000
Message-ID: <1380745018.14068.7.camel@tellur>
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 02 Oct 2013 22:16:58 +0200
In-Reply-To: <1380744254.7042.6.camel@polaris.local>
References: <1380742211-2731-1-git-send-email-jlu@pengutronix.de>
 <1380742211-2731-2-git-send-email-jlu@pengutronix.de>
 <1380743142.14068.2.camel@tellur> <1380744254.7042.6.camel@polaris.local>
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
Subject: Re: [PATCH 1/4] am33xx_generic: convert from switch to if/else
To: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

QW0gTWl0dHdvY2gsIGRlbiAwMi4xMC4yMDEzLCAyMjowNCArMDIwMCBzY2hyaWViIEphbiBMw7xi
YmU6Cj4gT24gV2VkLCAyMDEzLTEwLTAyIGF0IDIxOjQ1ICswMjAwLCBMdWNhcyBTdGFjaCB3cm90
ZTogCj4gPiBBbSBNaXR0d29jaCwgZGVuIDAyLjEwLjIwMTMsIDIxOjMwICswMjAwIHNjaHJpZWIg
SmFuIEx1ZWJiZToKPiA+ID4gVGhlIGZ1bmN0aW9uIGFtMzN4eF9nZXRfY3B1X3JldiBtYXkgYmUg
Y2FsbGVkIGJlZm9yZSBiYXJlYm94X2FybV9lbnRyeSgpLAo+ID4gPiBzbyB3ZSBuZWVkIHRvIGF2
b2lkIHN3aXRjaCBzdGF0ZW1lbnRzLiAKPiA+IAo+ID4gVWhtLCBjb3VsZCB5b3UgcGxlYXNlIGJl
IG1vcmUgdmVyYm9zZSBvbiBfd2h5XyB3ZSBuZWVkIHRvIGF2b2lkIHN3aXRjaAo+ID4gc3RhdGVt
ZW50cyBhdCB0aGlzIHN0YWdlPyBJIG1pZ2h0IGJlIHJ1bm5pbmcgaW50byB0aGUgc2FtZSBmYWls
dXJlIHdpdGgKPiA+IFRlZ3JhIGF0IHNvbWUgcG9pbnQgaWYgdGhlcmUncyBhIHJlYWwgaXNzdWUu
Cj4gCj4gSSBiZWxpZXZlIHRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlIHRhYmxlIGlzIGFjY2Vzc2Vk
IHVzaW5nIGFic29sdXRlCj4gYWRkcmVzc2VzLiBCZWZvcmUgdGhlIGNhbGwgdG8gYmFyZWJveF9h
cm1fZW50cnkoKSBiYXJlYm94IG1heSBiZSBydW5uaW5nCj4gYXQgYSBkaWZmZXJlbnQgYWRkcmVz
cy4KPiAKQWgsIHNvIGl0J3MgcHJvZHVjaW5nIGEganVtcCB0YWJsZSB3aXRoIGFic29sdXRlIG9m
ZnNldHMgZXZlbiBmb3IgdGhpcwpyYXRoZXIgdHJpdmlhbCBzd2l0Y2ggc3RhdGVtZW50PyBJIGNh
biBzZWUgaG93IHRoaXMgd291bGQgY2F1c2UgaXNzdWVzLgpIb3cgYWJvdXQgdXNpbmcgIi1mbm8t
anVtcC10YWJsZXMiIGZvciB0aGUgb2JqZWN0cyB0aGF0IGFyZSByZWZlcmVuY2VkCmluIHRoZSBl
YXJseSBzdGFydHVwIGNvZGU/IFRoaXMgbWF5IGFsbG93IHlvdSB0byBkcm9wIHRoaXMgY29kZQp3
b3JrYXJvdW5kLgoKUmVnYXJkcywKTHVjYXMKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YmFyZWJveAo=
