Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dczUg-0005vI-6J
 for barebox@lists.infradead.org; Wed, 02 Aug 2017 19:39:47 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed,  2 Aug 2017 21:39:05 +0200
Message-Id: <20170802193907.4317-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 0/2] spi: imx: don't loop endlessly
To: barebox@lists.infradead.org

SGVsbG8sCgpkdXJpbmcgYnJpbmd1cCBvZiBhbiBpLk1YNyBib2FyZCBJIGFtIGZhY2VkIHdpdGgg
Y3NwaV8yXzNfeGNoZ19zaW5nbGUgbm90CnJldHVybmluZy4gSSBkb24ndCBrbm93IHlldCB3aHkg
dGhpcyBoYXBwZW5zLCBidXQgd2l0aCB0aGlzIHBhdGNoIHNldCBpdCBhdCBsZWFzdApkb2Vzbid0
IGJsb2NrIGJhcmVib3guCgpJIGRpZG4ndCB0ZXN0IG9uIGEgd29ya2luZyBib2FyZCwgbWF5YmUg
dGhlIHRpbWVvdXQgKDEwIMK1cykgSSBjaG9zZSBpcyB0b28gdGlnaHQ/CgpCZXN0IHJlZ2FyZHMK
VXdlCgpVd2UgS2xlaW5lLUvDtm5pZyAoMik6CiAgc3BpOiBpbXg6IGFkZCBlcnJvciBjaGVja2lu
ZwogIHNwaTogaW14OiBhZGQgdGltZW91dCB0byB4Y2hnX3NpbmdsZQoKIGRyaXZlcnMvc3BpL2lt
eF9zcGkuYyB8IDEwNSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcyIGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygt
KQoKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
