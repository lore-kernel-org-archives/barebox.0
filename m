Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x234.google.com ([2607:f8b0:4001:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aKFVv-0000Mc-FA
 for barebox@lists.infradead.org; Sat, 16 Jan 2016 01:18:48 +0000
Received: by mail-ig0-x234.google.com with SMTP id t15so23467644igr.0
 for <barebox@lists.infradead.org>; Fri, 15 Jan 2016 17:18:26 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1452846986.2915.110.camel@pengutronix.de>
References: <CAPnjgZ187+14Fn-aeBkzV9Yv7MXOYPbTJjzCrHByuO04=OoAww@mail.gmail.com>
 <5697FF03.1060702@pengutronix.de> <1452846986.2915.110.camel@pengutronix.de>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 15 Jan 2016 18:18:06 -0700
Message-ID: <CAPnjgZ1v8T_nbBg4xiBT+XcWxoK2gKCTm4PYxAKexi5xU-Y3wA@mail.gmail.com>
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
Subject: Re: Verified boot support with FIT
To: =?UTF-8?Q?Jan_L=C3=BCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

SGkgSmFuLAoKT24gMTUgSmFudWFyeSAyMDE2IGF0IDAxOjM2LCBKYW4gTMO8YmJlIDxqbHVAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+IE9uIERvLCAyMDE2LTAxLTE0IGF0IDIxOjAzICswMTAwLCBN
YXJjIEtsZWluZS1CdWRkZSB3cm90ZToKPj4gT24gMDEvMTQvMjAxNiAwODozMCBQTSwgU2ltb24g
R2xhc3Mgd3JvdGU6Cj4+ID4gU29tZW9uZSBwb2ludGVkIG1lIHRvIHRoaXMgc3VwcG9ydCB0aGF0
IGlzIGJlaW5nIGFkZGVkIGluIEJhcmVib3guIEkgc2VlCj4+ID4gdGhhdCBpdCBzdGlsbCBoYXMg
dGhlIGNvcHlyaWdodCBidXQgZG9lcyBub3QgYXR0cmlidXRlIFUtQm9vdC4gSSdtIGp1c3QKPj4g
PiBjaGVja2luZyBpZiB0aGF0IGlzIHRoYXQgYW4gb3ZlcnNpZ2h0Pwo+Pgo+PiBJJ3ZlIENjJ2Vk
IEphbiwgd2hvIGhhcyB3cml0dGVuIHRoZSBjb2RlLiBRdW90aW5nIGZyb20gaGlzIGZpcnN0IHBh
dGNoCj4+IHRvIHRoZSBiYXJlYm94IG1haWxpbmdsaXN0Ogo+Pgo+PiA+IHRoaXMgaXMgdGhlIGN1
cnJlbnQgd29yay1pbi1wcm9ncmVzcyBzdGF0ZSBvZiBteSBGSVQgc3VwcG9ydCBwYXRjaGVzLgo+
PiA+IFRoZSBGSVQgbG9hZGluZyBjb2RlIGhhcyBiYXNpY2FsbHkgYmVlbiByZXdyaXR0ZW4gZnJv
bSBzY3JhdGNoLCBhcyB0aGUKPj4gPiBvcmlnaW5hbCBVLUJvb3QgY29kZSB1c2VzIGxpYmZkdCBh
bmQgYmFyZWJveCdzIERUIHN1cHBvcnQgd29ya3Mgb24gYW4KPj4gPiBpbi1tZW1vcnkgdHJlZS4K
Pgo+IFllcywgdGhpcyBpcyBzdGlsbCBjb3JyZWN0IGZvciB0aGUgcmVjZW50IHN1Ym1pc3Npb25z
Lgo+Cj4gVGhlIGJhcmVib3ggY29kZSBvbmx5IHN1cHBvcnRzIHRoZSBzaWduZWQgY29uZmlndXJh
dGlvbnMgd2l0aCBoYXNoZWQKPiBpbWFnZXMsIGFzIHRoZSBnb2FsIHdhcyB0byB1c2UgdGhpcyBm
b3IgdmVyaWZpZWQgYm9vdC4gU3VwcG9ydGluZyBvbmx5Cj4gdGhpcyBtb2RlIGtlZXBzIHRoZSBj
b21wbGV4aXR5IGRvd24uCj4KPiBTaW1vbiwgZG8geW91IHRoaW5rIGl0IGlzIGEgZGVyaXZlZCB3
b3JrIG9mIHRoZSBVLUJvb3QgRklUIGNvZGU/CgpUaGUgdmVyaWZpZWQgYm9vdCBpbXBsZW1lbnRh
dGlvbiBsb29rcyBsaWtlIGl0IGNhbWUgZnJvbSBVLUJvb3QuCgpSZWdhcmRzLApTaW1vbgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
