Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiNHR-0007jY-2y
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 09:37:10 +0000
Received: from localhost.localdomain (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id CD2744B01FB
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 10:37:03 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Wed,  4 Jan 2012 10:36:49 +0100
Message-Id: <1325669809-32637-5-git-send-email-eric@eukrea.com>
In-Reply-To: <1325669809-32637-1-git-send-email-eric@eukrea.com>
References: <1325669809-32637-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v4 5/5] eukrea_cpuimx35: fix compilation when
 CONFIG_USB_GADGET is enabled
To: barebox@lists.infradead.org

dGhpcyB3YXMgaW50cm9kdWNlZCBpbiAiNmIzZTAxYSBhcm06IGV1a3JlYTogRml4IGNvbXBpbGF0
aW9uIHdhcm5pbmciCgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNAZXVrcmVhLmNv
bT4KLS0tCiBhcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDM1L2V1a3JlYV9jcHVpbXgzNS5j
IHwgICAgMyArKysKIDEgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAwIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14MzUvZXVrcmVh
X2NwdWlteDM1LmMgYi9hcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDM1L2V1a3JlYV9jcHVp
bXgzNS5jCmluZGV4IDIwY2ZhZDQuLmQxNjdhYjkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJk
cy9ldWtyZWFfY3B1aW14MzUvZXVrcmVhX2NwdWlteDM1LmMKKysrIGIvYXJjaC9hcm0vYm9hcmRz
L2V1a3JlYV9jcHVpbXgzNS9ldWtyZWFfY3B1aW14MzUuYwpAQCAtMTQ0LDYgKzE0NCw5IEBAIHBv
c3RtbXVfaW5pdGNhbGwoZXVrcmVhX2NwdWlteDM1X21tdV9pbml0KTsKIAogc3RhdGljIGludCBl
dWtyZWFfY3B1aW14MzVfZGV2aWNlc19pbml0KHZvaWQpCiB7CisjaWZkZWYgQ09ORklHX1VTQl9H
QURHRVQKKwl1bnNpZ25lZCBpbnQgdG1wOworI2VuZGlmCiAJaW14MzVfYWRkX25hbmQoJm5hbmRf
aW5mbyk7CiAKIAlkZXZmc19hZGRfcGFydGl0aW9uKCJuYW5kMCIsIDB4MDAwMDAsIDB4NDAwMDAs
IFBBUlRJVElPTl9GSVhFRCwgInNlbGZfcmF3Iik7Ci0tIAoxLjcuNy41CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QK
YmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
