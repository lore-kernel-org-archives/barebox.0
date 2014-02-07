Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBsyZ-00004w-OC
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 21:28:47 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  7 Feb 2014 22:28:05 +0100
Message-Id: <1391808493-27328-3-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1391808493-27328-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1391808493-27328-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH v2 03/11] nfs: skip over stale rpc packets
To: barebox@lists.infradead.org

V2hlbiBhIGZvcm1lciB0cmFuc2FjdGlvbiB3YXMgYWJvcnRlZCBieSBoaXR0aW5nIEN0cmwtQyB0
aGUgb2xkIHJlcGx5IG1pZ2h0CnN0aWxsIGhhbmcgaW4gdGhlIGV0aGVybmV0IGNvbnRyb2xsZXIg
bWFraW5nIGFsbCBmdXJ0aGVyIHRyYW5zYWN0aW9ucyBmYWlsLgoKU28ganVzdCBza2lwIG92ZXIg
b2xkIHJlcGxpZXMuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUt
a29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KCk5vdGVzOgogICAgQ2hhbmdlZCBpbiB2MjoKICAg
ICAtIHVzZQogICAgCWlmIChycGNfaWQgLSBudG9obChycGMuaWQpID09IDEpCiAgICAgICBpbnN0
ZWFkIG9mCiAgICAJaWYgKG50b2hsKHJwYy5pZCkgPCBycGNfaWQpCiAgICAgICB0byBkcm9wIGF0
IG1vc3QgYSBzaW5nbGUgc3RhbGUgcmVwbHkgYW5kIGhhbmRsZSBvdmVyZmxvdyBwcm9wZXJseQog
ICAgCiAgICBBbiBhbHRlcm5hdGl2ZSB3b3VsZCBiZSB0byBkcmFpbiB0aGUgZXRoZXJuZXQgcXVl
dWUgYmVmb3JlIGEgbmV3IHJlcXVlc3QgaXMKICAgIHNlbnQuIERvbid0IGtub3cgaG93IHRoYXQg
d29ya3MgYW5kIEkgZG9uJ3Qgc2VlIG11Y2ggYmVuZWZpdCwgc28gSSBkaWRuJ3QKICAgIHRyeSB0
byBmaW5kIG91dCA6LSkKCiBmcy9uZnMuYyB8IDcgKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2ZzL25mcy5jIGIvZnMv
bmZzLmMKaW5kZXggNjU4MmJhZTdkYjMxLi43NmQ4YzA1OTVkYjQgMTAwNjQ0Ci0tLSBhL2ZzL25m
cy5jCisrKyBiL2ZzL25mcy5jCkBAIC0yNzUsOCArMjc1LDEzIEBAIHN0YXRpYyBpbnQgcnBjX2No
ZWNrX3JlcGx5KHVuc2lnbmVkIGNoYXIgKnBrdCwgaW50IHJwY19wcm9nLCB1bnNpZ25lZCBsb25n
IHJwY19pCiAKIAltZW1jcHkoJnJwYywgcGt0LCBzaXplb2YocnBjKSk7CiAKLQlpZiAobnRvaGwo
cnBjLmlkKSAhPSBycGNfaWQpCisJaWYgKG50b2hsKHJwYy5pZCkgIT0gcnBjX2lkKSB7CisJCWlm
IChycGNfaWQgLSBudG9obChycGMuaWQpID09IDEpCisJCQkvKiBzdGFsZSBwYWNrZXQsIHdhaXQg
YSBiaXQgbG9uZ2VyICovCisJCQlyZXR1cm4gMDsKKwogCQlyZXR1cm4gLUVJTlZBTDsKKwl9CiAK
IAlpZiAocnBjLnJzdGF0dXMgIHx8CiAJICAgIHJwYy52ZXJpZmllciB8fAotLSAKMS44LjUuMgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3gg
bWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
