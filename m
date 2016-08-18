Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward9h.cmail.yandex.net ([87.250.230.220])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baJ3q-000251-7c
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 08:52:27 +0000
From: Aleksey Kuleshov <rndfax@yandex.ru>
In-Reply-To: <20160818063524.GF20657@pengutronix.de>
References: <1471420687-14367-1-git-send-email-rndfax@yandex.ru>
 <1471420687-14367-2-git-send-email-rndfax@yandex.ru>
 <20160818063524.GF20657@pengutronix.de>
MIME-Version: 1.0
Message-Id: <105091471510320@web2g.yandex.ru>
Date: Thu, 18 Aug 2016 11:52:00 +0300
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
Subject: Re: [PATCH 1/2] hush: do not do anything if string is zero length
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Pj4gwqBkaWZmIC0tZ2l0IGEvY29tbW9uL2h1c2guYyBiL2NvbW1vbi9odXNoLmMKPj4gwqBpbmRl
eCBkM2Y3YmYzLi5kOGZkNjRiIDEwMDY0NAo+PiDCoC0tLSBhL2NvbW1vbi9odXNoLmMKPj4gwqAr
KysgYi9jb21tb24vaHVzaC5jCj4+IMKgQEAgLTE2NTUsNiArMTY1NSw5IEBAIGNoYXIgKnNoZWxs
X2V4cGFuZChjaGFyICpzdHIpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgb19zdHJpbmcgbyA9IHt9
Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoGNoYXIgKnJlcywgKnBhcnNlZDsKPj4KPj4gwqArIGlm
IChzdHJsZW4oc3RyKSA9PSAwKQo+PiDCoCsgcmV0dXJuIHhzdHJkdXAoIiIpOwo+PiDCoCsKPgo+
IENhbiB5b3UgZXhwbGFpbiB3aHkgdGhpcyBpcyBuZWNlc3Nhcnk/IFdoYXQgaGFwcGVucyB3aXRo
IGFuIGVtcHR5IHN0cmluZwo+IHdpdGhvdXQgdGhpcyBwYXRjaD8KCi8qCiAqIHNoZWxsX2V4cGFu
ZCAtIEV4cGFuZCBzaGVsbCB2YXJpYWJsZXMgaW4gYSBzdHJpbmcuCiAqIEBzdHI6ICAgICAgICBU
aGUgaW5wdXQgc3RyaW5nIGNvbnRhaW5pbmcgc2hlbGwgdmFyaWFibGVzIGxpa2UKICogICAgICAg
ICAgICAgICR2YXIgb3IgJHt2YXJ9CiAqIFJldHVybjogICAgICBUaGUgZXhwYW5kZWQgc3RyaW5n
LiBNdXN0IGJlIGZyZWVkIHdpdGggZnJlZSgpLgogKi8KCklmIHNoZWxsX2V4cGFuZCBzaG91bGQg
YmUgY2FsbGVkIF9vbmx5XyB3aXRoIHN0cmluZyBjb250YWluaW5nIF9hdCBsZWFzdCBvbmVfICR2
YXIgb3IgJHt2YXJ9IHRoZW4gdGhpcyBwYXRjaCBpcyB3cm9uZy4KQW5kIHNpbmNlIHNoZWxsX2V4
cGFuZCBpcyBjYWxsZWQgb25seSBmcm9tIG1lbnV0cmVlLmMgdGhlbiBpdCdzIG1lbnV0cmVlLmMn
cyByZXNwb25zaWJpbGl0eSB0byB2ZXJpZnkgdGhlIHN0cmluZy4KCk90aGVyd2lzZToKSWYgeW91
IHBhc3MgemVybyBsZW5ndGggc3RyaW5nIChpLmUuIHNoZWxsX2V4cGFuZCgiIikpIHlvdSB3aWxs
IGVuZCB1cCB3aXRoICJTZWdtZW50YXRpb24gRmF1bHQiCmJlY2F1c2UgdGhpcyBsaW5lOgoKICAg
ICAgICBwYXJzZV9zdHJpbmcoJm8sICZjdHgsIHN0cik7Cgp3aWxsIGdpdmUgeW91IG8uZGF0YSA9
IE5VTEwKYW5kIHRoZW4gY29tZXMgdGhpcyBsaW5lOgoKICAgICAgICBwYXJzZWQgPSB4bWVtZHVw
KG8uZGF0YSwgby5sZW5ndGggKyAxKTsKClBTLiBBbmQgaWYgeW91IHdpbGwgbm90IGZpbGwgJ3Rp
dGxlJyBmaWxlIGZvciBtZW51IHdpdGggc29tZSBkYXRhIHlvdSB3aWxsIGdldCAiU2VnbWVudGF0
aW9uIEZhdWx0Ii4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
