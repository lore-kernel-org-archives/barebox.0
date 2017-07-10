Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUUc8-0001iA-Sy
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 09:04:21 +0000
Message-ID: <1499677434.2924.7.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Jul 2017 11:03:54 +0200
In-Reply-To: <20170706180112.32540-1-u.kleine-koenig@pengutronix.de>
References: <20170706180112.32540-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] crypto: digest: Fix digesting over memory chunks > 4096
 bytes
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

QW0gRG9ubmVyc3RhZywgZGVuIDA2LjA3LjIwMTcsIDIwOjAxICswMjAwIHNjaHJpZWIgVXdlIEts
ZWluZS1Lw7ZuaWc6Cj4gVGhlcmUgYXJlIHR3byBkaWZmZXJlbnQgY2FzZXMgdGhhdCBhcmUgaGFu
ZGxlZCBpbiBkaWdlc3RfZmlsZV93aW5kb3c6Cj4gCj4gIGEpIHRoZSBmaWxlIHRvIGRpZ2VzdCBp
cyBtZW1tYXBwYWJsZSAoZS5nLiAvZGV2L21lbSkKPiAgYikgaXQgaXNuJ3QgKGUuZy4gZmlsZXMg
aW4gLykKPiAKPiBJbiBib3RoIGNhc2VzIGEgZmlsZSBpcyBkaWdlc3RlZCBpbiBodW5rcyBvZiAo
dXAgdG8pIDQwOTYgYnl0ZXMuIEFmdGVyCj4gZWFjaCBodW5rIGluIGIpIHRoZSBidWZmZXIgdGhh
dCBpcyBmZWQgdG8gZGlnZXN0X3VwZGF0ZSgpIGlzIHRoZW4KPiBvdmVyd3JpdHRlbiB1c2luZyBy
ZWFkKCkgdG8gZ2V0IHRoZSBuZXh0IGh1bmsgdG8gZGlnZXN0LiBJbiBjYXNlIGEpCj4gaG93ZXZl
ciBpdCB3YXMgZm9yZ290dGVuIHRvIHN0ZXAgZm9yd2FyZCBpbiB0aGUgYnVmZmVyIGFuZCBpbnN0
ZWFkIHRoZQo+IHNhbWUgZGF0YSB3YXMgaGFuZGVkIHRvIGRpZ2VzdF91cGRhdGUoKSBhZ2FpbiBh
bmQgYWdhaW4uCj4gCj4gU28gdG8gZml4IHRoYXQgaW5jcmVhc2UgYnVmZmVyIGJ5IHRoZSBudW1i
ZXIgb2YgYnl0ZXMgYWxyZWFkeSBkaWdlc3RlZAo+IGZvciBjYXNlIGEpIHdoaWNoIGlzIGNoYXJh
Y3Rlcml6ZWQgYnkgZmxhZ3MgPT0gMC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvD
tm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+IEhlbGxvLAo+IAo+
IHRoaXMgaXMgdGhlIG9idmlvdXMgYW5kIG1pbmltYWwgcGF0Y2ggdG8gZml4IHRoaXMgaXNzdWUu
IE1heWJlIGl0IGlzCj4gd29ydGggdG8gc2ltcGxpZnkgdGhlIGZ1bmN0aW9uIGJ5IHNwbGl0dGlu
ZyBpdCBpbiB0d28gd2hlcmUgZWFjaCBvbmUKPiBoYW5kbGVzIG9uZSBvZiB0aGUgY2FzZXMgYWJv
dmUuCgpZZXMsIG1ha2luZyB0aGlzIGxlc3MgY29uZnVzaW5nIHRvIHRoZSBjYXN1YWwgcmVhZGVy
IG9mIHRoZSBjb2RlIHNlZW1zCmxpa2UgYSBnb29kIGlkZWEuIEkndmUgYXBwbGllZCB0aGlzIG1p
bmltYWwgZml4IGZvciBtYXN0ZXIuCgpSZWdhcmRzLApMdWNhcwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
