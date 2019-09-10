Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Xmt-0001Sk-Ut
 for barebox@lists.infradead.org; Tue, 10 Sep 2019 04:29:57 +0000
Received: by mail-io1-xd41.google.com with SMTP id r26so34351701ioh.8
 for <barebox@lists.infradead.org>; Mon, 09 Sep 2019 21:29:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190907235645.22442-1-andrew.smirnov@gmail.com>
 <20190909084220.23dw5yg7ekwni5jw@pengutronix.de>
In-Reply-To: <20190909084220.23dw5yg7ekwni5jw@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 9 Sep 2019 21:29:43 -0700
Message-ID: <CAHQ1cqEA8SFizvU33d4+L_NuF_4GtQmtCJiM=ZW-aSsLRmHOLg@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: aarch64: Re-implement most of barebox_arm_entry() in
 assembly
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

T24gTW9uLCBTZXAgOSwgMjAxOSBhdCAxOjQyIEFNIFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBTYXQsIFNlcCAwNywgMjAxOSBhdCAwNDo1Njo0NVBN
IC0wNzAwLCBBbmRyZXkgU21pcm5vdiB3cm90ZToKPiA+IEdDQzkgbm93IHByb2R1Y2VzIHRoZSBm
b2xsb3dpbmcgd2FybmluZzoKPiA+Cj4gPiBjb21tb24uaDo1MToyOiB3YXJuaW5nOiBsaXN0aW5n
IHRoZSBzdGFjayBwb2ludGVyIHJlZ2lzdGVyIOKAmHNw4oCZIGluIGEgY2xvYmJlciBsaXN0IGlz
IGRlcHJlY2F0ZWQgWy1XZGVwcmVjYXRlZF0KPiA+ICAgIDUxIHwgIF9fYXNtX18gX192b2xhdGls
ZV9fKCJtb3Ygc3AsICUwIgo+ID4gICAgICAgfCAgXn5+fn5+fgo+ID4gY29tbW9uLmg6NTE6Mjog
bm90ZTogdGhlIHZhbHVlIG9mIHRoZSBzdGFjayBwb2ludGVyIGFmdGVyICBhbiDigJhhc23igJkg
c3RhdGVtZW50IG11c3QgYmUgdGhlIHNhbWUgYXMgaXQgd2FzIGJlZm9yZSB0aGUgc3RhdGVtZW50
Cj4KPiBIbSwgdGhpcyBtYWtlcyBhbiBhcm1fc2V0dXBfc3RhY2soKSBmdW5jdGlvbiBpbGxlZ2Fs
IGJ5IGRlZmluaXRpb24uIEkKPiB0aGluayB3ZSBoYXZlIHdvcmsgdG8gZG8gOigKPgo+IENhbiB5
b3UgY2hhbmdlIGJvdGggYXJtMzIgYW5kIGFhcmNoNjQgdG8gYXNzZW1ibHkgaW4gdGhpcyBwYXRj
aD8gV2UgaGF2ZQo+IHRvIGRvIHNvbWV0aGluZyBhbnl3YXksIGNoYW5naW5nIGJvdGggYXJjaGl0
ZWN0dXJlcyBtaWdodCBtYWtlIHRoaXMKPiBwYXRjaCBzaW1wbGVyLgo+CgpTdXJlLCB3aWxsIGRv
IGluIHYyLgoKVGhhbmtzLApBbmRyZXkgU21pcm5vdgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYmFyZWJveAo=
