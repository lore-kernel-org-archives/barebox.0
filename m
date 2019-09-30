Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEpNQ-0001Lw-DH
 for barebox@lists.infradead.org; Mon, 30 Sep 2019 06:41:47 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Mon, 30 Sep 2019 08:41:35 +0200
Message-Id: <20190930064137.2091-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH 1/3] state: backend_bucket_circular: harmonize code with
 dt-utils
To: Barebox List <barebox@lists.infradead.org>

Q29tcGFyaW5nIGJhcmVib3gnIGNvbW1pdCBbMV0gd2l0aCBkdC11dGlscycgY29tbWl0IFsyXSBp
dCBpcyBvYnZpb3VzIHRoYXQKYWRqdXN0aW5nIHRoZSByZXR1cm4gdmFsdWUgaGFzIGJlZW4gZm9y
Z290dGVuIGluIGJhcmVib3ggLSBmaXggdGhhdC4KKEFzIHRoZSBhY3R1YWwgY29kZSB0aGF0IGlz
IGNoYW5nZWQgaXMgcmVtb3ZlZCBieSB0aGUgcHJlcHJvY2Vzc2VyIHdoZW4KY29tcGlsaW5nIGJh
cmVib3ggdGhpcyBwYXRjaCBpcyBvbmx5IG9mIGNvc21ldGljIG5hdHVyZSB0byBrZWVwIGJvdGgg
Y29kZSBiYXNlcwppbiBzeW5jKS4KClsxXSA5ZDZkOTE5MzFhZmIgKCJzdGF0ZTogUmVtb3ZlIC1F
VUNMRUFOIGNoZWNrIGZyb20gdXNlcnNwYWNlIHRvb2wiKQpbMl0gNzkxYTI0MDQxMTZkICgic3Rh
dGU6IFJlbW92ZSAtRVVDTEVBTiBjaGVjayBmcm9tIHVzZXJzcGFjZSB0b29sIikKClNpZ25lZC1v
ZmYtYnk6IFVscmljaCDDlmxtYW5uIDx1Lm9lbG1hbm5AcGVuZ3V0cm9uaXguZGU+Ci0tLQogY29t
bW9uL3N0YXRlL2JhY2tlbmRfYnVja2V0X2NpcmN1bGFyLmMgfCAzICsrLQogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2NvbW1vbi9z
dGF0ZS9iYWNrZW5kX2J1Y2tldF9jaXJjdWxhci5jIGIvY29tbW9uL3N0YXRlL2JhY2tlbmRfYnVj
a2V0X2NpcmN1bGFyLmMKaW5kZXggNDc5NzBiNzlmMzZhLi42MTJmYTBjZDhhMTEgMTAwNjQ0Ci0t
LSBhL2NvbW1vbi9zdGF0ZS9iYWNrZW5kX2J1Y2tldF9jaXJjdWxhci5jCisrKyBiL2NvbW1vbi9z
dGF0ZS9iYWNrZW5kX2J1Y2tldF9jaXJjdWxhci5jCkBAIC0xNzksOSArMTc5LDEwIEBAIHN0YXRp
YyBpbnQgc3RhdGVfbXRkX3BlYl9yZWFkKHN0cnVjdCBzdGF0ZV9iYWNrZW5kX3N0b3JhZ2VfYnVj
a2V0X2NpcmN1bGFyICpjaXJjCiAJCWRldl9lcnIoY2lyYy0+ZGV2LCAiRmFpbGVkIHRvIHJlYWQg
Y2lyY3VsYXIgc3RvcmFnZSBsZW4gJWQsICVkXG4iLAogCQkJbGVuLCByZXQpOwogCQlmcmVlKGJ1
Zik7CisJCXJldHVybiByZXQ7CiAJfQogCi0JcmV0dXJuIHJldDsKKwlyZXR1cm4gMDsKIH0KIAog
c3RhdGljIGludCBzdGF0ZV9tdGRfcGViX3dyaXRlKHN0cnVjdCBzdGF0ZV9iYWNrZW5kX3N0b3Jh
Z2VfYnVja2V0X2NpcmN1bGFyICpjaXJjLAotLSAKMi4yMy4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
