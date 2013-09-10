Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJRW6-0003Sv-6r
 for barebox@lists.infradead.org; Tue, 10 Sep 2013 17:14:19 +0000
Received: from e6520eb.local.eukrea.com (unknown [88.170.243.169])
 by smtp1-g21.free.fr (Postfix) with ESMTP id 6974C940233
 for <barebox@lists.infradead.org>; Tue, 10 Sep 2013 19:13:53 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 10 Sep 2013 19:13:33 +0200
Message-Id: <1378833214-19808-3-git-send-email-eric@eukrea.com>
In-Reply-To: <1378833214-19808-1-git-send-email-eric@eukrea.com>
References: <1378833214-19808-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 3/4] video/stm: don't fail when the pixel clock is properly set
To: barebox@lists.infradead.org

dGhlIGNoZWNrIGlzIHdyb25nIGFzIHdoZW4gdGhlIGNsb2NrIHJhdGUgaXMgY29ycmVjdGx5IHNl
dAp0aGUgZnVuY3Rpb24gd2lsbCByZXR1cm4gMC4KClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOpbmFy
ZCA8ZXJpY0BldWtyZWEuY29tPgotLS0KIGRyaXZlcnMvdmlkZW8vc3RtLmMgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3ZpZGVvL3N0bS5jIGIvZHJpdmVycy92aWRlby9zdG0uYwppbmRleCAwODc1YzliLi4y
NjAzMTI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZpZGVvL3N0bS5jCisrKyBiL2RyaXZlcnMvdmlk
ZW8vc3RtLmMKQEAgLTMzMSw3ICszMzEsNyBAQCBzdGF0aWMgaW50IHN0bWZiX2FjdGl2YXRlX3Zh
cihzdHJ1Y3QgZmJfaW5mbyAqZmJfaW5mbykKIAkvKiogQHRvZG8gZW5zdXJlIEhDTEsgaXMgYWN0
aXZlIGF0IHRoaXMgcG9pbnQgb2YgdGltZSEgKi8KIAogCXNpemUgPSBjbGtfc2V0X3JhdGUoZmJp
LT5jbGssIFBJQ09TMktIWihtb2RlLT5waXhjbG9jaykgKiAxMDAwKTsKLQlpZiAoc2l6ZSA9PSAw
KSB7CisJaWYgKHNpemUgIT0gMCkgewogCQlkZXZfZGJnKGZiaS0+aHdfZGV2LCAiVW5hYmxlIHRv
IHNldCBhIHZhbGlkIHBpeGVsIGNsb2NrXG4iKTsKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQotLSAK
MS44LjMuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
