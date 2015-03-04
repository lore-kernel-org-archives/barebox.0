Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTC78-0004UZ-Lx
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 16:25:39 +0000
Received: from mail614.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id BC40AFFA274
 for <barebox@lists.infradead.org>; Wed,  4 Mar 2015 17:25:13 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150304104519.GA11010@pengutronix.de>
Date: Thu, 5 Mar 2015 00:24:57 +0800
Message-Id: <CD9E5BF5-982B-4A7A-AD48-C5B11D7090FD@jcrosoft.com>
References: <1425455398-18858-1-git-send-email-s.hauer@pengutronix.de>
 <1425455398-18858-2-git-send-email-s.hauer@pengutronix.de>
 <166D2BA8-3932-4EE3-855B-B286BC53A5E6@jcrosoft.com>
 <20150304104519.GA11010@pengutronix.de>
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
Subject: Re: [PATCH 2/2] remove unnecessary device pointer argument
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Cj4gT24gTWFyIDQsIDIwMTUsIGF0IDY6NDUgUE0sIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gd3JvdGU6Cj4gCj4gT24gV2VkLCBNYXIgMDQsIDIwMTUgYXQgMDQ6NDM6MTNQ
TSArMDgwMCwgSmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9MLVZJTExBUkQgd3JvdGU6Cj4+IAo+Pj4g
T24gTWFyIDQsIDIwMTUsIGF0IDM6NDkgUE0sIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRy
b25peC5kZT4gd3JvdGU6Cj4+PiAKPj4+IFRoZSBzdHJ1Y3QgZGV2aWNlX2QgKiBhcmd1bWVudCBp
cyBub3QgbmVjZXNzYXJ5LCBpdCBjYW4gYmUgcmV0cmlldmVkIGZyb20KPj4+IHRoZSBGSUxFICou
IFRoaXMgYWRkcyBhIGNvbnZlbmllbmNlIGZ1bmN0aW9uIGZvciBkb2luZyB0aGlzIGFuZCByZW1v
dmVzCj4+PiB0aGUgc3RydWN0IGRldmljZV9kICogYXJndW1lbnQgZnJvbSB0aGUgdGhlIGZpbGVz
eXN0ZW0gZHJpdmVycyBmdW5jdGlvbnMuCj4+IAo+PiBpZiB5b3UgZG8gc28geW91IHNob3VsZCBp
bnRyb2R1Y2UgZnNfd2Fybi9pbmZvICYgY28gdG9vCj4+IAo+PiBzbyB3ZSBkZSBub3QgdXNlIGRl
dl94eHggdmVyc2lvbiBpbiBmcwo+IAo+IFdlIGNhbiBkbyB0aGF0LCBidXQgaXQncyBpbmRlcGVu
ZGVudCBvZiB0aGVzZSBwYXRjaGVzLCByaWdodD8KSeKAmWQgc2FpZCBubyBhcyB3ZSBkcm9wIHRo
ZSBkZXZpY2VfZCB3ZSBuZWVkIGRyb3AgZGV2X3h4eCB0b28KdG8gYmUgbG9naWMKCkJlc3QgUmVn
YXJkcywKSi4KPiAKPiBTYXNjaGEKPiAKPiAtLSAKPiBQZW5ndXRyb25peCBlLksuICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+IEluZHVz
dHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0
cm9uaXguZGUvICB8Cj4gUGVpbmVyIFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55
IHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWlt
LCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFp
bGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
