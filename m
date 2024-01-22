Delivery-date: Mon, 22 Jan 2024 15:15:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRv4v-00Ba4J-04
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 15:15:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRv4v-0000yd-NF
	for lore@pengutronix.de; Mon, 22 Jan 2024 15:15:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2vOUiMMQMkpNMnyTzgbsph3a2vRUFSk39V991SctijU=; b=3fFIO+FtLRnOQbfUDtnyZnL/IZ
	YM/RFKx/k9/iakfgcfj+mRtr6VTZ4uJCpPYnEvZyz9L6LP+C5tp2XmCrgSQgtgKn+yP5PMpuntJ8e
	imFlNh2puKXl43TA37AXQfEwgSXlD6M0eItGVR/d5ijtB/3oMAaau5Y16J0Q2TfxuUemzQ37RYexG
	hTtI906buHLUob2Rtv7ruujfyobZ7zxTlMrFny2yEH+oAKy58/kt9UYsCN5achdSqXRD5vXXgJ049
	uNmaJgFJkeGvuqaFHRxsjW7BBkuCiFEmYhEsPvWm/gD89+M6mP5uXNorMl5nW5ukLF6FwV20uV5C1
	F+UTzgpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRv3a-00CMsK-1Q;
	Mon, 22 Jan 2024 14:13:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRv3W-00CMrP-09
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 14:13:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rRv3O-0000sh-6i; Mon, 22 Jan 2024 15:13:34 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rRv3M-001cKm-Kw; Mon, 22 Jan 2024 15:13:32 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rRv3M-00EQvk-1o;
	Mon, 22 Jan 2024 15:13:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jan 2024 15:13:31 +0100
Message-Id: <20240122141331.3438235-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_061342_083232_E71AB4B5 
X-CRM114-Status: GOOD (  10.51  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ddr: imx8m: add missing DDR clock rates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ddrphy_init_set_dfi_clk() is called to translate a scalar clock rate
as specified by board code into PLL parameters, which are configured.

enum ddr_rate describes the possible DDR rates and so far
ddrphy_init_set_dfi_clk() supported all of them, except for 2600 and
2376 MHz, rendering these two rates unusable.

Fix this by adding support for them into ddrphy_init_set_dfi_clk.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/ddr/imx/imx8m_ddr_init.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
index 8b829645c063..d9a5d589f27b 100644
--- a/drivers/ddr/imx/imx8m_ddr_init.c
+++ b/drivers/ddr/imx/imx8m_ddr_init.c
@@ -219,9 +219,9 @@ enum ddr_rate {
 	DDR_3720,
 	DDR_3200,
 	DDR_3000,
-	DDR_2600, /* Unused */
+	DDR_2600,
 	DDR_2400,
-	DDR_2376, /* Unused */
+	DDR_2376,
 	DDR_1600,
 	DDR_1000, /* Unused */
 	DDR_1066,
@@ -450,7 +450,9 @@ static void ddrphy_init_set_dfi_clk(struct dram_controller *dram, unsigned int d
 	case 3720: drate = DDR_3720; break;
 	case 3200: drate = DDR_3200; break;
 	case 3000: drate = DDR_3000; break;
+	case 2600: drate = DDR_2600; break;
 	case 2400: drate = DDR_2400; break;
+	case 2376: drate = DDR_2376; break;
 	case 1600: drate = DDR_1600; break;
 	case 1066: drate = DDR_1066; break;
 	case 667: drate = DDR_667; break;
-- 
2.39.2



