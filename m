Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGUW2-0007pr-5O
 for barebox@lists.infradead.org; Mon, 02 Sep 2013 13:50:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B8186BF0E8
 for <barebox@lists.infradead.org>; Mon,  2 Sep 2013 15:40:40 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Mon, 2 Sep 2013 15:49:37 +0200
Message-Id: <1378129777-8117-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH] PCM051: Fix muxing of MMC0 CD
To: barebox@lists.infradead.org

Q2FyZCBkZXRlY3Qgc2hvdWxkIGJlIHJhdGhlciBtdXhlZCBhcyBncGlvIHRoZW4KbW1jMF9zZGNk
LCBhcyBkcml2ZXIgZG9lcyBub3Qgc3VwcG9ydCB0aGlzLgoKU2lnbmVkLW9mZi1ieTogVGVyZXNh
IEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+Ci0tLQogYXJjaC9hcm0vYm9hcmRzL3BjbTA1MS9t
dXguYyB8ICAgIDIgKy0KIDEgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9wY20wNTEvbXV4LmMgYi9hcmNo
L2FybS9ib2FyZHMvcGNtMDUxL211eC5jCmluZGV4IDZlZjVhZjEuLmI1NGYzZDUgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtL2JvYXJkcy9wY20wNTEvbXV4LmMKKysrIGIvYXJjaC9hcm0vYm9hcmRzL3Bj
bTA1MS9tdXguYwpAQCAtMTAsNyArMTAsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1vZHVsZV9w
aW5fbXV4IG1tYzBfcGluX211eFtdID0gewogCXtPRkZTRVQobW1jMF9kYXQwKSwgKE1PREUoMCkg
fCBSWEFDVElWRSB8IFBVTExVUF9FTil9LAkvKiBNTUMwX0RBVDAgKi8KIAl7T0ZGU0VUKG1tYzBf
Y2xrKSwgKE1PREUoMCkgfCBSWEFDVElWRSB8IFBVTExVUF9FTil9LAkvKiBNTUMwX0NMSyAqLwog
CXtPRkZTRVQobW1jMF9jbWQpLCAoTU9ERSgwKSB8IFJYQUNUSVZFIHwgUFVMTFVQX0VOKX0sCS8q
IE1NQzBfQ01EICovCi0Je09GRlNFVChzcGkwX2NzMSksIChNT0RFKDUpIHwgUlhBQ1RJVkUgfCBQ
VUxMVVBfRU4pfSwJLyogTU1DMF9DRCAqLworCXtPRkZTRVQoc3BpMF9jczEpLCAoTU9ERSg3KSB8
IFJYQUNUSVZFIHwgUFVMTFVQX0VOKX0sCS8qIE1NQzBfQ0QgKi8KIAl7LTF9LAogfTsKIAotLSAK
MS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
