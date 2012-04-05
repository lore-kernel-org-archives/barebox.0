Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SFjVI-0006cr-Mc
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 10:01:21 +0000
Received: from localhost.localdomain (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 756DB4B0117
 for <barebox@lists.infradead.org>; Thu,  5 Apr 2012 12:01:15 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu,  5 Apr 2012 12:01:11 +0200
Message-Id: <1333620071-21944-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1333620071-21944-1-git-send-email-eric@eukrea.com>
References: <1333620071-21944-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/2] at91sam9g45_devices: fix warning
To: barebox@lists.infradead.org

dGhpcyBwYXRjaCBmaXggdGhlIGZvbGxvd2luZyB3YXJuaW5ncyA6CmFyY2gvYXJtL21hY2gtYXQ5
MS9hdDkxc2FtOWc0NV9kZXZpY2VzLmM6MzA1OjM6IHdhcm5pbmc6IGluaXRpYWxpemF0aW9uIGRp
c2NhcmRzICdjb25zdCcgcXVhbGlmaWVyIGZyb20gcG9pbnRlciB0YXJnZXQgdHlwZSBbZW5hYmxl
ZCBieSBkZWZhdWx0XQphcmNoL2FybS9tYWNoLWF0OTEvYXQ5MXNhbTlnNDVfZGV2aWNlcy5jOjMw
OTozOiB3YXJuaW5nOiBpbml0aWFsaXphdGlvbiBkaXNjYXJkcyAnY29uc3QnIHF1YWxpZmllciBm
cm9tIHBvaW50ZXIgdGFyZ2V0IHR5cGUgW2VuYWJsZWQgYnkgZGVmYXVsdF0KClNpZ25lZC1vZmYt
Ynk6IEVyaWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0KIGFyY2gvYXJtL21hY2gtYXQ5
MS9hdDkxc2FtOWc0NV9kZXZpY2VzLmMgfCAgICA0ICsrLS0KIDEgZmlsZXMgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gt
YXQ5MS9hdDkxc2FtOWc0NV9kZXZpY2VzLmMgYi9hcmNoL2FybS9tYWNoLWF0OTEvYXQ5MXNhbTln
NDVfZGV2aWNlcy5jCmluZGV4IDA1YjE5N2MuLjI1YThkODAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
L21hY2gtYXQ5MS9hdDkxc2FtOWc0NV9kZXZpY2VzLmMKKysrIGIvYXJjaC9hcm0vbWFjaC1hdDkx
L2F0OTFzYW05ZzQ1X2RldmljZXMuYwpAQCAtMjk2LDkgKzI5Niw5IEBAIHZvaWQgYXQ5MV9hZGRf
ZGV2aWNlX21jaShzaG9ydCBtbWNfaWQsIHN0cnVjdCBhdG1lbF9tY2lfcGxhdGZvcm1fZGF0YSAq
ZGF0YSkge30KIAogI2lmIGRlZmluZWQoQ09ORklHX0RSSVZFUl9TUElfQVRNRUwpCiAvKiBTUEkg
Ki8KLXN0YXRpYyBjb25zdCB1bnNpZ25lZCBzcGkwX3N0YW5kYXJkX2NzWzRdID0geyBBVDkxX1BJ
Tl9QQjMsIEFUOTFfUElOX1BCMTgsIEFUOTFfUElOX1BCMTksIEFUOTFfUElOX1BEMjcgfTsKK3N0
YXRpYyB1bnNpZ25lZCBzcGkwX3N0YW5kYXJkX2NzWzRdID0geyBBVDkxX1BJTl9QQjMsIEFUOTFf
UElOX1BCMTgsIEFUOTFfUElOX1BCMTksIEFUOTFfUElOX1BEMjcgfTsKIAotc3RhdGljIGNvbnN0
IHVuc2lnbmVkIHNwaTFfc3RhbmRhcmRfY3NbNF0gPSB7IEFUOTFfUElOX1BCMTcsIEFUOTFfUElO
X1BEMjgsIEFUOTFfUElOX1BEMTgsIEFUOTFfUElOX1BEMTkgfTsKK3N0YXRpYyB1bnNpZ25lZCBz
cGkxX3N0YW5kYXJkX2NzWzRdID0geyBBVDkxX1BJTl9QQjE3LCBBVDkxX1BJTl9QRDI4LCBBVDkx
X1BJTl9QRDE4LCBBVDkxX1BJTl9QRDE5IH07CiAKIHN0YXRpYyBzdHJ1Y3QgYXQ5MV9zcGlfcGxh
dGZvcm1fZGF0YSBzcGlfcGRhdGFbXSA9IHsKIAlbMF0gPSB7Ci0tIAoxLjcuNy42CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
