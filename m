Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward2m.cmail.yandex.net ([2a02:6b8:b030::19])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baKsa-0008Cy-Vk
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 10:48:58 +0000
From: Aleksey Kuleshov <rndfax@yandex.ru>
In-Reply-To: <20160818102656.GP20657@pengutronix.de>
References: <1471420687-14367-1-git-send-email-rndfax@yandex.ru>
 <1471420687-14367-3-git-send-email-rndfax@yandex.ru>
 <20160818071159.GG20657@pengutronix.de>
 <208911471512989@web9j.yandex.ru> <20160818102656.GP20657@pengutronix.de>
MIME-Version: 1.0
Message-Id: <103881471517312@web13m.yandex.ru>
Date: Thu, 18 Aug 2016 13:48:32 +0300
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
Subject: Re: [PATCH 2/2] rework menu so that it can support multiline titles
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Pj4gwqA+IFdlIGhhdmUgdGhlIHN0cmltKCkgZnVuY3Rpb24gZm9yIHRoaXMgcHVycG9zZS4KPj4K
Pj4gwqDCoCogc3RyaW0gLSBSZW1vdmVzIGxlYWRpbmcgYW5kIHRyYWlsaW5nIHdoaXRlc3BhY2Ug
ZnJvbSBAcy4KPj4KPj4gwqBBbmQgbWluZSBkb2VzIG9ubHk6Cj4+IMKgPj4gKyAvKiBSZW1vdmUg
dHJhaWxpbmcgd2hpdGVzcGFjZXMgKi8KPgo+IFlvdSBjYW4gdXNlIHN0cmltIGZvciBib3RoIGNh
c2VzOgo+Cj4gwqDCoMKgwqDCoMKgwqDCoHN0ciA9IHN0cmltKHN0cik7Cj4KPiByZW1vdmVzIGJv
dGggbGVhZGluZyBhbmQgdHJhaWxpbmcgd2hpdGVzcGFjZXMsIGJ1dCB3aXRob3V0IHJlYXNzaWdu
aW5nCj4gc3RyIHRvIHRoZSByZXR1cm4gdmFsdWUgb2Ygc3RyaW0oKSB5b3Ugb25seSByZW1vdmUg
dHJhaWxpbmcgd2hpdGVzcGFjZXMuCgpXZWxsLCB0aGlzIGlzIHJhdGhlciBoYWNrIHRoYW4gbm9y
bWFsIHVzaW5nLgpCZWNhdXNlIHRoaXMgd2F5IG9mIHVzaW5nIGhhcyBub3RoaW5nIHRvIGRvIHdp
dGggdGhlIGRlc2NyaXB0aW9uOgoKICogc3RyaW0gLSBSZW1vdmVzIGxlYWRpbmcgYW5kIHRyYWls
aW5nIHdoaXRlc3BhY2UgZnJvbSBAcy4KICogQHM6IFRoZSBzdHJpbmcgdG8gYmUgc3RyaXBwZWQu
CiAqIFJldHVybnMgYSBwb2ludGVyIHRvIHRoZSBmaXJzdCBub24td2hpdGVzcGFjZSBjaGFyYWN0
ZXIgaW4gQHMuCgpIZXJlIGlzIHRoZSBwYXRjaCB3aGljaCByZW1vdmVzIHRoaXMgbWlzdW5kZXJz
dGFuZGluZzoKCmRpZmYgLS1naXQgYS9saWIvc3RyaW5nLmMgYi9saWIvc3RyaW5nLmMKaW5kZXgg
YTNlOWZkOC4uMWQ0OTFjOSAxMDA2NDQKLS0tIGEvbGliL3N0cmluZy5jCisrKyBiL2xpYi9zdHJp
bmcuYwpAQCAtNjQxLDcgKzY0MSw3IEBAIGNoYXIgKnNraXBfc3BhY2VzKGNvbnN0IGNoYXIgKnN0
cikKIH0KCiAvKioKLSAqIHN0cmltIC0gUmVtb3ZlcyBsZWFkaW5nIGFuZCB0cmFpbGluZyB3aGl0
ZXNwYWNlIGZyb20gQHMuCisgKiBzdHJpbSAtIFJlbW92ZXMgdHJhaWxpbmcgd2hpdGVzcGFjZSBm
cm9tIEBzLgogICogQHM6IFRoZSBzdHJpbmcgdG8gYmUgc3RyaXBwZWQuCiAgKgogICogTm90ZSB0
aGF0IHRoZSBmaXJzdCB0cmFpbGluZyB3aGl0ZXNwYWNlIGlzIHJlcGxhY2VkIHdpdGggYSAlTlVM
LXRlcm1pbmF0b3IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
