Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([212.27.42.3])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGcFy-0000IH-JO
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 23:42:47 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 29 Jan 2015 00:42:18 +0100
Message-Id: <1422488538-21580-1-git-send-email-eric@eukrea.com>
In-Reply-To: <1422488254-18414-1-git-send-email-eric@eukrea.com>
References: <1422488254-18414-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v2 1/3] dhcp: fix request packet's requested IP option
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

SW4gdGhlIHJlcXVlc3QgcGFja2V0LCB3ZSBhcmUgc3VwcG9zZWQgdG8gY29weSB0aGUgSVAgdGhh
dCB0aGUgREhDUCBzZXJ2ZXIKcHJvdmlkZWQgaW4gdGhlIG9mZmVyIHBhY2tldCBzbyB0aGF0IGRo
Y3BfZXh0ZW5kZWQgY2FuIGZpbGwgdGhlIG9wdGlvbiA1MC4KVGhlcmUgaXMgYWN0dWFsbHkgYW4g
ZXJyb3IgaW4gYmFyZWJveCBhcyB0aGUgcG9pbnRlciB0byB0aGUgcGFja2V0IGN1cnJlbnRseQpi
dWlsdCBpcyB1c2VkIGFzIHRoZSBzb3VyY2UgaW5zdGVhZCBvZiB0aGUgcG9pbnRlciB0byB0aGUg
b2ZmZXIgcGFja2V0LgpXaXRoIHRoaXMgcGF0Y2gsIGJhcmVib3ggbm93IHNlbmRzIGEgcmVxdWVz
dCBwYWNrZXQgd2hpY2ggaW5jbHVkZXMgdGhlIHJpZ2h0CnJlcXVlc3RlZCBJUCBpbiBvcHRpb24g
NTAuCgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCnYy
IDogcmVtb3ZlIDIgbGluZSBzdXBwcmVzc2VkIGJ5IGVycm9yLgoKIG5ldC9kaGNwLmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9uZXQvZGhjcC5jIGIvbmV0L2RoY3AuYwppbmRleCA5NTUxZDYwLi5hMjJmYWQwIDEwMDY0
NAotLS0gYS9uZXQvZGhjcC5jCisrKyBiL25ldC9kaGNwLmMKQEAgLTU3OSw3ICs1NzksNyBAQCBz
dGF0aWMgdm9pZCBkaGNwX3NlbmRfcmVxdWVzdF9wYWNrZXQoc3RydWN0IGJvb3RwICpicF9vZmZl
cikKIAkvKgogCSAqIENvcHkgb3B0aW9ucyBmcm9tIE9GRkVSIHBhY2tldCBpZiBwcmVzZW50CiAJ
ICovCi0JbmV0X2NvcHlfaXAoJk9mZmVyZWRJUCwgJmJwLT5icF95aWFkZHIpOworCW5ldF9jb3B5
X2lwKCZPZmZlcmVkSVAsICZicF9vZmZlci0+YnBfeWlhZGRyKTsKIAlleHRsZW4gPSBkaGNwX2V4
dGVuZGVkKCh1OCAqKWJwLT5icF92ZW5kLCBESENQX1JFUVVFU1QsIG5ldF9kaGNwX3NlcnZlcl9p
cCwKIAkJCQlPZmZlcmVkSVApOwogCi0tIAoxLjkuMwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK
