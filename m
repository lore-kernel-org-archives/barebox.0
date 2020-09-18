Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJEC7-00004u-HJ
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 11:04:48 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri, 18 Sep 2020 13:04:42 +0200
Message-Id: <20200918110442.25159-2-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20200918110442.25159-1-u.kleine-koenig@pengutronix.de>
References: <20200918110442.25159-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/2] x86/config/efi: drop DRIVER_SERIAL_NS16550
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Rm9yIG1vc3QgbWFjaGluZXMgaGF2aW5nIERSSVZFUl9TRVJJQUxfTlMxNjU1MCBhbmQgRFJJVkVS
X1NFUklBTF9FRklfU1RESU8KYm90aCBlbmFibGVkIHJlc3VsdHMgaW4gdGhlIG91dHB1dCBhcHBl
YXJpbmcgdHdpY2Ugb24gdGhlIHNlcmlhbCBvdXRwdXQuClNvIHJlbW92ZSBkaXNhYmxlIHRoZSBs
b3dsZXZlbCBkcml2ZXIgYW5kIHJlbHkgb24gdGhlIEVGSSBiaW9zIGZvciBzZXJpYWwuCgpTaWdu
ZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4
LmRlPgotLS0KIGFyY2gveDg2L2NvbmZpZ3MvZWZpX2RlZmNvbmZpZyB8IDEgLQogMSBmaWxlIGNo
YW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9jb25maWdzL2VmaV9k
ZWZjb25maWcgYi9hcmNoL3g4Ni9jb25maWdzL2VmaV9kZWZjb25maWcKaW5kZXggOTliYzM5ZWFh
NmYxLi44Mzc5NGQ3YTA3MDIgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2NvbmZpZ3MvZWZpX2RlZmNv
bmZpZworKysgYi9hcmNoL3g4Ni9jb25maWdzL2VmaV9kZWZjb25maWcKQEAgLTY1LDcgKzY1LDYg
QEAgQ09ORklHX05FVD15CiBDT05GSUdfTkVUX05GUz15CiBDT05GSUdfTkVUX05FVENPTlNPTEU9
eQogQ09ORklHX0RSSVZFUl9TRVJJQUxfRUZJX1NURElPPXkKLUNPTkZJR19EUklWRVJfU0VSSUFM
X05TMTY1NTA9eQogQ09ORklHX0RSSVZFUl9ORVRfRUZJX1NOUD15CiAjIENPTkZJR19TUEkgaXMg
bm90IHNldAogQ09ORklHX0RJU0s9eQotLSAKMi4yNy4wCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
