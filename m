Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8PIG-0006fC-QP
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 13:37:54 +0000
References: <20190912102905.21307-1-a.fatoum@pengutronix.de>
 <20190912130641.iddh5b7svxbgjlf7@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <90a8b937-2c64-b4ee-426e-b40ba392f490@pengutronix.de>
Date: Thu, 12 Sep 2019 15:37:49 +0200
MIME-Version: 1.0
In-Reply-To: <20190912130641.iddh5b7svxbgjlf7@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 1/7] libfile: introduce copy_file_2 for copying starting
 with offset
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

SGVsbG8gVXdlLAoKT24gOS8xMi8xOSAzOjA2IFBNLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToK
PiBIZWxsbyBBaG1hZCwKPiAKPiBPbiBUaHUsIFNlcCAxMiwgMjAxOSBhdCAxMjoyODo1OVBNICsw
MjAwLCBBaG1hZCBGYXRvdW0gd3JvdGU6Cj4+IGJhcmVib3ggYWxyZWFkeSBoYXMgYSBjb3B5X2Zp
bGUgZm9yIGNvcHlpbmcgZmlsZXMuIEV4dGVuZCB0aGUgQVBJIGJ5IGEKPj4gY29weV9maWxlXzIg
dGhhdCB0YWtlcyBhIHNvdXJjZSBvZmZzZXQgaW50byBhY2NvdW50Lgo+IAo+IENhbiB5b3UgZ2l2
ZSB0aGF0IGZ1bmN0aW9uIGEgbW9yZSBkZXNjcmlwdGl2ZSBuYW1lPyBTb21ldGhpbmcgbGlrZQo+
IGNvcHlfZmlsZV9mcm9tX29mZnNldCgpPwoKSSBjaG9zZSBjb3B5X2ZpbGVfMiBmb3IgY29uc2lz
dGVuY3kgd2l0aCB0aGUgcmVhZF9maWxlIGZ1bmN0aW9uLCB3aGljaApoYWQgYSBjb3B5IHJlbmFt
ZWQgdG8gcmVhZF9maWxlXzIgd2hlbiBpdCBnYWluZWQgYSAobWF4KSBvZmZzZXQgcGFyYW1ldGVy
LgoKU2hvdWxkIHJlYWRfZmlsZV8yIGJlIHJlbmFtZWQgYXMgd2VsbD8gCgo+IAo+IEJlc3QgcmVn
YXJkcwo+IFV3ZQo+IAoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CkluZHVzdHJpYWwgTGludXggU29s
dXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8ClBl
aW5lciBTdHIuIDYtOCwgMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSB8IFBob25lOiArNDktNTEy
MS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAg
ICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==
