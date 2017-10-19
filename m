Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e54hy-0000X9-Tv
 for barebox@lists.infradead.org; Thu, 19 Oct 2017 06:53:45 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Thu, 19 Oct 2017 08:53:07 +0200
Message-Id: <20171019065308.2507-2-u.oelmann@pengutronix.de>
In-Reply-To: <20171019065308.2507-1-u.oelmann@pengutronix.de>
References: <20171019065308.2507-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH 1/2] commands: i2c: do not restrict i2c_write's data to be
 hex-formatted
To: Barebox List <barebox@lists.infradead.org>

Q2hhbmdlIHRoZSBkZWZhdWx0IGJhc2UgdG8gMCB0byBiZSBjb25zaXN0ZW50IHdpdGggdGhlICJt
dyIgY29tbWFuZCBhbmQKcGFydGljdWxhcmx5IGFsbG93IGRlY2ltYWxseSBmb3JtYXR0ZWQgZGF0
YS4KClRoZSBwcmljZSB0byBwYXkgaXMgbmVlZGluZyB0aGUgdXN1YWwgcHJlZml4ICIweCIgZm9y
IGVhY2ggaGV4LWZvcm1hdHRlZCBudW1iZXIuCgpTaWduZWQtb2ZmLWJ5OiBVbHJpY2ggw5ZsbWFu
biA8dS5vZWxtYW5uQHBlbmd1dHJvbml4LmRlPgpBY2tlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcg
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBjb21tYW5kcy9pMmMuYyB8IDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2NvbW1hbmRzL2kyYy5jIGIvY29tbWFuZHMvaTJjLmMKaW5kZXggNTczMDMyYWIxNTg4
Li5iNzRjNTM1MDlmMzggMTAwNjQ0Ci0tLSBhL2NvbW1hbmRzL2kyYy5jCisrKyBiL2NvbW1hbmRz
L2kyYy5jCkBAIC0xMjksNyArMTI5LDcgQEAgc3RhdGljIGludCBkb19pMmNfd3JpdGUoaW50IGFy
Z2MsIGNoYXIgKmFyZ3ZbXSkKIAogCWJ1ZiA9IHhtYWxsb2MoY291bnQpOwogCWZvciAoaSA9IDA7
IGkgPCBjb3VudDsgaSsrKQotCQkqKGJ1ZiArIGkpID0gKGNoYXIpIHNpbXBsZV9zdHJ0b2woYXJn
dltvcHRpbmQraV0sIE5VTEwsIDE2KTsKKwkJKihidWYgKyBpKSA9IChjaGFyKSBzaW1wbGVfc3Ry
dG9sKGFyZ3Zbb3B0aW5kK2ldLCBOVUxMLCAwKTsKIAogCXJldCA9IGkyY193cml0ZV9yZWcoJmNs
aWVudCwgcmVnIHwgd2lkZSwgYnVmLCBjb3VudCk7CiAJaWYgKHJldCAhPSBjb3VudCkgewotLSAK
Mi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
