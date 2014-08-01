Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDCoL-0004uN-W9
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 13:23:54 +0000
Received: by mail-wi0-f182.google.com with SMTP id d1so1344508wiv.15
 for <barebox@lists.infradead.org>; Fri, 01 Aug 2014 06:23:32 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Fri,  1 Aug 2014 15:24:24 +0200
Message-Id: <1406899464-29144-3-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1406899464-29144-1-git-send-email-poggi.raph@gmail.com>
References: <1406899464-29144-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 2/2] at91sam9g45: add device tree gpio clocks
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

U2lnbmVkLW9mZi1ieTogUmFwaGHDq2wgUG9nZ2kgPHBvZ2dpLnJhcGhAZ21haWwuY29tPgotLS0K
IGFyY2gvYXJtL21hY2gtYXQ5MS9hdDkxc2FtOWc0NS5jIHwgICAgNSArKysrKwogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtYXQ5MS9h
dDkxc2FtOWc0NS5jIGIvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1LmMKaW5kZXggOWE1
MGRlYi4uZjYwMzFmMCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1
LmMKKysrIGIvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1LmMKQEAgLTE5Nyw2ICsxOTcs
MTEgQEAgc3RhdGljIHN0cnVjdCBjbGtfbG9va3VwIHBlcmlwaF9jbG9ja3NfbG9va3Vwc1tdID0g
ewogCUNMS0RFVl9ERVZfSUQoImF0OTFybTkyMDAtZ3BpbzIiLCAmcGlvQ19jbGspLAogCUNMS0RF
Vl9ERVZfSUQoImF0OTFybTkyMDAtZ3BpbzMiLCAmcGlvREVfY2xrKSwKIAlDTEtERVZfREVWX0lE
KCJhdDkxcm05MjAwLWdwaW80IiwgJnBpb0RFX2NsayksCisJQ0xLREVWX0NPTl9ERVZfSUQoTlVM
TCwgImZmZmZmMjAwLmdwaW8iLCAmcGlvQV9jbGspLAorCUNMS0RFVl9DT05fREVWX0lEKE5VTEws
ICJmZmZmZjQwMC5ncGlvIiwgJnBpb0JfY2xrKSwKKwlDTEtERVZfQ09OX0RFVl9JRChOVUxMLCAi
ZmZmZmY2MDAuZ3BpbyIsICZwaW9DX2NsayksCisJQ0xLREVWX0NPTl9ERVZfSUQoTlVMTCwgImZm
ZmZmODAwLmdwaW8iLCAmcGlvREVfY2xrKSwKKwlDTEtERVZfQ09OX0RFVl9JRChOVUxMLCAiZmZm
ZmZhMDAuZ3BpbyIsICZwaW9ERV9jbGspLAogCUNMS0RFVl9ERVZfSUQoImF0OTEtcGl0IiwgJm1j
ayksCiAJQ0xLREVWX0NPTl9ERVZfSUQoImhjazEiLCAiYXRtZWxfbGNkZmIiLCAmbGNkY19jbGsp
LAogfTsKLS0gCjEuNy45LjUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
