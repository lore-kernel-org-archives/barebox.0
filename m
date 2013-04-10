Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPrLK-0000Ie-9u
 for barebox@lists.infradead.org; Wed, 10 Apr 2013 09:29:28 +0000
Received: from e6520eb.local.eukrea.com (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id C22734B01D4
 for <barebox@lists.infradead.org>; Wed, 10 Apr 2013 11:29:19 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Wed, 10 Apr 2013 11:29:18 +0200
Message-Id: <1365586158-25213-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] nand_base: detect more ONFI flash
To: barebox@lists.infradead.org

aWYgdGhlIGZsYXNoIGhhcyBhIGtub3duIHR5cGUsIHRoZSBPTkZJIGRldGVjdGlvbiB3b24ndCBv
Y2N1cgphbmQgdGh1cyB3ZSBtYXkgbm90IGRldGVjdCB0aGUgcmlnaHQgcGFyYW1ldGVycy4KQnkg
dGVzdGluZyBib3RoIG5hbWQgYW5kIHBhZ2VzaXplLCBhcyBkb25lIGluIHRoZSBrZXJuZWwsIHdl
CmNhbiBkZXRlY3QgT05GSSBmbGFzaCB3aXRoIGtub3cgSURzLgoKQXMgYW4gZXhhbXBsZSBvbiBh
biBpLk1YNTMgYm9hcmQgOgotIHdpdGhvdXQgdGhlIHBhdGNoIDoKTkFORCBkZXZpY2U6IE1hbnVm
YWN0dXJlciBJRDogMHgyYywgQ2hpcCBJRDogMHhkMwooTWljcm9uIE5BTkQgMUdpQiAzLDNWIDgt
Yml0KSwgcGFnZSBzaXplOiA0MDk2LCBPT0Igc2l6ZTogMTI4CgotIHdpdGggdGhlIHBhdGNoIDoK
T05GSSBmbGFzaCBkZXRlY3RlZCAuLi4gT05GSSBwYXJhbSBwYWdlIDAgdmFsaWQKTkFORCBkZXZp
Y2U6IE1hbnVmYWN0dXJlciBJRDogMHgyYywgQ2hpcCBJRDogMHhkMwooTWljcm9uIE1UMjlGOEcw
OEFCQUNBV1ApLCBwYWdlIHNpemU6IDQwOTYsIE9PQiBzaXplOiAyMjQKCmluIHRoZSBmaXJzdCBj
YXNlIHRoZSBPT0Igc2l6ZSBpcyB3cm9uZy4KClNpZ25lZC1vZmYtYnk6IEVyaWMgQsOpbmFyZCA8
ZXJpY0BldWtyZWEuY29tPgotLS0KIGRyaXZlcnMvbXRkL25hbmQvbmFuZF9iYXNlLmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL210ZC9uYW5kL25hbmRfYmFzZS5jIGIvZHJpdmVycy9tdGQvbmFuZC9uYW5k
X2Jhc2UuYwppbmRleCBmYTEwZDk1Li41YTRhNTJkIDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9u
YW5kL25hbmRfYmFzZS5jCisrKyBiL2RyaXZlcnMvbXRkL25hbmQvbmFuZF9iYXNlLmMKQEAgLTEx
ODgsNyArMTE4OCw3IEBAIHN0YXRpYyBzdHJ1Y3QgbmFuZF9mbGFzaF9kZXYgKm5hbmRfZ2V0X2Zs
YXNoX3R5cGUoc3RydWN0IG10ZF9pbmZvICptdGQsCiAJfQogCiAJY2hpcC0+b25maV92ZXJzaW9u
ID0gMDsKLQlpZiAoIXR5cGUpIHsKKwlpZiAoIXR5cGUtPm5hbWUgfHwgIXR5cGUtPnBhZ2VzaXpl
KSB7CiAJCS8qIENoZWNrIGlzIGNoaXAgaXMgT05GSSBjb21wbGlhbnQgKi8KIAkJcmV0ID0gbmFu
ZF9mbGFzaF9kZXRlY3Rfb25maShtdGQsIGNoaXAsICZidXN3KTsKIAkJaWYgKHJldCkKLS0gCjEu
Ny4xMS43CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
