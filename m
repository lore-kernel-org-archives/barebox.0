Delivery-date: Wed, 17 Apr 2024 11:12:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rx1LV-004jsz-0q
	for lore@lore.pengutronix.de;
	Wed, 17 Apr 2024 11:12:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rx1LU-0006sC-45
	for lore@pengutronix.de; Wed, 17 Apr 2024 11:12:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n/RMzZzlPUSHnDSIFyLXfZMAz7HrKMA/YDlC5zIFhKk=; b=RUfL2PYCwiUMZYUAU/pY6sq5a2
	kerdyHy38e2ADnXZf7MXnG7gNGpPBSH1fAIfqxHM+yOYF5vG/r42UZ6pvgmdR1VBII1mro57KNZOO
	Uymoq9r/yLvPZw7SlNaeRum0p+H1BU7k/UpIVWVvFxWYuEzfa3oPAwYLCNXZ0aVT+FTFNbUb26qIF
	QS+hYOoMvNFmmFIlN9V7V1jipKckPekSD7j6sHCyBx9IzuuPw/ZkGig+zo9LU4kAjyIAtTg4bUcDL
	lnMqpcxkoeFIE6pKuKlYO5BZ3j6E9xaKXBusHdYJShupjzWJ5WPPglfH7WA4hmp81Rvh+gVNlDkpk
	x4eE0qcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx1Kf-0000000FM2P-1CfV;
	Wed, 17 Apr 2024 09:11:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx1Ka-0000000FLzd-3iVP
	for barebox@lists.infradead.org;
	Wed, 17 Apr 2024 09:11:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rx1KY-0005JK-4u
	for barebox@lists.infradead.org; Wed, 17 Apr 2024 11:11:50 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 17 Apr 2024 11:11:24 +0200
Message-Id: <20240417-v2024-03-0-topic-imx93-designware-imx-v1-0-c532c18f9ba5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD2SH2YC/x2Nyw5AMBBFf0VmbZJRr/IrYoEOZqGkFSTi35XdO
 Wdx7w2enbCHOrrB8SFeVhskiSMY5s5OjGKCgyKVUZaUeHyElCLhvm4yoCxXlaJhL5M9O8dfQK1
 yo4kLPfYlhK3N8SjX/9O0z/MCCtqzU3cAAAA=
To: barebox@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1154;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=HgVrbTvyKTHJVwklc0IsQpEWhn4wGxCqvX7IMff1QBM=;
 b=kA0DAAoWG7c3wH9RmvgByyZiAGYfkkqj6ktP2y94oVtwYy89yLKxSxCdKuWJLi2HIXq1tRckQ
 4h1BAAWCgAdFiEEWa3CKLMT8yz0x88AG7c3wH9RmvgFAmYfkkoACgkQG7c3wH9RmvgeEQEA6hEk
 5lwXqV/k7JEt+4oTODmnapV2iZqYGWUCNZYcfoIA/2QmfrU2CSY05oeY55Q5CMsEMiUQTUCogZx
 D7Yt8I8cE
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_021152_959046_4BBFBEC0 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] net: designware-imx: fix eqos in RMII on i.MX93
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series fixes the eqos ethernet on i.MX93 SoCs when used in RMII
mode.

The first patch is an adaptation of the linux patch

    commit b536f32b5b034f592df0f0ba129ad59fa0f3e532
   
      net: stmmac: dwmac-imx: use platform specific reset for imx93 SoCs
      
      The patch addresses an issue with the reset logic on the i.MX93 SoC, which
      requires configuration of the correct interface speed under RMII mode to
      complete the reset. The patch implements a fix_soc_reset function and uses
      it specifically for the i.MX93 SoCs. 

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Steffen Trumtrar (2):
      net: designware-imx: add fix_reset callback
      net: designware-imx: i.MX93: set TX_CLK in RMII mode

 drivers/net/designware_eqos.c |  3 +++
 drivers/net/designware_eqos.h |  1 +
 drivers/net/designware_imx.c  | 33 +++++++++++++++++++++++++++++++++
 3 files changed, 37 insertions(+)
---
base-commit: c6d055d224e0b3a0aff638a05a367c30d2d0310e
change-id: 20240417-v2024-03-0-topic-imx93-designware-imx-825d80e68fb7

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



