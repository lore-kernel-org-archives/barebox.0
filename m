Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NYLDq-0004HX-8E
	for barebox@lists.infradead.org; Fri, 22 Jan 2010 15:14:55 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 22 Jan 2010 16:14:34 +0100
Message-Id: <1264173275-1858-1-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20100122150628.GA12856@pengutronix.de>
References: <20100122150628.GA12856@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] give nice output when generating barebox.bin and barebox.S
To: barebox@lists.infradead.org

QXMgYSBzaWRlIGVmZmVjdCBkb24ndCBidWlsZCBiYXJlYm94LlMgd2hlbiBiYXJlYm94LmJpbiBp
cyB1cGRhdGVkLiAgSQpkaWRuJ3QgbWFuYWdlIHRvIGtlZXAgdGhlIG9sZCBiZWhhdmlvdXIgYW5k
IEkgY29uc2lkZXIgaXQgY2xlYW5lciB0aGlzCndheS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVp
bmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogTWFrZWZpbGUg
fCAgIDE1ICsrKysrKysrKysrKy0tLQogMSBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZpbGUKaW5kZXgg
MGMwMDgyOS4uNWI1YzJlOCAxMDA2NDQKLS0tIGEvTWFrZWZpbGUKKysrIGIvTWFrZWZpbGUKQEAg
LTY0MSw5ICs2NDEsMTggQEAgZGVmaW5lIHJ1bGVfYmFyZWJveC1tb2Rwb3N0CiAJJChRKWVjaG8g
J2NtZF8kQCA6PSAkKGNtZF9iYXJlYm94LW1vZHBvc3QpJyA+ICQoZG90LXRhcmdldCkuY21kCiBl
bmRlZgogCi1iYXJlYm94LmJpbjogYmFyZWJveAotCSQoUSkkKE9CSkNPUFkpIC1PIGJpbmFyeSBi
YXJlYm94IGJhcmVib3guYmluCi0JJChRKSQoT0JKRFVNUCkgLWQgYmFyZWJveCA+IGJhcmVib3gu
UworcXVpZXRfY21kX29iamNvcHkgPSBPQkpDT1BZICRACisgICAgICBjbWRfb2JqY29weSA9ICQo
T0JKQ09QWSkgJChPQkpDT1BZRkxBR1MpICQoT0JKQ09QWUZMQUdTXyQoQEYpKSAkPCAkQAorCitP
QkpDT1BZRkxBR1NfYmFyZWJveC5iaW4gPSAtTyBiaW5hcnkKK2JhcmVib3guYmluOiBiYXJlYm94
IEZPUkNFCisJJChjYWxsIGlmX2NoYW5nZWQsb2JqY29weSkKKyMkKFEpJChPQkpDT1BZKSAtTyBi
aW5hcnkgYmFyZWJveCBiYXJlYm94LmJpbgorCitxdWlldF9jbWRfZGlzYXNtID0gRElTQVNNICAk
QAorICAgICAgY21kX2Rpc2FzbSA9ICQoT0JKRFVNUCkgLWQgJDwgPiAkQAorYmFyZWJveC5TOiBi
YXJlYm94IEZPUkNFCisJJChjYWxsIGlmX2NoYW5nZWQsZGlzYXNtKQogCiAjIGJhcmVib3ggaW1h
Z2UKIGJhcmVib3g6ICQoYmFyZWJveC1sZHMpICQoYmFyZWJveC1oZWFkKSAkKGJhcmVib3gtY29t
bW9uKSAkKGthbGxzeW1zLm8pIEZPUkNFCi0tIAoxLjYuNgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
