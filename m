Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SV2uq-0005ws-0v
 for barebox@lists.infradead.org; Thu, 17 May 2012 15:47:01 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 40409A619E
 for <barebox@lists.infradead.org>; Thu, 17 May 2012 17:46:54 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 17 May 2012 17:46:13 +0200
Message-Id: <1337269578-20570-11-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 11/16] iim: don't try to set ethaddr when NET is not selected
To: barebox@lists.infradead.org

YW4gb3R0aGVyIHdheSB0byBzb2x2ZSB0aGlzIHdvdWxkIGJlIHRvIHB1dCB0aGUgI2lmZGVmIENP
TkZJR19ORVQKYXJvdW5kIHh4eF9faWltX3JlZ2lzdGVyX2ZlY19ldGhhZGRyIGluIHRoZSBib2Fy
ZCBzdXBwb3J0IGJ1dCB0aGF0J3MKbGVzcyBnZW5lcmljLgoKU2lnbmVkLW9mZi1ieTogRXJpYyBC
w6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9hcm0vbWFjaC1pbXgvaW5jbHVkZS9t
YWNoL2lpbS5oIHwgICAgNCArKysrCiAxIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWlteC9pbmNsdWRlL21h
Y2gvaWltLmggYi9hcmNoL2FybS9tYWNoLWlteC9pbmNsdWRlL21hY2gvaWltLmgKaW5kZXggYjk3
Yzc0Mi4uNjFkNjhlMyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1pbXgvaW5jbHVkZS9tYWNo
L2lpbS5oCisrKyBiL2FyY2gvYXJtL21hY2gtaW14L2luY2x1ZGUvbWFjaC9paW0uaApAQCAtNjYs
NyArNjYsOSBAQCBzdGF0aWMgaW5saW5lIGludCBpbXg1MV9paW1fcmVnaXN0ZXJfZmVjX2V0aGFk
ZHIodm9pZCkKIAlpZiAocmV0ICE9IDYpCiAJCXJldHVybiAtRUlOVkFMOwogCisjaWZkZWYgQ09O
RklHX05FVAogCWV0aF9yZWdpc3Rlcl9ldGhhZGRyKDAsIGJ1Zik7CisjZW5kaWYKIAogCXJldHVy
biAwOwogfQpAQCAtODUsNyArODcsOSBAQCBzdGF0aWMgaW5saW5lIGludCBpbXgyNV9paW1fcmVn
aXN0ZXJfZmVjX2V0aGFkZHIodm9pZCkKIAlpZiAocmV0ICE9IDYpCiAJCXJldHVybiAtRUlOVkFM
OwogCisjaWZkZWYgQ09ORklHX05FVAogCWV0aF9yZWdpc3Rlcl9ldGhhZGRyKDAsIGJ1Zik7Cisj
ZW5kaWYKIAogCXJldHVybiAwOwogfQotLSAKMS43LjcuNgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
