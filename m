Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRLJS-0004cb-2e
 for barebox@lists.infradead.org; Wed, 11 Jan 2017 15:59:50 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 11 Jan 2017 16:59:13 +0100
Message-Id: <20170111155920.13179-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH v1 0/7] net/phy: marvell: add support for 88e1510
To: barebox@lists.infradead.org

SGVsbG8sCgp0aGlzIHNlcmllcyB0YXJnZXRzIHRvIGFkZCBzdXBwb3J0IGZvciB0aGUgTWFydmVs
bCBwaHkgODhlMTUxMCB0byB0aGUKbWFydmVsbCBwaHkgZHJpdmVyLiBUbyBtYWtlIHRoaXMgYW5k
IGZ1dHVyZSBhZGRpdGlvbnMgZWFzeSB0aGVyZSBhcmUKc2V2ZXJhbCBwcmVwYXJpbmcgcGF0Y2hl
cyB0aGF0IG1ha2UgdGhlIGJhcmVib3ggZHJpdmVyIHZlcnkgc2ltaWxhciB0bwp0aGUgTGludXgg
ZHJpdmVyLiBUaGlzIGFsbG93cyB0byBoYXZlIHRoZSB0d28gZHJpdmVycyBvcGVuIHNpZGUgYnkg
c2lkZQooSSB1c2UgdmltIC1kKSB0byBhZGQgbmV3IGZlYXR1cmVzIHRvIHRoZSBiYXJlYm94IGRy
aXZlciB0aGF0IGFyZQphbHJlYWR5IHByZXNlbnQgaW4gTGludXguCgpCZXN0IHJlZ2FyZHMKVXdl
CgpVd2UgS2xlaW5lLUvDtm5pZyAoNyk6CiAgbmV0L3BoeTogbWFydmVsbDogcmVuYW1lIDg4RTE1
NDUgdG8gODhFMTU0MAogIG5ldC9waHk6IG1hcnZlbGw6IDg4RTE1NDAgTEVEIHJlZ2lzdGVycyBh
bHJlYWR5IGV4aXN0IG9uIDg4RTExMjEKICBuZXQvcGh5OiBtYXJ2ZWxsOiByZW5hbWUgcGh5X2Ry
aXZlciBhcnJheSB0byBtYXRjaCBMaW51eCBkcml2ZXIKICBuZXQvcGh5OiBtYXJ2ZWxsOiBjaGFu
Z2Ugc3BhY2luZyB0byBiZSBtb3JlIHNpbWlsYXIgdG8gdGhlIExpbnV4CiAgICBkcml2ZXIKICBu
ZXQvcGh5OiBtYXJ2ZWxsOiBhbGlnbiBkZWZpbml0aW9uIG9mIE1JSV84OEUxMTIxX1BIWV9NU0NS
IHRvIExpbnV4CiAgICBkcml2ZXIKICBuZXQvcGh5OiBtYXJ2ZWxsOiBpbXByb3ZlIGNvbmZpZ19h
bmVnIGZvciA4OEUxMTIxUiBhbmQgODhFMTMxOFMKICBuZXQvcGh5OiBtYXJ2ZWxsOiBhZGQgc3Vw
cG9ydCBmb3IgODhlMTUxMCB0byBtYXJ2ZWxsIHBoeSBkcml2ZXIKCiBkcml2ZXJzL25ldC9waHkv
bWFydmVsbC5jICAgfCAzNTMgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
LS0tLS0KIGluY2x1ZGUvbGludXgvbWFydmVsbF9waHkuaCB8ICAgMiArLQogMiBmaWxlcyBjaGFu
Z2VkLCAzMTQgaW5zZXJ0aW9ucygrKSwgNDEgZGVsZXRpb25zKC0pCgotLSAKMi4xMS4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
