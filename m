Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1biFRa-0004Fe-7c
 for barebox@lists.infradead.org; Fri, 09 Sep 2016 06:37:47 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  9 Sep 2016 08:37:22 +0200
Message-Id: <1473403042-20535-1-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20160909062541.s4pgmxefhgq7rlge@pengutronix.de>
References: <20160909062541.s4pgmxefhgq7rlge@pengutronix.de>
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
Subject: [PATCH] xstrdup: don't panic on xstrdup(NULL)
To: barebox@lists.infradead.org

SW5zdGVhZCByZXR1cm4ganVzdCBOVUxMLiBUaGlzIG1hdGNoZXMgdGhlIGJlaGF2aW91ciBvZiBr
c3RyZHVwIGluIHRoZQprZXJuZWwgYW5kIHhzdHJkdXAgaW4gYnVzeWJveC4KClRoaXMgZml4ZXMg
YSBwYW5pYyB3aXRoIENPTkZJR19DTURfTUFHSUNWQVI9eSBhbmQKQ09ORklHX0NNRF9NQUdJQ1ZB
Ul9IRUxQIHVuc2V0IGluIG1hZ2ljdmFyX2FkZCgpIHdoZXJlIGRlc2NyaXB0aW9uIGlzCmFsd2F5
cyBOVUxMLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5p
Z0BwZW5ndXRyb25peC5kZT4KLS0tCiBsaWIveGZ1bmNzLmMgfCA3ICsrKysrKy0KIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9saWIv
eGZ1bmNzLmMgYi9saWIveGZ1bmNzLmMKaW5kZXggYWFmMDc4ODU0NDI5Li4xZGMyZWE5MmQ4NGYg
MTAwNjQ0Ci0tLSBhL2xpYi94ZnVuY3MuYworKysgYi9saWIveGZ1bmNzLmMKQEAgLTU2LDEwICs1
NiwxNSBAQCBFWFBPUlRfU1lNQk9MKHh6YWxsb2MpOwogCiBjaGFyICp4c3RyZHVwKGNvbnN0IGNo
YXIgKnMpCiB7Ci0JY2hhciAqcCA9IHN0cmR1cChzKTsKKwljaGFyICpwOworCisJaWYgKCFzKQor
CQlyZXR1cm4gTlVMTDsKIAorCXAgPSBzdHJkdXAocyk7CiAJaWYgKCFwKQogCQlwYW5pYygiRVJS
T1I6IG91dCBvZiBtZW1vcnlcbiIpOworCiAJcmV0dXJuIHA7CiB9CiBFWFBPUlRfU1lNQk9MKHhz
dHJkdXApOwotLSAKMi44LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
