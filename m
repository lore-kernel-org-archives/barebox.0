Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x230.google.com ([2a00:1450:400c:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEvqj-0001B4-AK
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 07:41:29 +0000
Received: by mail-wg0-f48.google.com with SMTP id x13so2149936wgg.19
 for <barebox@lists.infradead.org>; Wed, 06 Aug 2014 00:41:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <53E1DA5F.9030602@atmel.com>
References: <1407141112-3868-1-git-send-email-poggi.raph@gmail.com>
 <53DF4E49.3040501@atmel.com>
 <CACqcpZDrqaMNRj5NVmLgvoP1UYwZf03iZsAX32qspwgeZiRhig@mail.gmail.com>
 <53DF5293.2010305@atmel.com> <53E07FE4.6070107@atmel.com>
 <CACqcpZDNfpYJkadn7iFbXor=UUVE-f_+TkcdY647V+hRZsoFDg@mail.gmail.com>
 <CACqcpZBSryx6QP=f1MuSJn5QpQC68bMg48ScVY5Fjn3Mq8nupg@mail.gmail.com>
 <53E17FAF.9010408@atmel.com>
 <CACqcpZDkUpgt-8BuEaXsFJ5jfHn6iXMizRGpNwg4MBthxAfrTQ@mail.gmail.com>
 <53E1DA5F.9030602@atmel.com>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <poggi.raph@gmail.com>
Date: Wed, 6 Aug 2014 09:40:26 +0200
Message-ID: <CACqcpZDMzdwvJ=s1=N_xri02YoN9t4jAHj6dQQwwUEAxz0Dwpg@mail.gmail.com>
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
Subject: Re: [PATCH V2 0/2] Add device tree support of i2c Atmel driver
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

QWxsIHJpZ2h0LCB0aGFua3MuCgpSYXBoYcOrbCBQb2dnaQoKMjAxNC0wOC0wNiA5OjMzIEdNVCsw
MjowMCBCbyBTaGVuIDx2b2ljZS5zaGVuQGF0bWVsLmNvbT46Cj4gSGkgUmFwaGHDq2wgUG9nZ2ks
Cj4KPgo+IE9uIDA4LzA2LzIwMTQgMDM6MTYgUE0sIFJhcGhhw6tsIFBvZ2dpIHdyb3RlOgo+Pgo+
PiBPaywgYWJvdXQgdGhlICJzaWduZWQtb2ZmIiwgZG8gSSBoYXZlIHRvIGxldCB5b3VyIG5hbWUg
PyBvciBteSBuYW1lICsKPj4geW91ciBuYW1lID8gU29ycnkgaWYgbXkgcXVlc3Rpb24gc2VlbXMg
c3R1cGlkLCBidXQgaSdtIG5ldyB0byBvcGVuCj4+IHNvdXJjZSBkZXZlbG9wbWVudC4KPgo+Cj4g
SSB0aGluaywgeW91IGNhbiBmaXJzdCAiZ2l0IGFtIiBteSBwYXRjaCwgYW5kIHRoZW4gYXBwbHkg
eW91ciBwYXRjaCBhbmQKPiBnZW5lcmF0ZSB0aGUgc2VyaWVzIGFuZCBzZW5kIGl0LCB0aGVuIHRo
ZXJlIHdvbid0IGhhdmUgInNpZ25lZC1vZmYiIGlzc3VlLgo+IChJbiBnZW5lcmFsLCBrZWVwIG15
ICJzaWduZWQtb2ZmIiBhbmQgYWRkIHlvdXIgInNpZ25lZC1vZmYiIGlmIHlvdSBwcmVmZXIpLgo+
Cj4KPiBCZXN0IFJlZ2FyZHMsCj4gQm8gU2hlbgo+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYmFyZWJveCBtYWlsaW5nIGxpc3QKPiBiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2JhcmVib3gKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
