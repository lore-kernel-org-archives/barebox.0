Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([2a01:e0c:1:1599::14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VpEKQ-0004qi-R9
 for barebox@lists.infradead.org; Sat, 07 Dec 2013 09:37:39 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp5-g21.free.fr (Postfix) with ESMTP id BC23FD48091
 for <barebox@lists.infradead.org>; Sat,  7 Dec 2013 10:37:15 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Sat,  7 Dec 2013 10:36:58 +0100
Message-Id: <1386409020-11914-5-git-send-email-eric@eukrea.com>
In-Reply-To: <1386409020-11914-1-git-send-email-eric@eukrea.com>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 5/7] atmel_nand: make chip_delay configurable
To: barebox@lists.infradead.org

dGhpcyBpcyB1c2VmdWxsIGZvciBjdXN0b20gYm9hcmRzIHdpdGggZGlmZmVyZW50IE5BTkQgZmxh
c2hzCihmb3IgaW5mb3JtYXRpb25zIHUtYm9vdCBkZWZhdWx0cyBjaGlwX2RlbGF5IHRvIDc1KQoK
U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vbWFjaC1hdDkxL2luY2x1ZGUvbWFjaC9ib2FyZC5oIHwgMSArCiBkcml2ZXJzL210ZC9uYW5k
L2F0bWVsX25hbmQuYyAgICAgICAgICAgfCA1ICsrKystCiAyIGZpbGVzIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtYXQ5
MS9pbmNsdWRlL21hY2gvYm9hcmQuaCBiL2FyY2gvYXJtL21hY2gtYXQ5MS9pbmNsdWRlL21hY2gv
Ym9hcmQuaAppbmRleCBhYTBmZGFlLi40ZTZmYThiIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNo
LWF0OTEvaW5jbHVkZS9tYWNoL2JvYXJkLmgKKysrIGIvYXJjaC9hcm0vbWFjaC1hdDkxL2luY2x1
ZGUvbWFjaC9ib2FyZC5oCkBAIC02NCw2ICs2NCw3IEBAIHN0cnVjdCBhdG1lbF9uYW5kX2RhdGEg
ewogCXU4CQllY2NfbW9kZTsJLyogTkFORF9FQ0NfKiAqLwogCXU4CQlvbl9mbGFzaF9iYnQ7CS8q
IFVzZSBmbGFzaCBiYXNlZCBiYnQgKi8KIAl1OAkJYnVzX29uX2QwOworCWludAkJY2hpcF9kZWxh
eTsKIAogCXU4CQlwbWVjY19jb3JyX2NhcDsKIAl1MTYJCXBtZWNjX3NlY3Rvcl9zaXplOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9hdG1lbF9uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5k
L2F0bWVsX25hbmQuYwppbmRleCA2NThhZTUyLi4yZmY3NDI3IDEwMDY0NAotLS0gYS9kcml2ZXJz
L210ZC9uYW5kL2F0bWVsX25hbmQuYworKysgYi9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQu
YwpAQCAtMTE2MSw3ICsxMTYxLDEwIEBAIHN0YXRpYyBpbnQgX19pbml0IGF0bWVsX25hbmRfcHJv
YmUoc3RydWN0IGRldmljZV9kICpkZXYpCiAJCW5hbmRfY2hpcC0+ZWNjLm1vZGUgPSBOQU5EX0VD
Q19IVzsKIAl9CiAKLQluYW5kX2NoaXAtPmNoaXBfZGVsYXkgPSAyMDsJCS8qIDIwdXMgY29tbWFu
ZCBkZWxheSB0aW1lICovCisJaWYgKGhvc3QtPmJvYXJkLT5jaGlwX2RlbGF5ID4gMCkKKwkJbmFu
ZF9jaGlwLT5jaGlwX2RlbGF5ID0gaG9zdC0+Ym9hcmQtPmNoaXBfZGVsYXk7CisJZWxzZQorCQlu
YW5kX2NoaXAtPmNoaXBfZGVsYXkgPSAyMDsJCS8qIDIwdXMgY29tbWFuZCBkZWxheSB0aW1lICov
CiAKIAlpZiAoaG9zdC0+Ym9hcmQtPmJ1c193aWR0aF8xNikgewkvKiAxNi1iaXQgYnVzIHdpZHRo
ICovCiAJCW5hbmRfY2hpcC0+b3B0aW9ucyB8PSBOQU5EX0JVU1dJRFRIXzE2OwotLSAKMS44LjMu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVi
b3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
