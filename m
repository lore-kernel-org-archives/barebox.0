Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEyHP-0008IT-2L
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 10:17:11 +0000
Received: by mail-wi0-f180.google.com with SMTP id n3so2901315wiv.13
 for <barebox@lists.infradead.org>; Wed, 06 Aug 2014 03:16:48 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Wed,  6 Aug 2014 12:17:48 +0200
Message-Id: <1407320269-32368-3-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1407320269-32368-1-git-send-email-poggi.raph@gmail.com>
References: <1407320269-32368-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v3 2/3] at91sam9g45: clock: add i2c clocks
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

QWRkIHRoZSBkZXZpY2UgdHJlZSBhbmQgbm9uIGRldmljZSB0cmVlIGF0OTEgaTJjIGNsb2Nrcy4K
ClNpZ25lZC1vZmYtYnk6IFJhcGhhw6tsIFBvZ2dpIDxwb2dnaS5yYXBoQGdtYWlsLmNvbT4KLS0t
CiBhcmNoL2FybS9tYWNoLWF0OTEvYXQ5MXNhbTlnNDUuYyB8ICAgIDQgKysrKwogMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtYXQ5MS9h
dDkxc2FtOWc0NS5jIGIvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1LmMKaW5kZXggOWE1
MGRlYi4uZDE5ZDI2YSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1
LmMKKysrIGIvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1LmMKQEAgLTE5Miw2ICsxOTIs
MTAgQEAgc3RhdGljIHN0cnVjdCBjbGtfbG9va3VwIHBlcmlwaF9jbG9ja3NfbG9va3Vwc1tdID0g
ewogCUNMS0RFVl9DT05fREVWX0lEKCJtY2lfY2xrIiwgImF0bWVsX21jaTEiLCAmbW1jMV9jbGsp
LAogCUNMS0RFVl9DT05fREVWX0lEKCJzcGlfY2xrIiwgImF0bWVsX3NwaTAiLCAmc3BpMF9jbGsp
LAogCUNMS0RFVl9DT05fREVWX0lEKCJzcGlfY2xrIiwgImF0bWVsX3NwaTEiLCAmc3BpMV9jbGsp
LAorCUNMS0RFVl9ERVZfSUQoImF0OTFzYW05ZzEwLWkyYzAiLCAmdHdpMF9jbGspLAorCUNMS0RF
Vl9ERVZfSUQoImF0OTFzYW05ZzEwLWkyYzEiLCAmdHdpMV9jbGspLAorCUNMS0RFVl9ERVZfSUQo
ImZmZjg0MDAwLmkyYyIsICZ0d2kwX2NsayksCisJQ0xLREVWX0RFVl9JRCgiZmZmODgwMDAuaTJj
IiwgJnR3aTFfY2xrKSwKIAlDTEtERVZfREVWX0lEKCJhdDkxcm05MjAwLWdwaW8wIiwgJnBpb0Ff
Y2xrKSwKIAlDTEtERVZfREVWX0lEKCJhdDkxcm05MjAwLWdwaW8xIiwgJnBpb0JfY2xrKSwKIAlD
TEtERVZfREVWX0lEKCJhdDkxcm05MjAwLWdwaW8yIiwgJnBpb0NfY2xrKSwKLS0gCjEuNy45LjUK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94
IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
