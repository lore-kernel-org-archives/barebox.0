Delivery-date: Thu, 16 Sep 2021 11:35:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQno7-0006a3-NQ
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 11:35:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQno6-0006yh-QT
	for lore@pengutronix.de; Thu, 16 Sep 2021 11:35:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kjA5vSTMW8ZiiDf6lTpS+ldfuOzrlnboSFhAtvl9em8=; b=2qgTk1InrhL1dy
	Xz0y9xYEXTeEV1BI6J+QuNjmhdbd4c6lB3sdFZChawFH48CVp56h/0WPpWnxjYYxIMJ0F10rpzdsl
	Udim5rD3UUQkBzxUXFH0Ho93UD2Eu7ECdotokfgZ9UZMGLezoapdxGYDDgMEhZU1iy2iKn1AV0M39
	e3dScfzwsD6o3UJmQ7bUH1ZeC16Ehc51Te0rlQjiBsCiKRTi35LN3Vo7W5FpU837te8QcRaDqVoK0
	Fa3L78IYB5CoeQXgzJWwsViFLCWKr0SSXifZuFubeAaGe9MTB/PR6Lc8aM5uCiz7n9huG3ED/mVPV
	Uaig9hO4diDuAYsmNaYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQnmU-00AiMQ-Vn; Thu, 16 Sep 2021 09:34:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQnmP-00AiLD-FR
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 09:34:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQnmM-0006e2-GN; Thu, 16 Sep 2021 11:34:02 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQnmK-0003gI-Lu; Thu, 16 Sep 2021 11:34:00 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQnmK-0007yv-Kd; Thu, 16 Sep 2021 11:34:00 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 16 Sep 2021 11:33:56 +0200
Message-Id: <20210916093356.173149-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; i=Vf6KsCVpL6G4+5QHGC3z/XErvdxg3ToSSlogl9nN/R0=;
 m=a/C5+Iq7/jVsMdRd7A1FlP/CM6bNnIUm081IfLNb6L0=;
 p=a+LMfOMzbQ87q86MBtK1C/iALUtr3I4dWo6mH2rI/8c=;
 g=9475b4a3dc1341510d884d822910186c8f6cf8e1
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de;
 s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6;
 b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmFDD4EACgkQwfwUeK3K7Am1Ggf/UQj
 RuF4n9mtEHM01G9+utnLq7aiNfdggXgM4BEfoiKHMJEduxo1YzI4Q0QM1K5ViwqZHxqu4Wrjpu18x
 nU/IKW+IkfzdRFjhisVmyOd2E+7fSjIm5fogmc9Q1Nj2eUU+RS9Yuk2zsWqf4qIM07e0R2U4ASfM4
 0OIkxbXaQyE4C2d2CIQ49gp9b/GgLNvjgYhlk/7c7mW85KEq111G5TTanYgE1OKGCJqMCuuKv1qw+
 zuYdMFOuNPMVeRXnnH3s3au8GwgBlPxC3X/oYM4TE46TfPXc8GaHLPNdv7iVm+1GSlvT4MEVWro9h
 Sh1kWRv8GBpIeco7+w9bhuC3JKoSbnQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_023405_570186_D2315982 
X-CRM114-Status: GOOD (  11.29  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arm64: Don't truncate upper 32 bits in ENTRY_FUNCTION arg
 registers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RnJvbTogQWhtYWQgRmF0b3VtIDxhaG1hZEBhM2YuYXQ+CgpVc2UgYSBsb25nIGluc3RlYWQgb2Yg
YW4gdTMyLiBGb3IgMzItYml0IGFybSB0aGVyZSBpcyBubyBkaWZmZXJlbmNlLCBmb3IKYXJtNjQg
dGhpcyByZXN1bHRzIGluIGJlaW5nIGFibGUgdG8gdXNlIHRoZSB3aG9sZSByZWdpc3RlciBzaXpl
IG9mIDY0CmJpdHMuCgpTaWduZWQtb2ZmLWJ5OiBBaG1hZCBGYXRvdW0gPGFobWFkQGEzZi5hdD4K
U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCiBhcmNoL2FybS9pbmNsdWRlL2FzbS9iYXJlYm94LWFybS5oIHwgOCArKysr
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9iYXJlYm94LWFybS5oIGIvYXJjaC9hcm0v
aW5jbHVkZS9hc20vYmFyZWJveC1hcm0uaAppbmRleCAyNGY5YmNlMmVmN2EuLmNmYjU5NDNmMzNk
NiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vYmFyZWJveC1hcm0uaAorKysgYi9h
cmNoL2FybS9pbmNsdWRlL2FzbS9iYXJlYm94LWFybS5oCkBAIC0xNjIsMTggKzE2MiwxOCBAQCBz
dGF0aWMgaW5saW5lIHVuc2lnbmVkIGxvbmcgYXJtX21lbV9iYXJlYm94X2ltYWdlKHVuc2lnbmVk
IGxvbmcgbWVtYmFzZSwKIH0KIAogI2RlZmluZSBFTlRSWV9GVU5DVElPTihuYW1lLCBhcmcwLCBh
cmcxLCBhcmcyKQkJCQlcCi0Jdm9pZCBuYW1lICh1aW50MzJfdCByMCwgdWludDMyX3QgcjEsIHVp
bnQzMl90IHIyKTsJCVwKKwl2b2lkIG5hbWUodWxvbmcgcjAsIHVsb25nIHIxLCB1bG9uZyByMik7
CQkJXAogCQkJCQkJCQkJXAotCXN0YXRpYyB2b2lkIF9fIyNuYW1lKHVpbnQzMl90LCB1aW50MzJf
dCwgdWludDMyX3QpOwkJXAorCXN0YXRpYyB2b2lkIF9fIyNuYW1lKHVsb25nLCB1bG9uZywgdWxv
bmcpOwkJCVwKIAkJCQkJCQkJCVwKIAl2b2lkIE5BS0VEIF9fc2VjdGlvbigudGV4dF9oZWFkX2Vu
dHJ5XyMjbmFtZSkJbmFtZQkJXAotCQkJCSh1aW50MzJfdCByMCwgdWludDMyX3QgcjEsIHVpbnQz
Ml90IHIyKQlcCisJCQkJKHVsb25nIHIwLCB1bG9uZyByMSwgdWxvbmcgcjIpCQlcCiAJCXsJCQkJ
CQkJXAogCQkJX19iYXJlYm94X2FybV9oZWFkKCk7CQkJCVwKIAkJCV9fIyNuYW1lKHIwLCByMSwg
cjIpOwkJCQlcCiAJCX0JCQkJCQkJXAogCQlzdGF0aWMgdm9pZCBOQUtFRCBub2lubGluZSBfXyMj
bmFtZQkJCVwKLQkJCSh1aW50MzJfdCBhcmcwLCB1aW50MzJfdCBhcmcxLCB1aW50MzJfdCBhcmcy
KQorCQkJKHVsb25nIGFyZzAsIHVsb25nIGFyZzEsIHVsb25nIGFyZzIpCiAKIC8qCiAgKiBXaGVu
IHVzaW5nIGNvbXByZXNzZWQgaW1hZ2VzIGluIGNvbmp1bmN0aW9uIHdpdGggcmVsb2NhdGFibGUg
aW1hZ2VzCgpiYXNlLWNvbW1pdDogYzk0NWQyNGVjNWRhZDY5MTBiMDI2OTdlNGQxZGYwOWY4OWQy
Yjk1MAotLSAKMi4zMC4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=

