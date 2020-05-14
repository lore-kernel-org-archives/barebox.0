Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZIUs-0005EV-2e
 for barebox@lists.infradead.org; Thu, 14 May 2020 18:22:19 +0000
Received: from mailer.emlix.com (p5098be52.dip0.t-ipconnect.de [80.152.190.82])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 57F315FD1F
 for <barebox@lists.infradead.org>; Thu, 14 May 2020 20:22:12 +0200 (CEST)
From: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>
Date: Thu, 14 May 2020 20:21:50 +0200
Message-Id: <a27e4e52c15a3b7c7dab0619523929ce12d772b9.1589477005.git.dg@emlix.com>
In-Reply-To: <cover.1589477005.git.dg@emlix.com>
References: <cover.1589477005.git.dg@emlix.com>
In-Reply-To: <cover.1589477005.git.dg@emlix.com>
References: <cover.1589477005.git.dg@emlix.com>
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
Subject: [PATCH v2 02/10] net: fixed-link phys are never acquired
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Rml4ZWQtbGluayBwaHlzIGhhdmUgdGhlaXIgYnVzIGZpZWxkIHNldCB0byBOVUxMLiBUaGlzIGNh
dXNlcyBhIGNyYXNoIHdoZW4KcGh5X2FjcXVpcmVkIHRyaWVzIHRvIGNoZWNrIHRoZSBzbGljZSBv
ZiB0aGUgYnVzLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIEdsw7Zja25lciA8ZGdAZW1saXguY29t
PgotLS0KIGluY2x1ZGUvbGludXgvcGh5LmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BoeS5o
IGIvaW5jbHVkZS9saW51eC9waHkuaAppbmRleCBlOTNmNmEwMWYuLjNmMGYzMWIzNSAxMDA2NDQK
LS0tIGEvaW5jbHVkZS9saW51eC9waHkuaAorKysgYi9pbmNsdWRlL2xpbnV4L3BoeS5oCkBAIC0z
NzAsNyArMzcwLDcgQEAgdm9pZCBwaHlfd3JpdGVfbW1kX2luZGlyZWN0KHN0cnVjdCBwaHlfZGV2
aWNlICpwaHlkZXYsIGludCBwcnRhZCwgaW50IGRldmFkLAogCiBzdGF0aWMgaW5saW5lIGJvb2wg
cGh5X2FjcXVpcmVkKHN0cnVjdCBwaHlfZGV2aWNlICpwaHlkZXYpCiB7Ci0JcmV0dXJuIHBoeWRl
diAmJiBzbGljZV9hY3F1aXJlZCgmcGh5ZGV2LT5idXMtPnNsaWNlKTsKKwlyZXR1cm4gcGh5ZGV2
ICYmIHBoeWRldi0+YnVzICYmIHNsaWNlX2FjcXVpcmVkKCZwaHlkZXYtPmJ1cy0+c2xpY2UpOwog
fQogCiAjaWZkZWYgQ09ORklHX1BIWUxJQgotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
