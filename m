Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SwcCW-0000oq-MR
 for barebox@lists.infradead.org; Wed, 01 Aug 2012 16:55:14 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Wed,  1 Aug 2012 18:54:37 +0200
Message-Id: <1343840077-2425-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] eukrea_cpuimx35: fix USB host
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgzNS9ldWtyZWFfY3B1aW14MzUuYyB8ICAgIDIgKy0KIDEg
ZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14MzUvZXVrcmVhX2NwdWlteDM1LmMgYi9h
cmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDM1L2V1a3JlYV9jcHVpbXgzNS5jCmluZGV4IDkz
ZDVhYzkuLjQ5ZGJhYmMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14
MzUvZXVrcmVhX2NwdWlteDM1LmMKKysrIGIvYXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgz
NS9ldWtyZWFfY3B1aW14MzUuYwpAQCAtMTA1LDcgKzEwNSw3IEBAIHN0YXRpYyB2b2lkIGlteDM1
X3VzYl9pbml0KHZvaWQpCiAJdG1wICY9IH4oTVgzNV9IMV9TSUNfTUFTSyB8IE1YMzVfSDFfUE1f
QklUIHwgTVgzNV9IMV9UTExfQklUIHwKIAkJTVgzNV9IMV9VU0JURV9CSVQgfCBNWDM1X0gxX0lQ
UFVFX0RPV05fQklUIHwgTVgzNV9IMV9JUFBVRV9VUF9CSVQpOwogCXRtcCB8PSAoTVhDX0VIQ0lf
SU5URVJGQUNFX1NJTkdMRV9VTkkpIDw8IE1YMzVfSDFfU0lDX1NISUZUOwotCXRtcCB8PSBNWDM1
X0gxX1VTQlRFX0JJVDsKKwl0bXAgfD0gTVgzNV9IMV9VU0JURV9CSVQgfCBNWDM1X0gxX1BNX0JJ
VCB8IE1YMzVfSDFfVExMX0JJVCA7CiAJdG1wIHw9IE1YMzVfSDFfSVBQVUVfRE9XTl9CSVQ7CiAJ
d3JpdGVsKHRtcCwgSU1YX09UR19CQVNFICsgMHg2MDApOwogCi0tIAoxLjcuNy42CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
