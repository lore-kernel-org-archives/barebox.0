Delivery-date: Wed, 21 Sep 2022 19:22:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ob3Qw-00BUzT-By
	for lore@lore.pengutronix.de; Wed, 21 Sep 2022 19:22:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ob3Qu-0004hf-EX
	for lore@pengutronix.de; Wed, 21 Sep 2022 19:22:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D4Ft4v2oxlovRguYs4KoHn/9gVDh6W+BGF58WC0MfbE=; b=E+kU0dIs3N2P+87bE4ivY3oWu1
	uQc00tqmHQwdOXvW+SmTWtPKOTPP1+G5qAzWCskZYXiK7ptNNv5sn83BV11iFnbJTDAekFxoV/3+a
	4GzEqqmaKqEI20RifY7ljXf9nw2sg/BncHEmPZiAlIfordUZGmmYBv3VkxOYkYVGIskt7r6BSJxFK
	lxGEWeB3brBQYwrAzAwog9KjEJdDCgE9FZqmcVouxcE33LmVHxmpjwO8SoVQfX7b8GTKu2kp4JcZJ
	q5687OOsWG4S77VMkAHycCd455KKF3CjsT3q2+VYPEkx4Dk4c2n++eEpw4J5334UlcidWnEo1Uztk
	1WuOTvuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob3PG-00CAXz-Jn; Wed, 21 Sep 2022 17:21:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob3PB-00CAW3-7F
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 17:21:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ob3P6-0004Lr-LL
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 19:20:56 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ob3P7-0026GP-E6
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 19:20:55 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ob3P4-00CYAJ-Dw
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 19:20:54 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 21 Sep 2022 19:20:52 +0200
Message-Id: <20220921172052.2989506-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220921172052.2989506-1-m.felsch@pengutronix.de>
References: <20220921172052.2989506-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_102101_274637_F13C7652 
X-CRM114-Status: UNSURE (   9.81  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8M: remove fsp_table entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Barebox now have the support to write the fsp_table entries
automatically based on fsp_msg.drata information. Remove the fsp_table
entry and let the common code do the rest for us.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/mnt-reform/lpddr4-timing.c     | 1 -
 arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c   | 1 -
 arch/arm/boards/nxp-imx8mn-evk/lpddr4-timing.c | 1 -
 arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c | 1 -
 4 files changed, 4 deletions(-)

diff --git a/arch/arm/boards/mnt-reform/lpddr4-timing.c b/arch/arm/boards/mnt-reform/lpddr4-timing.c
index 0b5853000d..38fa2c50f1 100644
--- a/arch/arm/boards/mnt-reform/lpddr4-timing.c
+++ b/arch/arm/boards/mnt-reform/lpddr4-timing.c
@@ -1008,5 +1008,4 @@ struct dram_timing_info mnt_reform_dram_timing = {
 	.fsp_msg_num = ARRAY_SIZE(mnt_reform_lpddr4_dram_fsp_msg),
 	.ddrphy_pie = mnt_reform_lpddr4_phy_pie,
 	.ddrphy_pie_num = ARRAY_SIZE(mnt_reform_lpddr4_phy_pie),
-	.fsp_table = { 3200, 667, },
 };
diff --git a/arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c b/arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c
index 131a63156e..df10bdcc9d 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c
@@ -1050,5 +1050,4 @@ struct dram_timing_info imx8mn_evk_ddr4_timing = {
 	.ddrphy_trained_csr_num = ARRAY_SIZE(ddr_ddrphy_trained_csr),
 	.ddrphy_pie = ddr_phy_pie,
 	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
-	.fsp_table = { 2400, 1066, },
 };
diff --git a/arch/arm/boards/nxp-imx8mn-evk/lpddr4-timing.c b/arch/arm/boards/nxp-imx8mn-evk/lpddr4-timing.c
index 940b21cedb..63851c87d4 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lpddr4-timing.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lpddr4-timing.c
@@ -1586,5 +1586,4 @@ struct dram_timing_info imx8mn_evk_lpddr4_timing = {
 	.ddrphy_trained_csr_num = ARRAY_SIZE(ddr_ddrphy_trained_csr),
 	.ddrphy_pie = ddr_phy_pie,
 	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
-	.fsp_table = { 3200, 400, 100, },
 };
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c b/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
index 3028bc084c..b8c6b78017 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
@@ -1844,5 +1844,4 @@ struct dram_timing_info imx8mp_evk_dram_timing = {
 	.ddrphy_trained_csr_num = ARRAY_SIZE(ddr_ddrphy_trained_csr),
 	.ddrphy_pie = ddr_phy_pie,
 	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
-	.fsp_table = { 4000, 400, 100, },
 };
-- 
2.30.2



