Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dfIO8-0000pP-Qs
 for barebox@lists.infradead.org; Wed, 09 Aug 2017 04:14:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id A9F9E9C2927
 for <barebox@lists.infradead.org>; Wed,  9 Aug 2017 00:13:23 -0400 (EDT)
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@savoirfairelinux.com>
Date: Wed,  9 Aug 2017 00:13:18 -0400
Message-Id: <20170809041320.28874-1-gael.portay@savoirfairelinux.com>
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
Subject: [PATCH 0/2] readline_simple: return -1 if getc fails
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@savoirfairelinux.com>

RGVhciBtYWludGFpbmVycywKCkkgY2FtZSBhY2Nyb3NzIHRoaXMgaXNzdWUgd2hlbiBJIHdhcyB0
cnlpbmcgdG8gYWRkIHN1cHBvcnQgZm9yIGEgbmV3IE1JUFMKYm9hcmQuCgpUaGUgZ2V0YygpIGZ1
bmN0aW9uIGZyb20gY29uc29sZV9zaW1wbGUuYyByZXR1cm5zIC1FSU5WQUwgd2hlbiBubyBjb25z
b2xlIGlzCnJlZ2lzdGVyZWQuCgpJdCBjYXVzZXMgcmVhZGxpbmVfc2ltcGxlIHRvIHByaW50IGEg
bm9uLXByaW50YWJsZSBjaGFyYWN0ZXIgKC1FSU5WQUwgaW4gdGhpcwpjYXNlKS4gRnVydGhlcm1v
cmUsIGl0IGNhdXNlcyBhbiBpbmZpbml0ZSBsb29wOiByZWFkbGluZSBuZXZlciByZXR1cm5zLgoK
CWJhcmVib3g6LyDvv73vv73vv70oLi4uKe+/ve+/ve+/vQoKV2l0aCB0aGlzIHBhdGNoLCB0aGUg
ZXJyb3IgaXMgbm8gbW9yZSBleHBsaWNpdCBidXQgdGhlIHJlYWRsaW5lIGZ1bmN0aW9uIHN0b3Bz
CnRvIHByaW50IGEgZHVtbXkgY2hhcmFjdGVyIGFuZCByZXR1cm5zIHRvIHNoZWxsLgoKCWJhcmVi
b3g6LyA8SU5URVJSVVBUPgoJYmFyZWJveDovIDxJTlRFUlJVUFQ+CgliYXJlYm94Oi8gPElOVEVS
UlVQVD4KCSguLi4pCgliYXJlYm94Oi8gPElOVEVSUlVQVD4KCWJhcmVib3g6LyA8SU5URVJSVVBU
PgoJYmFyZWJveDovIDxJTlRFUlJVUFQ+CgpUaGUgc2Vjb25kIHBhdGNoIGlzIGEgc2ltcGxlIGNs
ZWFudXAgb2YgdGhlIGluLWZpbGUgZG9jdW1lbnRhdGlvbi4KCkNoYW5nZXMgc2luY2UgdjE6CiAt
IGNoYW5nZSBjIHZhcmlhYmxlIHR5cGUgZnJvbSBjaGFyIGluIGludAogLSBzZXQgKnAgdG8gTlVM
IGJlZm9yZSByZXR1cm5pbmcgLTEgd2hlbiBnZXRjaGFyIHJldHVybnMgYW4gZXJyb3IKIC0gdXBk
YXRlIGZ1bmN0aW9uIGRvY3VtZW50YXRpb24KClJlZ2FyZHMsCkdhw6tsIFBPUlRBWSAoMik6CiAg
cmVhZGxpbmVfc2ltcGxlOiByZXR1cm4gLTEgaWYgZ2V0YyBmYWlscwogIHJlYWRsaW5lX3NpbXBs
ZTogcmVtb3ZlIG9ic29sZXRlIGRvY3VtZW50YXRpb24KCiBsaWIvcmVhZGxpbmVfc2ltcGxlLmMg
fCAxMSArKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxl
dGlvbnMoLSkKCi0tIAoyLjEzLjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
