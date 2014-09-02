Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XOlx5-0006Fl-3A
 for barebox@lists.infradead.org; Tue, 02 Sep 2014 11:08:43 +0000
Received: by mail-wi0-f178.google.com with SMTP id r20so7602899wiv.11
 for <barebox@lists.infradead.org>; Tue, 02 Sep 2014 04:08:20 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Tue,  2 Sep 2014 13:08:00 +0200
Message-Id: <1409656080-19280-4-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1409656080-19280-1-git-send-email-poggi.raph@gmail.com>
References: <1409656080-19280-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v3 3/3] at91sam9g45: add device tree gpio clocks
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

U2lnbmVkLW9mZi1ieTogUmFwaGHDq2wgUG9nZ2kgPHBvZ2dpLnJhcGhAZ21haWwuY29tPgotLS0K
IGFyY2gvYXJtL21hY2gtYXQ5MS9hdDkxc2FtOWc0NS5jIHwgICAgNSArKysrKwogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtYXQ5MS9h
dDkxc2FtOWc0NS5jIGIvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1LmMKaW5kZXggZDE5
ZDI2YS4uOGMwMjBmYSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1
LmMKKysrIGIvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1LmMKQEAgLTIwMSw2ICsyMDEs
MTEgQEAgc3RhdGljIHN0cnVjdCBjbGtfbG9va3VwIHBlcmlwaF9jbG9ja3NfbG9va3Vwc1tdID0g
ewogCUNMS0RFVl9ERVZfSUQoImF0OTFybTkyMDAtZ3BpbzIiLCAmcGlvQ19jbGspLAogCUNMS0RF
Vl9ERVZfSUQoImF0OTFybTkyMDAtZ3BpbzMiLCAmcGlvREVfY2xrKSwKIAlDTEtERVZfREVWX0lE
KCJhdDkxcm05MjAwLWdwaW80IiwgJnBpb0RFX2NsayksCisJQ0xLREVWX0RFVl9JRCgiZmZmZmYy
MDAuZ3BpbyIsICZwaW9BX2NsayksCisJQ0xLREVWX0RFVl9JRCgiZmZmZmY0MDAuZ3BpbyIsICZw
aW9CX2NsayksCisJQ0xLREVWX0RFVl9JRCgiZmZmZmY2MDAuZ3BpbyIsICZwaW9DX2NsayksCisJ
Q0xLREVWX0RFVl9JRCgiZmZmZmY4MDAuZ3BpbyIsICZwaW9ERV9jbGspLAorCUNMS0RFVl9ERVZf
SUQoImZmZmZmYTAwLmdwaW8iLCAmcGlvREVfY2xrKSwKIAlDTEtERVZfREVWX0lEKCJhdDkxLXBp
dCIsICZtY2spLAogCUNMS0RFVl9DT05fREVWX0lEKCJoY2sxIiwgImF0bWVsX2xjZGZiIiwgJmxj
ZGNfY2xrKSwKIH07Ci0tIAoxLjcuOS41CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFy
ZWJveAo=
