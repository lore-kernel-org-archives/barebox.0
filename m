Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.26.mail-out.ovh.net ([46.105.35.144] helo=26.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PsypU-0004wt-1d
	for barebox@lists.infradead.org; Fri, 25 Feb 2011 14:39:36 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri, 25 Feb 2011 15:39:24 +0100
Message-Id: <1298644765-31654-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1298644765-31654-1-git-send-email-eric@eukrea.com>
References: <1298644765-31654-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/3] eukrea_cpuimx35: use OTG workaround only when gadget is
	selected
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgzNS9ldWtyZWFfY3B1aW14MzUuYyB8ICAgIDMgKystCiAx
IGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDM1L2V1a3JlYV9jcHVpbXgzNS5jIGIv
YXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgzNS9ldWtyZWFfY3B1aW14MzUuYwppbmRleCBm
N2E2MTY5Li5mMzc3NzkzIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlt
eDM1L2V1a3JlYV9jcHVpbXgzNS5jCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14
MzUvZXVrcmVhX2NwdWlteDM1LmMKQEAgLTE5OSwxMSArMTk5LDEyIEBAIHN0YXRpYyBpbnQgZXVr
cmVhX2NwdWlteDM1X2RldmljZXNfaW5pdCh2b2lkKQogCWlteDM1X3VzYl9pbml0KCk7CiAJcmVn
aXN0ZXJfZGV2aWNlKCZ1c2JoMl9kZXYpOwogI2VuZGlmCisjaWZkZWYgQ09ORklHX1VTQl9HQURH
RVQKIAkvKiBXb3JrYXJvdW5kIEVOR2NtMDkxNTIgKi8KIAl0bXAgPSByZWFkbChJTVhfT1RHX0JB
U0UgKyAweDYwOCk7CiAJd3JpdGVsKHRtcCB8ICgxIDw8IDIzKSwgSU1YX09UR19CQVNFICsgMHg2
MDgpOwogCXJlZ2lzdGVyX2RldmljZSgmdXNib3RnX2Rldik7Ci0KKyNlbmRpZgogCWFybWxpbnV4
X2FkZF9kcmFtKCZzZHJhbV9kZXYpOwogCWFybWxpbnV4X3NldF9ib290cGFyYW1zKCh2b2lkICop
MHg4MDAwMDEwMCk7CiAJYXJtbGludXhfc2V0X2FyY2hpdGVjdHVyZShNQUNIX1RZUEVfRVVLUkVB
X0NQVUlNWDM1KTsKLS0gCjEuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJv
eAo=
