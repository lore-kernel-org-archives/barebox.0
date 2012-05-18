Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SVHov-00039Z-R1
 for barebox@lists.infradead.org; Fri, 18 May 2012 07:41:55 +0000
Received: from localhost.localdomain (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 45D014B002F
 for <barebox@lists.infradead.org>; Fri, 18 May 2012 09:41:46 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri, 18 May 2012 09:41:36 +0200
Message-Id: <1337326905-555-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v2 01/10] eukrea_cpuimx25: workaround ENGcm09152
To: barebox@lists.infradead.org

ZWxzZSBVU0IgZGV2aWNlIGRvZXNuJ3Qgd29yayBhcyB0aGUgaGFyZHdhcmUgZml4IGlzIHByZXNl
bnQgb24gdGhlCmJvYXJkcwoKU2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3Jl
YS5jb20+Ci0tLQogYXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgyNS9ldWtyZWFfY3B1aW14
MjUuYyB8ICAgIDIgKysKIDEgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAwIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14MjUvZXVr
cmVhX2NwdWlteDI1LmMgYi9hcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDI1L2V1a3JlYV9j
cHVpbXgyNS5jCmluZGV4IDFlNDg2NTAuLjc1YTk5ZjcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jv
YXJkcy9ldWtyZWFfY3B1aW14MjUvZXVrcmVhX2NwdWlteDI1LmMKKysrIGIvYXJjaC9hcm0vYm9h
cmRzL2V1a3JlYV9jcHVpbXgyNS9ldWtyZWFfY3B1aW14MjUuYwpAQCAtMjU1LDYgKzI1NSw4IEBA
IHN0YXRpYyBpbnQgZXVrcmVhX2NwdWlteDI1X2RldmljZXNfaW5pdCh2b2lkKQogCWlteDI1X3Vz
Yl9pbml0KCk7CiAJYWRkX2dlbmVyaWNfdXNiX2VoY2lfZGV2aWNlKC0xLCBJTVhfT1RHX0JBU0Ug
KyAweDQwMCwgTlVMTCk7CiAjZW5kaWYKKwkvKiBXb3JrYXJvdW5kIEVOR2NtMDkxNTIgKi8KKwl3
cml0ZWwocmVhZGwoSU1YX09UR19CQVNFICsgMHg2MDgpIHwgKDEgPDwgMjMpLCBJTVhfT1RHX0JB
U0UgKyAweDYwOCk7CiAJYWRkX2dlbmVyaWNfZGV2aWNlKCJmc2wtdWRjIiwgLTEsIE5VTEwsIElN
WF9PVEdfQkFTRSwgMHgyMDAsCiAJCQkgICBJT1JFU09VUkNFX01FTSwgJnVzYl9wZGF0YSk7CiAK
LS0gCjEuNy43LjYKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
