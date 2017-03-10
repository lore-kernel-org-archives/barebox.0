Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo179.mail-out.ovh.net ([46.105.76.148])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmLde-0000VE-BL
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 14:35:29 +0000
Received: from player716.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id 957C229AFF
 for <barebox@lists.infradead.org>; Fri, 10 Mar 2017 15:35:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 10 Mar 2017 15:41:16 +0100
Message-Id: <1489156876-25133-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] fix: console: expose consoles in devfs
To: barebox@lists.infradead.org

b24gNjRiaXQgc3NpemVfdCBpcyBub3QgYW4gaW50IGJ1dCBhIGxvbmcKCnNvIHVzZSB0aGUgcHJv
dHlwZSBmb3IgZm9wc193cml0ZSBzc2l6ZV90Cgpjb21tb24vY29uc29sZS5jOiBJbiBmdW5jdGlv
biDigJhjb25zb2xlX3JlZ2lzdGVy4oCZOgpjb21tb24vY29uc29sZS5jOjM3MzoyMjogd2Fybmlu
ZzogYXNzaWdubWVudCBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGUgWy1XaW5jb21wYXRp
YmxlLXBvaW50ZXItdHlwZXNdCiAgbmV3Y2Rldi0+Zm9wcy53cml0ZSA9IGZvcHNfd3JpdGU7Cgpp
biBjb21taXQgYjRmNTVmY2YzNTVhNGQwYWM0NTY0NDVhNWY0MmYyNTlmMjgxMmI1NwpCeSBCYXN0
aWFuIFN0ZW5kZXIgPGJzdEBwZW5ndXRyb25peC5kZT4KClNpZ25lZC1vZmYtYnk6IEplYW4tQ2hy
aXN0b3BoZSBQTEFHTklPTC1WSUxMQVJEIDxwbGFnbmlvakBqY3Jvc29mdC5jb20+Ci0tLQogY29t
bW9uL2NvbnNvbGUuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2NvbW1vbi9jb25zb2xlLmMgYi9jb21tb24vY29uc29s
ZS5jCmluZGV4IDY2OGM4NzBhYi4uNDEyN2U3NjE3IDEwMDY0NAotLS0gYS9jb21tb24vY29uc29s
ZS5jCisrKyBiL2NvbW1vbi9jb25zb2xlLmMKQEAgLTI5Niw3ICsyOTYsNyBAQCBzdGF0aWMgaW50
IGZvcHNfZmx1c2goc3RydWN0IGNkZXYgKmRldikKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIGlu
dCBmb3BzX3dyaXRlKHN0cnVjdCBjZGV2KiBkZXYsIGNvbnN0IHZvaWQqIGJ1Ziwgc2l6ZV90IGNv
dW50LAorc3RhdGljIHNzaXplX3QgZm9wc193cml0ZShzdHJ1Y3QgY2RldiogZGV2LCBjb25zdCB2
b2lkKiBidWYsIHNpemVfdCBjb3VudCwKIAkJICAgICAgbG9mZl90IG9mZnNldCwgdWxvbmcgZmxh
Z3MpCiB7CiAJc3RydWN0IGNvbnNvbGVfZGV2aWNlICpwcml2ID0gZGV2LT5wcml2OwotLSAKMi4x
MS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFy
ZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
