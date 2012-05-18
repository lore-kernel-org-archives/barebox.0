Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SVHpD-0003GJ-NV
 for barebox@lists.infradead.org; Fri, 18 May 2012 07:42:12 +0000
Received: from localhost.localdomain (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 759674B002F
 for <barebox@lists.infradead.org>; Fri, 18 May 2012 09:42:06 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri, 18 May 2012 09:41:42 +0200
Message-Id: <1337326905-555-7-git-send-email-eric@eukrea.com>
In-Reply-To: <1337326905-555-1-git-send-email-eric@eukrea.com>
References: <1337326905-555-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v2 07/10] iim: fix compilation when NET is not selected
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogaW5jbHVk
ZS9uZXQuaCB8ICAgIDcgKysrKysrLQogMSBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQuaCBiL2luY2x1ZGUvbmV0
LmgKaW5kZXggM2YyMTg3ZS4uZWIwODdiMiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9uZXQuaAorKysg
Yi9pbmNsdWRlL25ldC5oCkBAIC02NCw4ICs2NCwxMyBAQCB2b2lkIGV0aF9oYWx0KHZvaWQpOwkJ
CS8qIHN0b3AgU0NDCQkJKi8KICAqIGJvYXJkIGNvZGUgZm9yIGJvYXJkcyB3aGljaCBzdG9yZSB0
aGVpciBNQUMgYWRkcmVzcyBhdCBzb21lIHVudXN1YWwKICAqIHBsYWNlLgogICovCisjaWYgIWRl
ZmluZWQoQ09ORklHX05FVCkKK3N0YXRpYyBpbmxpbmUgdm9pZCBldGhfcmVnaXN0ZXJfZXRoYWRk
cihpbnQgZXRoaWQsIGNvbnN0IGNoYXIgKmV0aGFkZHIpCit7Cit9CisjZWxzZQogdm9pZCBldGhf
cmVnaXN0ZXJfZXRoYWRkcihpbnQgZXRoaWQsIGNvbnN0IGNoYXIgKmV0aGFkZHIpOwotCisjZW5k
aWYKIC8qCiAgKglFdGhlcm5ldCBoZWFkZXIKICAqLwotLSAKMS43LjcuNgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0
CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
