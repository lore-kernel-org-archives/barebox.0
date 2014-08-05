Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x233.google.com ([2a00:1450:400c:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEaC5-00070O-9O
 for barebox@lists.infradead.org; Tue, 05 Aug 2014 08:34:05 +0000
Received: by mail-we0-f179.google.com with SMTP id u57so614112wes.10
 for <barebox@lists.infradead.org>; Tue, 05 Aug 2014 01:33:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <53E07FE4.6070107@atmel.com>
References: <1407141112-3868-1-git-send-email-poggi.raph@gmail.com>
 <53DF4E49.3040501@atmel.com>
 <CACqcpZDrqaMNRj5NVmLgvoP1UYwZf03iZsAX32qspwgeZiRhig@mail.gmail.com>
 <53DF5293.2010305@atmel.com> <53E07FE4.6070107@atmel.com>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <raphio98@gmail.com>
Date: Tue, 5 Aug 2014 10:32:41 +0200
Message-ID: <CACqcpZDNfpYJkadn7iFbXor=UUVE-f_+TkcdY647V+hRZsoFDg@mail.gmail.com>
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

SGVsbG8sCgpUaGUgcGF0Y2ggd29ya3MgZmluZSBmb3IgbWUuIFRoYW5rcyBmb3IgeW91ciByZXZp
ZXcvaGVscC4KCkJlc3QgUmVnYXJkcywKUmFwaGHDq2wgUG9nZ2kKCjIwMTQtMDgtMDUgODo1NSBH
TVQrMDI6MDAgQm8gU2hlbiA8dm9pY2Uuc2hlbkBhdG1lbC5jb20+Ogo+IEhpIFJhcGhhw6tsIFBv
Z2dpLAo+Cj4KPiBPbiAwOC8wNC8yMDE0IDA1OjI5IFBNLCBCbyBTaGVuIHdyb3RlOgo+Pgo+PiBI
aSBSYXBoYcOrbCBQb2dnaSwKPj4KPj4gT24gMDgvMDQvMjAxNCAwNToyMiBQTSwgUmFwaGHDq2wg
UG9nZ2kgd3JvdGU6Cj4+Pgo+Pj4gSGksCj4+Pgo+Pj4gSSBoYXZlIHRlc3RlZCBpdCBvbiBhIGN1
c3RvbSBib2FyZCB3aGljaCB1c2UgYSBzYW05bTEwIGFuZCBpdAo+Pj4gd29ya2VkLi4uIFRlbGwg
bWUgbW9yZSB3aGVuIHdlIGhhdmUgZm91bmQgc29tZXRoaW5nIHN1c3BpY2lvdXMuCj4+Cj4+Cj4+
IEkgdGVzdGVkIG9uIHNhbWE1ZDN4ZWsgd2l0aCBxdDEwNzAgY29ubmVjdCB0byBpMmMsIGFuZCB0
aGUgaTJjIGhvc3QKPj4gcmVnaXN0ZXIgc3VjY2Vzc2Z1bGx5LCBob3dldmVyIGNhbiBub3QgYWNj
ZXNzIHF0MTA3MCwgaWYgSSB1c2UgaTJjLWdwaW8KPj4gZHJpdmVyLCBpdCB3b3JrcyB3ZWxsLgo+
Pgo+PiBJIGFtIHN0aWxsIHdvcmtpbmcgb24gaXQsIGlmIGFueSBuZXdzLCBJIHdpbGwgbGV0IHlv
dSBrbm93Lgo+Cj4KPiBJIGhhdmUgcmUtd3JpdGUgdGhlIGludGVycnVwdCBmdW5jdGlvbiBhcyB0
aGUgZW5jbG9zZWQgcGF0Y2guIFRoZW4sIHRoZSBpMmMKPiBob3N0IGRyaXZlciB3b3JrcyBwcm9w
ZXJseS4KPgo+IENhbiB5b3UgaGVscCB0ZXN0IGl0IGFsc28gb24geW91ciBib2FyZD8KPgo+IFRo
YW5rcy4KPgo+Cj4+IEJlc3QgUmVnYXJkcywKPj4gQm8gU2hlbgo+Pgo+Pj4gVGhhbmtzIGZvciB5
b3VyIHRlc3QuCj4+Pgo+Pj4gUmFwaGHDq2wgUG9nZ2kKPj4+Cj4KPiBCZXN0IFJlZ2FyZHMsCj4g
Qm8gU2hlbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
