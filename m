Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1ORj4R-0007Gl-Kr
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:50:08 +0000
From: =?utf-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 24 Jun 2010 11:49:56 +0200
Message-Id: <1277372997-6472-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1277372997-6472-1-git-send-email-eric@eukrea.com>
References: <1277372997-6472-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/3] unbreak imx-ipu-fb
To: barebox@lists.infradead.org

Y29tbWl0IGMzNzg5Y2Q0OWI0M2VjMWM0MTRiYTFiMGU5ZjQ4ZThjY2MxOWY4ZTEgc2V0IGZiMC5l
bmFibGUgdG8gMAphcyBhIGRlZmF1bHQuIFJlLWVuYWJsaW5nIHRoZSBkaXNwbGF5IGRvZXNuJ3Qg
d29yayBhZnRlciB0aGlzLgpSZW1vdmluZyBzZGNfZW5hYmxlX2NoYW5uZWwgZnJvbSBpbXhmYl9w
cm9iZSBmaXggdGhpcyBwcm9ibGVtLgoKVGhpcyBwYXRjaCBhbHNvIHJlbW92ZSB2ZXJib3NlIGxv
ZyBmcm9tIGlwdV9mYl9kaXNhYmxlLgoKUGF0Y2ggdGVzdGVkIG9uIGkuTVgzNS4KClNpZ25lZC1v
ZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0KIGRyaXZlcnMvdmlkZW8v
aW14LWlwdS1mYi5jIHwgICAgNCAtLS0tCiAxIGZpbGVzIGNoYW5nZWQsIDAgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2lteC1pcHUtZmIu
YyBiL2RyaXZlcnMvdmlkZW8vaW14LWlwdS1mYi5jCmluZGV4IDBiZDg2YjIuLjZkMWViNWUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vaW14LWlwdS1mYi5jCisrKyBiL2RyaXZlcnMvdmlkZW8v
aW14LWlwdS1mYi5jCkBAIC04MzUsOCArODM1LDYgQEAgc3RhdGljIHZvaWQgaXB1X2ZiX2Rpc2Fi
bGUoc3RydWN0IGZiX2luZm8gKmluZm8pCiAJc3RydWN0IGlwdV9mYl9pbmZvICpmYmkgPSBpbmZv
LT5wcml2OwogCXUzMiByZWc7CiAKLQlwcmludGYoIiVzXG4iLCBfX2Z1bmNfXyk7Ci0KIAlyZWcg
PSByZWdfcmVhZChmYmksIFNEQ19DT01fQ09ORik7CiAJcmVnICY9IH5TRENfQ09NX0JHX0VOOwog
CXJlZ193cml0ZShmYmksIHJlZywgU0RDX0NPTV9DT05GKTsKQEAgLTg4Myw4ICs4ODEsNiBAQCBz
dGF0aWMgaW50IGlteGZiX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogCQkJcmV0dXJuIC1F
Tk9NRU07CiAJfQogCi0Jc2RjX2VuYWJsZV9jaGFubmVsKGZiaSwgaW5mby0+c2NyZWVuX2Jhc2Up
OwotCiAJcmV0ID0gcmVnaXN0ZXJfZnJhbWVidWZmZXIoJmZiaS0+aW5mbyk7CiAJaWYgKHJldCA8
IDApIHsKIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcmVnaXN0ZXIgZnJhbWVidWZmZXJcbiIp
OwotLSAKMS42LjMuMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
