Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fE8nB-0006vg-Lu
 for barebox@lists.infradead.org; Thu, 03 May 2018 07:36:43 +0000
Message-ID: <1525332989.17782.17.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 03 May 2018 09:36:29 +0200
In-Reply-To: <CAHQ1cqELJdWpbiVGNb0R4-Z5dPPaBqR0fSu-QYbbQ2Kmq5kUkQ@mail.gmail.com>
References: <20180421010538.16488-1-andrew.smirnov@gmail.com>
 <20180421010538.16488-4-andrew.smirnov@gmail.com>
 <1525272153.17782.15.camel@pengutronix.de>
 <CAHQ1cqELJdWpbiVGNb0R4-Z5dPPaBqR0fSu-QYbbQ2Kmq5kUkQ@mail.gmail.com>
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
Subject: Re: [PATCH v2 03/10] ARM: i.MX6: Record reset reason as a part of
 startup
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

T24gV2VkLCAyMDE4LTA1LTAyIGF0IDEwOjQ2IC0wNzAwLCBBbmRyZXkgU21pcm5vdiB3cm90ZToK
PiBPbiBXZWQsIE1heSAyLCAyMDE4IGF0IDc6NDIgQU0sIEphbiBMw7xiYmUgPGpsdUBwZW5ndXRy
b25peC5kZT4gd3JvdGU6Cj4gPiBUaGVyZSBpcyBhbHJlYWR5IGNvZGUgaW4gZHJpdmVycy93YXRj
aGRvZy9pbXh3ZC5jIHRvIGhhbmRsZSB0aGlzLgo+ID4gSXMgdGhhdCBvYnNvbGV0ZSBub3c/Cj4g
Cj4gQUZBSUssIHdhdGNoZG9nIElQIGJsb2NrIGRvZXNuJ3QgaGF2ZSBhcyBwcmVjaXNlIGluZm9y
bWF0aW9uIGFib3V0Cj4gcmVzZXQgc291cmNlIGFzIFNSU1IgcmVnaXN0ZXIgb24gaS5NWCBTb0Nz
IHRoYXQgaGF2ZSB0aGUgbGF0dGVyLgo+IFRoZXJlLCB0aGlzIGNvZGUgc3VwZXJzZWRlcyBpbXh3
ZC5jLiBPVEhPICBTb0NzIHRoYXQgZG9uJ3QgaGF2ZSBTUlNSCj4gKGkuTVgyMSwgaS5NWDMxLCBl
dGMpIHN0aWxsIHJlbHkgb24gY29kZSBpbXh3ZC5jICBmb3IgcmVzZXQgc291cmNlCj4gZGV0ZWN0
aW9uLgo+IAo+IEhvcGUgdGhpcyBhbnN3ZXJzIHlvdXIgcXVlc3Rpb24uCgpZZXMsIHRoYW5rcy4g
SSBkaWRuJ3QgcmVhbGl6ZSB0aGF0IHRoZXNlIHdlcmUgZGlmZmVyZW50IHJlZ2lzdGVycy4KClJl
Z2FyZHMsCkphbgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlv
bnMgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKUGVpbmVy
IFN0ci4gNi04LCAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55IHwgUGhvbmU6ICs0OS01MTIxLTIw
NjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwg
RmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2JhcmVib3gK
