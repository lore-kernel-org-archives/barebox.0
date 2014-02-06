Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBS15-0004gU-4x
 for barebox@lists.infradead.org; Thu, 06 Feb 2014 16:41:32 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  6 Feb 2014 17:40:47 +0100
Message-Id: <1391704854-3141-3-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/9] nfs: skip over stale rpc packets
To: barebox@lists.infradead.org

V2hlbiBhIGZvcm1lciB0cmFuc2FjdGlvbiB3YXMgYWJvcnRlZCBieSBoaXR0aW5nIEN0cmwtQyB0
aGUgb2xkIHJlcGx5IG1pZ2h0CnN0aWxsIGhhbmcgaW4gdGhlIGV0aGVybmV0IGNvbnRyb2xsZXIg
bWFraW5nIGFsbCBmdXJ0aGVyIHRyYW5zYWN0aW9ucyBmYWlsLgoKU28ganVzdCBza2lwIG92ZXIg
b2xkIHJlcGxpZXMuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUt
a29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KQW4gYWx0ZXJuYXRpdmUgd291bGQgYmUgdG8gZHJh
aW4gdGhlIGV0aGVybmV0IHF1ZXVlIGJlZm9yZSBhIG5ldyByZXF1ZXN0IGlzCnNlbnQuIERvbid0
IGtub3cgaG93IHRoYXQgd29ya3MgYW5kIEkgZG9uJ3Qgc2VlIG11Y2ggYmVuZWZpdCwgc28gSSBk
aWRuJ3QKdHJ5IHRvIGZpbmQgb3V0IDotKQotLS0KIGZzL25mcy5jIHwgNyArKysrKystCiAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZnMvbmZzLmMgYi9mcy9uZnMuYwppbmRleCA3MTczMjY0MzUxODkuLmU5YTZlZWRlMDZiZCAxMDA2
NDQKLS0tIGEvZnMvbmZzLmMKKysrIGIvZnMvbmZzLmMKQEAgLTI3NSw4ICsyNzUsMTMgQEAgc3Rh
dGljIGludCBycGNfY2hlY2tfcmVwbHkodW5zaWduZWQgY2hhciAqcGt0LCBpbnQgcnBjX3Byb2cs
IHVuc2lnbmVkIGxvbmcgcnBjX2kKIAogCW1lbWNweSgmcnBjLCBwa3QsIHNpemVvZihycGMpKTsK
IAotCWlmIChudG9obChycGMuaWQpICE9IHJwY19pZCkKKwlpZiAobnRvaGwocnBjLmlkKSAhPSBy
cGNfaWQpIHsKKwkJaWYgKG50b2hsKHJwYy5pZCkgPCBycGNfaWQpCisJCQkvKiBzdGFsZSBwYWNr
ZXQsIHdhaXQgYSBiaXQgbG9uZ2VyICovCisJCQlyZXR1cm4gMDsKKwogCQlyZXR1cm4gLUVJTlZB
TDsKKwl9CiAKIAlpZiAocnBjLnJzdGF0dXMgIHx8CiAJICAgIHJwYy52ZXJpZmllciB8fAotLSAK
MS44LjUuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
