Delivery-date: Fri, 14 Nov 2025 16:06:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJvNP-000wVf-2Q
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 16:06:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJvNP-0001L9-4C
	for lore@pengutronix.de; Fri, 14 Nov 2025 16:06:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tLTjn0QhejZB4JjnuM4y1WxXgdtw7faUGRFm2DlH6Rk=; b=Aqncv9iG7DMGaRWvY0eP2UQOgT
	ySoL5QwFRWgp+wmJbHai/5LFT+iN0/RyN2IajBtRRF6+RtyuLqNuR7xC0125HPd/Rcu/Lh8/vlOyG
	V2fVPYKdK6kgLdp5GUlfdvhkx7qhAtTaR0yEL+AqAmXPIXTD9oxMgDSo3OL2Y+KmRqbBxgFsxf3sp
	AT/WMx3T8ofmGSjs5/VKFBDKVDqZfGFJOH/oXTe5qrafyV+SE6xvSdcGZ/JTsZVRp+haTapjMz7cj
	uA9bfwyYt6xX5hgPwQGFFLWq8P13P4ZcAkgJwUDH3dKvPE3BTTKss0nvXJiAxY8A07mNq81bpcN7L
	8hW3bjEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJvMn-0000000CRUS-2wCx;
	Fri, 14 Nov 2025 15:05:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJvMm-0000000CRTG-0b7v
	for barebox@bombadil.infradead.org;
	Fri, 14 Nov 2025 15:05:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Reply-To:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=tLTjn0QhejZB4JjnuM4y1WxXgdtw7faUGRFm2DlH6Rk=; b=Y8d0ReXk2+XIA7JrCZbkAuWNEo
	oPEVHUZJcNP5aM4u7h1HED6L5z1xaT2lZDxof1svkl9aN/nRMXdcXczFtUAyZTOp4InL7eFrtiY1d
	YAHAV7TUApd+gor377LRqpVcMBriXQgKmkGiVGBn0xoqEwlOJTLjWyf39VPp3TvovMaDZax3UFhGM
	29Ua0NadPi/GD3qwNUJZbg4X3sxqEd0Nhl0B6B1skCznK5MI7Da5MHFAWXtmDPg/mDE8X7dc+pLch
	2ThIcAt7vWkq1aKnfiBsN+LOt8UJmnahxhI1rA0mugW8DYpWklh2ySLdquy2ARB36GuOTJ9/bngT5
	QtBHTQFA==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJuV0-00000002lHe-0ZqY
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 14:10:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 26FAF41921;
	Fri, 14 Nov 2025 15:05:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03FBEC116B1;
	Fri, 14 Nov 2025 15:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763132725;
	bh=35348QLfeuFuAkM0DOjsJhgkR0Ip5oPWSrKHcd2YTAE=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=Rp+Eazgz5uoijy3PnU2miugHP39malN5GsdxsORl0gx31eJZ/OVHujPHDc7RUKlKs
	 jA5WdZjgu//A+NQpl0QfMoAlmv42nPYV/cgnOZYebCHGAf9pE7SOOfXm+kr7ywKIR+
	 +2ep8+hU9T0SmOJCFQ1/ZTJ4DtBnCZh6pgkRz2QTQZzqrFv65JzCtLSVw2QiuXyAPG
	 iLlysx2VNdnQmaf2qQpG3MwGg9PLm8zwt5lQpgSEqHVWeb0BKJTp63YEaJiIhxWfqw
	 Fu1k1epSX4xIakqIdanwr6hbQfL+xCivVdiZFr9g4TuI8AhKCWBXfkmLDds2OvTKcH
	 U7mSnYvhJwm5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4CD0CE7B1E;
	Fri, 14 Nov 2025 15:05:24 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Fri, 14 Nov 2025 16:05:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-eqos_rmii-v1-1-4a20cf7cb4c0@gocontroll.com>
X-B4-Tracking: v=1; b=H4sIACxFF2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQ0MT3dTC/OL4otzMTN2U5FRjY2PDxBQzSyMloPqCotS0zAqwWdGxtbU
 AMT8SMlsAAAA=
X-Change-ID: 20251114-eqos_rmii-dce3331ad692
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763132724; l=1670;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=tOSLmMs/KpGwyt0ek3xHU7qFx3qbudcwf+JlrqEQhdw=;
 b=Snv/t+eDOO5OiW80jIPvSfeLBD+TDJjgDXKIJf4gxD8hSO9cnoNdybUfLYrBndsoAGZnpDiyO
 ZVm9ugFZ9G0DtUFvAvki4D9H4mgKEhbiCILEy2EJBc+2z8gXvBoTc1z
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_141005_674470_F5A26472 
X-CRM114-Status: GOOD (  11.92  )
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
Reply-To: maudspierings@gocontroll.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] net: designware-imx: don't set txclk when mode is (r)mii
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

Add an early exit to eqos_set_txclk() when the mode is (r)mii.

The "tx" clock is actually something called the "slice 81 clock" which
must always be 50M for the rmii mode. This will later get divided into
the actual tx clock /2 or /20 which does match those clock rates. Still
the provided clock != tx clock when the mode is rmii.

Linux also excludes the mii mode from this clock lookup, even though
the clock rates actually seem to match there. I am not aware why it is
also excluded, it may be best to wait with merging this until [1] has
found an answer. But for now I thought it would be best to match Linux
behaviour.

Link: https://lore.kernel.org/all/aRclKDeHzfJSzpQ3@shell.armlinux.org.uk/ [1]

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
---
 drivers/net/designware_imx.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/designware_imx.c b/drivers/net/designware_imx.c
index ec3558fad0..bc3136f8ff 100644
--- a/drivers/net/designware_imx.c
+++ b/drivers/net/designware_imx.c
@@ -59,10 +59,15 @@ static unsigned long eqos_get_csr_clk_rate_imx(struct eqos *eqos)
 
 static int eqos_set_txclk(struct eqos *eqos, int speed)
 {
+	phy_interface_t interface = eqos->interface;
 	struct eqos_imx_priv *priv = eqos->priv;
 	unsigned long rate;
 	int ret;
 
+	if (interface == PHY_INTERFACE_MODE_RMII ||
+	    interface == PHY_INTERFACE_MODE_MII)
+		return 0;
+
 	switch (speed) {
 	case SPEED_10:
 		rate = 2500000;

---
base-commit: f485ddfccf960959d25462073528d314b8bf1aea
change-id: 20251114-eqos_rmii-dce3331ad692

Best regards,
-- 
Maud Spierings <maudspierings@gocontroll.com>




