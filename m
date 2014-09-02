Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x230.google.com ([2a00:1450:400c:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XOtOp-0002Tz-Cp
 for barebox@lists.infradead.org; Tue, 02 Sep 2014 19:05:52 +0000
Received: by mail-we0-f176.google.com with SMTP id q59so7432681wes.35
 for <barebox@lists.infradead.org>; Tue, 02 Sep 2014 12:05:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1409684561-19894-1-git-send-email-poggi.raph@gmail.com>
References: <1409684561-19894-1-git-send-email-poggi.raph@gmail.com>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <poggi.raph@gmail.com>
Date: Tue, 2 Sep 2014 21:04:48 +0200
Message-ID: <CACqcpZD+pfL1M=iZSGbUu0B-VxArE9kXGrTuXDS-NAuKnz8H6g@mail.gmail.com>
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
Subject: Re: [PATCH] mtd: atmel_nand: fix null pointer dereference
To: barebox@lists.infradead.org

SSB0aGluayB0aGlzIHBhdGNoIGNvdWxkIGJlIHNxdWFzaCBpbiBbUEFUQ0ggdjMgMy8zXSBtdGQ6
IGF0bWVsX25hbmQ6CmFkZCBzdXBwb3J0IGZvciBkZXZpY2UgdHJlZQoKMjAxNC0wOS0wMiAyMTow
MiBHTVQrMDI6MDAgUmFwaGHDq2wgUG9nZ2kgPHBvZ2dpLnJhcGhAZ21haWwuY29tPjoKPiBXZSBu
ZWVkIHRvIGFsbG9jYXRlIHBkYXRhIGZvciBkZXZpY2UgdHJlZSBhbmQgbm9uIGRldmljZSB0cmVl
IHByb2JlLgo+IEluIGRldmljZSB0cmVlIHByb2JlIHdlIHVzZSBwZGF0YSB0byBmaWxsIHN0cnVj
dHVyZSBtZW1iZXIgd2l0aCBkdHMgZGF0YS4KPiBJbiBub24gZGV2aWNlIHRyZWUgcHJvYmUgd2Ug
dXNlIHRoZSBwZGF0YSB0byBoYW5kbGUgcGxhdGZvcm1fZGF0YS4KPgo+IFNpZ25lZC1vZmYtYnk6
IFJhcGhhw6tsIFBvZ2dpIDxwb2dnaS5yYXBoQGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9t
dGQvbmFuZC9hdG1lbF9uYW5kLmMgfCA4ICsrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQv
bmFuZC9hdG1lbF9uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYwo+IGluZGV4
IDkxMGVjYzMuLjFlN2M2YzYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9hdG1lbF9u
YW5kLmMKPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYwo+IEBAIC0xMTk0LDYg
KzExOTQsMTAgQEAgc3RhdGljIGludCBfX2luaXQgYXRtZWxfbmFuZF9wcm9iZShzdHJ1Y3QgZGV2
aWNlX2QgKmRldikKPiAgICAgICAgIGlmICghaG9zdCkKPiAgICAgICAgICAgICAgICAgcmV0dXJu
IC1FTk9NRU07Cj4KPiArICAgICAgIHBkYXRhID0ga3phbGxvYyhzaXplb2Yoc3RydWN0IGF0bWVs
X25hbmRfZGF0YSksIEdGUF9LRVJORUwpOwo+ICsgICAgICAgaWYgKCFwZGF0YSkKPiArICAgICAg
ICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICAgICAgICAgaG9zdC0+aW9fYmFzZSA9IGRl
dl9yZXF1ZXN0X21lbV9yZWdpb24oZGV2LCAwKTsKPgo+ICAgICAgICAgbXRkID0gJmhvc3QtPm10
ZDsKPiBAQCAtMTIwNiwxMCArMTIxMCw2IEBAIHN0YXRpYyBpbnQgX19pbml0IGF0bWVsX25hbmRf
cHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCj4gICAgICAgICAgICAgICAgIGlmIChyZXMpCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJfbm9fY2FyZDsKPiAgICAgICAgIH0gZWxz
ZSB7Cj4gLSAgICAgICAgICAgICAgIHBkYXRhID0ga3phbGxvYyhzaXplb2Yoc3RydWN0IGF0bWVs
X25hbmRfZGF0YSksIEdGUF9LRVJORUwpOwo+IC0gICAgICAgICAgICAgICBpZiAoIXBkYXRhKQo+
IC0gICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+IC0KPiAgICAgICAgICAg
ICAgICAgbWVtY3B5KGhvc3QtPmJvYXJkLCBkZXYtPnBsYXRmb3JtX2RhdGEsIHNpemVvZihzdHJ1
Y3QgYXRtZWxfbmFuZF9kYXRhKSk7Cj4gICAgICAgICB9Cj4KPiAtLQo+IDEuOC4zLjIKPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
