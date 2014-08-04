Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEDfs-0004vS-LY
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 08:31:25 +0000
Received: by mail-wi0-f174.google.com with SMTP id d1so4578946wiv.13
 for <barebox@lists.infradead.org>; Mon, 04 Aug 2014 01:30:56 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Mon,  4 Aug 2014 10:31:52 +0200
Message-Id: <1407141112-3868-3-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1407141112-3868-1-git-send-email-poggi.raph@gmail.com>
References: <1407141112-3868-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH V2 2/2] at91sam9g45: clock: add i2c clocks
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

QWRkIHRoZSBkZXZpY2UgdHJlZSBhbmQgbm9uIGRldmljZSB0cmVlIGF0OTEgaTJjIGNsb2Nrcy4K
ClNpZ25lZC1vZmYtYnk6IFJhcGhhw6tsIFBvZ2dpIDxwb2dnaS5yYXBoQGdtYWlsLmNvbT4KLS0t
CiBhcmNoL2FybS9tYWNoLWF0OTEvYXQ5MXNhbTlnNDUuYyB8ICAgIDQgKysrKwogMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtYXQ5MS9h
dDkxc2FtOWc0NS5jIGIvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1LmMKaW5kZXggZjYw
MzFmMC4uZDBmOTUwYyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1
LmMKKysrIGIvYXJjaC9hcm0vbWFjaC1hdDkxL2F0OTFzYW05ZzQ1LmMKQEAgLTE5Miw2ICsxOTIs
MTAgQEAgc3RhdGljIHN0cnVjdCBjbGtfbG9va3VwIHBlcmlwaF9jbG9ja3NfbG9va3Vwc1tdID0g
ewogCUNMS0RFVl9DT05fREVWX0lEKCJtY2lfY2xrIiwgImF0bWVsX21jaTEiLCAmbW1jMV9jbGsp
LAogCUNMS0RFVl9DT05fREVWX0lEKCJzcGlfY2xrIiwgImF0bWVsX3NwaTAiLCAmc3BpMF9jbGsp
LAogCUNMS0RFVl9DT05fREVWX0lEKCJzcGlfY2xrIiwgImF0bWVsX3NwaTEiLCAmc3BpMV9jbGsp
LAorCUNMS0RFVl9DT05fREVWX0lEKE5VTEwsICJhdDkxLXR3aTAiLCAmdHdpMF9jbGspLAorCUNM
S0RFVl9DT05fREVWX0lEKE5VTEwsICJhdDkxLXR3aTEiLCAmdHdpMV9jbGspLAorCUNMS0RFVl9D
T05fREVWX0lEKE5VTEwsICJmZmY4NDAwMC5pMmMiLCAmdHdpMF9jbGspLAorCUNMS0RFVl9DT05f
REVWX0lEKE5VTEwsICJmZmY4ODAwMC5pMmMiLCAmdHdpMV9jbGspLAogCUNMS0RFVl9ERVZfSUQo
ImF0OTFybTkyMDAtZ3BpbzAiLCAmcGlvQV9jbGspLAogCUNMS0RFVl9ERVZfSUQoImF0OTFybTky
MDAtZ3BpbzEiLCAmcGlvQl9jbGspLAogCUNMS0RFVl9ERVZfSUQoImF0OTFybTkyMDAtZ3BpbzIi
LCAmcGlvQ19jbGspLAotLSAKMS43LjkuNQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
