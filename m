Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e54hy-0000X8-Sm
 for barebox@lists.infradead.org; Thu, 19 Oct 2017 06:53:39 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Thu, 19 Oct 2017 08:53:06 +0200
Message-Id: <20171019065308.2507-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH 0/2] Allow decimally formatted data for the commands
 "i2c_write" and "spi"
To: Barebox List <barebox@lists.infradead.org>

Q3VycmVudGx5IGJvdGggY29tbWFuZHMgc2V0IHRoZSBkZWZhdWx0IGJhc2UgZm9yIHBhcnNpbmcg
dXNlciBzdXBwbGllZCBkYXRhIHRvCjE2IHdoaWNoIG1ha2VzIGl0IGltcG9zc2libGUgYXQgYWxs
IHRvIHBhcnNlIGRlY2ltYWwgZGF0YS4KClByZXN1bWFibHkgdGhpcyBvcmlnaW5hdGVzIGZyb20g
aGF2aW5nIHRoZSBjb252ZW5pZW5jZSB0byBlYXNpbHkgY29weSduJ3Bhc3RlCmhleCBkdW1wZWQg
ZGF0YSBpbnRvIHRoZXNlIGNvbW1hbmRzIHdpdGhvdXQgZnVydGhlciBwcmVwcm9jZXNzaW5nIGl0
IGJlZm9yZS4KCkNoYW5nZSB0aGUgZGVmYXVsdCBiYXNlIHRvIDAgdG8gcGFydGljdWxhcmx5IGFs
bG93IGRlY2ltYWxseSBmb3JtYXR0ZWQgZGF0YS4KVGhpcyBpcyBpbiBhY2NvcmRhbmNlIHRvIHdo
YXQgdGhlICJtdyIgY29tbWFuZCBkb2VzLgoKQ2hhbmdlcyBzaW5jZSAoaW1wbGljaXQpIHYxICgy
MDE3MTAxNykgKGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9iYXJlYm94LzIw
MTctT2N0b2Jlci8wMzEzNTYuaHRtbCk6CiAgLSBleHRlbmRlZCB0aGUgY29tbWl0IG1lc3NhZ2Vz
IHRvIGluY2x1ZGUgdGhlIG1vdGl2YXRpb24gZm9yIHRoZSBjaGFuZ2UKICAtIGFkZGVkIFV3ZSdz
IGFja2VkLWJ5CgpVbHJpY2ggw5ZsbWFubiAoMik6CiAgY29tbWFuZHM6IGkyYzogZG8gbm90IHJl
c3RyaWN0IGkyY193cml0ZSdzIGRhdGEgdG8gYmUgaGV4LWZvcm1hdHRlZAogIGNvbW1hbmRzOiBz
cGk6IGRvIG5vdCByZXN0cmljdCBzcGkncyBkYXRhIHRvIGJlIGhleC1mb3JtYXR0ZWQKCiBjb21t
YW5kcy9pMmMuYyB8IDIgKy0KIGNvbW1hbmRzL3NwaS5jIHwgMiArLQogMiBmaWxlcyBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgotLQoyLjExLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0
CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
