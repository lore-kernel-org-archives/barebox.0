Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SV2uw-00060O-Qo
 for barebox@lists.infradead.org; Thu, 17 May 2012 15:47:08 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 182E3A61AD
 for <barebox@lists.infradead.org>; Thu, 17 May 2012 17:47:00 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 17 May 2012 17:46:15 +0200
Message-Id: <1337269578-20570-13-git-send-email-eric@eukrea.com>
In-Reply-To: <1337269578-20570-1-git-send-email-eric@eukrea.com>
References: <1337269578-20570-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 13/16] eukrea_cpuimx25: fix PHY address
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgyNS9ldWtyZWFfY3B1aW14MjUuYyB8ICAgIDIgKy0KIDEg
ZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14MjUvZXVrcmVhX2NwdWlteDI1LmMgYi9h
cmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDI1L2V1a3JlYV9jcHVpbXgyNS5jCmluZGV4IDA3
YThiYzAuLmE2NzVkYTUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14
MjUvZXVrcmVhX2NwdWlteDI1LmMKKysrIGIvYXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgy
NS9ldWtyZWFfY3B1aW14MjUuYwpAQCAtODcsNyArODcsNyBAQCB1bnNpZ25lZCBsb25nIF9faW1h
Z2VfbGVuX3NlY3Rpb24gYmFyZWJveF9sZW4gPSBEQ0RfQkFSRUJPWF9TSVpFOwogCiBzdGF0aWMg
c3RydWN0IGZlY19wbGF0Zm9ybV9kYXRhIGZlY19pbmZvID0gewogCS54Y3ZfdHlwZQk9IFJNSUks
Ci0JLnBoeV9hZGRyCT0gMSwKKwkucGh5X2FkZHIJPSAwLAogfTsKIAogc3RydWN0IGlteF9uYW5k
X3BsYXRmb3JtX2RhdGEgbmFuZF9pbmZvID0gewotLSAKMS43LjcuNgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2JhcmVib3gK
