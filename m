Delivery-date: Tue, 23 May 2023 11:56:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1Ol7-00AdTY-9v
	for lore@lore.pengutronix.de; Tue, 23 May 2023 11:56:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1Ol4-0001au-PC
	for lore@pengutronix.de; Tue, 23 May 2023 11:56:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mh8YKDWq1/DuZUlDUv35t2ENfmUFdfhnps5jW2ARIiE=; b=aZIlyqB+xQe2sZ
	2DLpN2E3Tx86ae414a87Qga/XDC6F8+Dp6i8PzuizVscQDGBZkelDvFb1rS4ZTFRQ6Icoh9VC2syZ
	SvCaTKxqlaJ3ogo3pfNI24URIlMe04m/hz6M/sXUVUEG+1uao9CAQzro5AeXDP8VpdegkHWbStpRO
	yo3/Swo4U8++1vT3Fti5QYRTOuR3LuQlr1MFKukRAvdltTUsnDYprGUZ2sKA3xHPQX9qyRTQuB9lA
	TvSXbkZfgJJSnAYwACCMvKuMbLxqXyOlEaHd9RBhhM3Vm7873wMceM0MOd6R1eICZuu0NjRu8pgf0
	fgwQ8uP6rGsgh9u+1G3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Oi5-009ggN-2z;
	Tue, 23 May 2023 09:53:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Oi2-009gfB-1u
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 09:53:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q1Ohx-00014J-5V; Tue, 23 May 2023 11:53:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1Ohw-002DN7-Gi; Tue, 23 May 2023 11:53:32 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1Ohv-00EaC8-Ul; Tue, 23 May 2023 11:53:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 23 May 2023 11:53:30 +0200
Message-Id: <20230523095330.3475712-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_025338_633370_24F7C6B8 
X-CRM114-Status: GOOD (  12.76  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, bst@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX8M: move early_clock_init out of power_init_board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With increased number of i.MX8M-based designs, boards now tend to come
with PMIC that are preconfigured to supply the correct voltages at POR.

On such boards, barebox need not do any I2C configuration, but clocks
need to be configured anyway, which is usually done as part of the I2C
setup in the board's power_init_board. To save developers copy-pasting
code the hassle of debugging DDR training only to find out they
shouldn't have deleted imx8m*_early_clock_init() when they removed
power_init_board(), let's move it out of this function.

This means we now setup clocks before pinmuxing I2C, but still, this
should not result in any functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c             | 3 ++-
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c                   | 2 +-
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c                   | 3 ++-
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c                   | 3 ++-
 arch/arm/boards/polyhex-debix/lowlevel.c                    | 3 ++-
 arch/arm/boards/tqma8mpxl/lowlevel.c                        | 3 ++-
 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c | 3 ++-
 7 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
index 2f6061f0e263..cf7f744552b2 100644
--- a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
+++ b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
@@ -64,7 +64,6 @@ void innocomm_wb15_power_init_board(void)
 	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SCL_I2C1_SCL);
 	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SDA_I2C1_SDA);
 
-	imx8mm_early_clock_init();
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MQ_I2C1_BASE_ADDR));
@@ -87,6 +86,8 @@ ENTRY_FUNCTION(start_innocomm_wb15_evk, r0, r1, r2)
 	 * will then jump to DRAM in EL2
 	 */
 	if (current_el() == 3) {
+		imx8mm_early_clock_init();
+
 		innocomm_wb15_power_init_board();
 
 		imx8mm_ddr_init(&innocomm_wb15_dram_timing, DRAM_TYPE_LPDDR4);
diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index ee18fe72b40e..881d8285b60e 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -83,7 +83,6 @@ static void power_init_board(void)
 	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SCL_I2C1_SCL);
 	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SDA_I2C1_SDA);
 
-	imx8mm_early_clock_init();
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MQ_I2C1_BASE_ADDR));
@@ -106,6 +105,7 @@ static void start_atf(void)
 	if (current_el() != 3)
 		return;
 
+	imx8mm_early_clock_init();
 	power_init_board();
 	imx8mm_ddr_init(&imx8mm_evk_dram_timing, DRAM_TYPE_LPDDR4);
 
diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index 23504ee96551..a1a501b1d962 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -92,10 +92,11 @@ static void start_atf(void)
 	if (current_el() != 3)
 		return;
 
+	imx8mn_early_clock_init();
+
 	imx8mn_setup_pad(IMX8MN_PAD_I2C1_SCL__I2C1_SCL);
 	imx8mn_setup_pad(IMX8MN_PAD_I2C1_SDA__I2C1_SDA);
 
-	imx8mn_early_clock_init();
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MN_I2C1_BASE_ADDR));
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index c129b5e7fa43..969947d2ec4e 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -78,7 +78,6 @@ static void power_init_board(void)
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
 
-	imx8mp_early_clock_init();
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
@@ -98,6 +97,8 @@ static void start_atf(void)
 	if (current_el() != 3)
 		return;
 
+	imx8mp_early_clock_init();
+
 	power_init_board();
 
 	imx8mp_ddr_init(&imx8mp_evk_dram_timing, DRAM_TYPE_LPDDR4);
diff --git a/arch/arm/boards/polyhex-debix/lowlevel.c b/arch/arm/boards/polyhex-debix/lowlevel.c
index 1c8be39559f7..c4feb30108c8 100644
--- a/arch/arm/boards/polyhex-debix/lowlevel.c
+++ b/arch/arm/boards/polyhex-debix/lowlevel.c
@@ -73,7 +73,6 @@ static void power_init_board(void)
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
 
-	imx8mp_early_clock_init();
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
@@ -93,6 +92,8 @@ static void start_atf(void)
 	if (current_el() != 3)
 		return;
 
+	imx8mp_early_clock_init();
+
 	power_init_board();
 
 	imx8mp_ddr_init(&imx8mp_debix_dram_timing, DRAM_TYPE_LPDDR4);
diff --git a/arch/arm/boards/tqma8mpxl/lowlevel.c b/arch/arm/boards/tqma8mpxl/lowlevel.c
index 793bcba3ca36..e0a0f17d3aa4 100644
--- a/arch/arm/boards/tqma8mpxl/lowlevel.c
+++ b/arch/arm/boards/tqma8mpxl/lowlevel.c
@@ -74,7 +74,6 @@ static void power_init_board(void)
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
 
-	imx8mp_early_clock_init();
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
@@ -91,6 +90,8 @@ static __noreturn noinline void tqma8mpxl_start(void)
 	if (current_el() == 3) {
 		extern struct dram_timing_info dram_timing_2gb_no_ecc;
 
+		imx8mp_early_clock_init();
+
 		power_init_board();
 
 		imx8mp_ddr_init(&dram_timing_2gb_no_ecc, DRAM_TYPE_LPDDR4);
diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
index 92325fd20e29..c9907ebf0a35 100644
--- a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
+++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
@@ -70,7 +70,6 @@ static void power_init_board(void)
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
 
-	imx8mm_early_clock_init();
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
@@ -90,6 +89,8 @@ static void start_atf(void)
 	if (current_el() != 3)
 		return;
 
+	imx8mm_early_clock_init();
+
 	power_init_board();
 
 	imx8mp_ddr_init(&var_dart_imx8mp_dram_timing, DRAM_TYPE_LPDDR4);
-- 
2.39.2



