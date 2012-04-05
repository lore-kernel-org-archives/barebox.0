Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SFjVF-0006av-Ie
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 10:01:19 +0000
Received: from localhost.localdomain (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 767014B01B8
 for <barebox@lists.infradead.org>; Thu,  5 Apr 2012 12:01:12 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu,  5 Apr 2012 12:01:10 +0200
Message-Id: <1333620071-21944-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/2] fix mxs iomux error in mx23 case
To: barebox@lists.infradead.org

ZTYyZWRkMyBteHM6IEZpeCBzdXBwb3J0IGZvciBCSVRLRUVQRVIoKSBtYWNybwphZGRlZCB0aGlz
IG1hY3JvIGluIGlvbXV4LWlteGMuYyBidXQgdGhlIG1hY3JvIGlzIG5vdCBwcmVzZW50CmluIHRo
ZSBpLk1YMjMgY2FzZS4gQWRkaW5nIGl0IGluIGlvbXV4LWlteDIzLmggZml4IGJvdGgKaW14MjNl
dmtfZGVmY29uZmlnIGFuZCBjaHVtYnlvbmVfZGVmY29uZmlnCgpTaWduZWQtb2ZmLWJ5OiBFcmlj
IELDqW5hcmQgPGVyaWNAZXVrcmVhLmNvbT4KLS0tCiBhcmNoL2FybS9tYWNoLW14cy9pbmNsdWRl
L21hY2gvaW9tdXgtaW14MjMuaCB8ICAgIDQgKysrKwogMSBmaWxlcyBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1teHMv
aW5jbHVkZS9tYWNoL2lvbXV4LWlteDIzLmggYi9hcmNoL2FybS9tYWNoLW14cy9pbmNsdWRlL21h
Y2gvaW9tdXgtaW14MjMuaAppbmRleCBiZWJhZjU2Li43YjI4ODNjIDEwMDY0NAotLS0gYS9hcmNo
L2FybS9tYWNoLW14cy9pbmNsdWRlL21hY2gvaW9tdXgtaW14MjMuaAorKysgYi9hcmNoL2FybS9t
YWNoLW14cy9pbmNsdWRlL21hY2gvaW9tdXgtaW14MjMuaApAQCAtNjMsOSArNjMsMTMgQEAKIAog
LyogY29udHJvbCBwYWQncyBwdWxsIHVwIC8gYml0IGtlZXBlciBmZWF0dXJlICovCiAjZGVmaW5l
IFBFICgxIDw8IDEwKQorI2RlZmluZSBCSyAoMSA8PCAxMSkJLyogRklYTUUgdXNlZnVsIHRvIGRp
c3Rpbmd1aXNoPyAqLwogI2RlZmluZSBQRV9QUkVTRU5UKHgpICghISgoeCkgJiBQRSkpCisjZGVm
aW5lIEJLX1BSRVNFTlQoeCkgKCEhKCh4KSAmIEJLKSkKICNkZWZpbmUgUFVMTFVQKHgpICgoeCkg
PDwgMTMpCisjZGVmaW5lIEJJVEtFRVBFUih4KSAoKHgpIDw8IDE0KQogI2RlZmluZSBHRVRfUFVM
TFVQKHgpICghISgoeCkgJiAoMSA8PCAxMykpKQorI2RlZmluZSBHRVRfQklUS0VFUEVSKHgpICgh
ISgoeCkgJiBCSVRLRUVQRVIoMSkpKQogCiAvKiBjb250cm9sIHBhZCdzIHZvbHRhZ2UgZmVhdHVy
ZSAqLwogI2RlZmluZSBWRSAoMSA8PCAxNCkKLS0gCjEuNy43LjYKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJl
Ym94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9iYXJlYm94Cg==
