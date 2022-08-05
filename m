Delivery-date: Fri, 05 Aug 2022 14:56:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwsE-00CWJE-Tf
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 14:56:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwsE-0005JW-0m
	for lore@pengutronix.de; Fri, 05 Aug 2022 14:56:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5UQ2Jfd4UnLzNlTBtGly2E6Kf0hlsPFXEn7lncXMEcU=; b=t3YkBBTRceS2gQldKnU5SRf/BV
	QEh6vZqeALHGEStZRlbZqs3WqQ1lbt0Tlz79AxsM+LQgXljtHatHYOzQYwGOX8vFXNwANV9ww8wZW
	K//0sAc0u7H7UDe7zguM3Zms2gOBZregQO19zLATheLv4ps5qVhX3sV/SNZnP/5qQIa/QPHFKW2Ca
	J6K1UPs9OcKKRzU1BCQhSgP7CY31j7UAXbCs80rmueXyTGa027fbUfJnY23RkQePp1NC30az3gNsE
	Rk5X8TOf4ApUvvVlvkkYKDoiHcA0QoJZPKxufv5wA7AlgDN+QyrEA545A+t5n5ta79BYKvX8A64ys
	tgzvEyWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwqi-00FAF7-6b; Fri, 05 Aug 2022 12:54:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwqJ-00FA0a-AL
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 12:54:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqI-0004cz-1p; Fri, 05 Aug 2022 14:54:18 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqF-001tgi-2t; Fri, 05 Aug 2022 14:54:17 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqF-004w27-EB; Fri, 05 Aug 2022 14:54:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 14:54:13 +0200
Message-Id: <20220805125413.1046239-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
References: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_055419_637946_56641684 
X-CRM114-Status: GOOD (  18.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 9/9] ARM: i.MX8M: use new pbl/pmic.h API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This cuts down on code size a bit and removes the i2c xfer boilerplate
out of the drivers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/mnt-reform/lowlevel.c     | 18 +----
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c | 52 ++++---------
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 95 ++++++-----------------
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c | 56 +++++--------
 4 files changed, 58 insertions(+), 163 deletions(-)

diff --git a/arch/arm/boards/mnt-reform/lowlevel.c b/arch/arm/boards/mnt-reform/lowlevel.c
index a845d36263fe..d22c8b8a7494 100644
--- a/arch/arm/boards/mnt-reform/lowlevel.c
+++ b/arch/arm/boards/mnt-reform/lowlevel.c
@@ -8,6 +8,7 @@
 #include <debug_ll.h>
 #include <firmware.h>
 #include <pbl/i2c.h>
+#include <pbl/pmic.h>
 #include <mach/atf.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
@@ -57,22 +58,7 @@ static void i2c_mux_set(struct pbl_i2c *i2c, u8 channel)
 
 static void i2c_regulator_set_voltage(struct pbl_i2c *i2c, u8 reg, u8 voffs)
 {
-	int ret;
-	u8 buf[2];
-	struct i2c_msg msgs[] = {
-		{
-			.addr = 0x60,
-			.buf = buf,
-			.len = 2,
-		},
-	};
-
-	buf[0] = reg;
-	buf[1] = 0x80 + voffs;
-
-	ret = pbl_i2c_xfer(i2c, msgs, ARRAY_SIZE(msgs));
-	if (ret != 1)
-		pr_err("failed to set voltage\n");
+	pmic_reg_write(i2c, 0x60, reg, 0x80 + voffs);
 }
 
 #define I2C_PAD_CTRL	MUX_PAD_CTRL(MX8MQ_PAD_CTL_DSE_45R | \
diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index e52d0f29a4c9..6132df53ec75 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -8,6 +8,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <pbl/i2c.h>
+#include <pbl/pmic.h>
 #include <linux/sizes.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
@@ -37,28 +38,20 @@ static void setup_uart(void)
 	putc_ll('>');
 }
 
-static void pmic_reg_write(struct pbl_i2c *i2c, int reg, uint8_t val)
-{
-	int ret;
-	u8 buf[32];
-	struct i2c_msg msgs[] = {
-		{
-			.addr = 0x4b,
-			.buf = buf,
-		},
-	};
-
-	buf[0] = reg;
-	buf[1] = val;
-
-	msgs[0].len = 2;
-
-	ret = pbl_i2c_xfer(i2c, msgs, ARRAY_SIZE(msgs));
-	if (ret != 1)
-		pr_err("Failed to write to pmic\n");
-}
+static struct pmic_config bd71837_cfg[] = {
+	/* decrease RESET key long push time from the default 10s to 10ms */
+	{ BD718XX_PWRONCONFIG1, 0x0 },
+	/* unlock the PMIC regs */
+	{ BD718XX_REGLOCK, 0x1 },
+	/* increase VDD_SOC to typical value 0.85v before first DRAM access */
+	{ BD718XX_BUCK1_VOLT_RUN, 0x0f },
+	/* increase VDD_DRAM to 0.975v for 3Ghz DDR */
+	{ BD718XX_1ST_NODVS_BUCK_VOLT, 0x83 },
+	/* lock the PMIC regs */
+	{ BD718XX_REGLOCK, 0x11 },
+};
 
-static int power_init_board(void)
+static void power_init_board(void)
 {
 	struct pbl_i2c *i2c;
 
@@ -70,22 +63,7 @@ static int power_init_board(void)
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MQ_I2C1_BASE_ADDR));
 
-	/* decrease RESET key long push time from the default 10s to 10ms */
-	pmic_reg_write(i2c, BD718XX_PWRONCONFIG1, 0x0);
-
-	/* unlock the PMIC regs */
-	pmic_reg_write(i2c, BD718XX_REGLOCK, 0x1);
-
-	/* increase VDD_SOC to typical value 0.85v before first DRAM access */
-	pmic_reg_write(i2c, BD718XX_BUCK1_VOLT_RUN, 0x0f);
-
-	/* increase VDD_DRAM to 0.975v for 3Ghz DDR */
-	pmic_reg_write(i2c, BD718XX_1ST_NODVS_BUCK_VOLT, 0x83);
-
-	/* lock the PMIC regs */
-	pmic_reg_write(i2c, BD718XX_REGLOCK, 0x11);
-
-	return 0;
+	pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
 }
 
 extern struct dram_timing_info imx8mm_evk_dram_timing;
diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index 37b983f6387a..7da9c3356573 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -10,6 +10,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <pbl/i2c.h>
+#include <pbl/pmic.h>
 #include <linux/sizes.h>
 #include <mach/atf.h>
 #include <mach/xload.h>
@@ -36,94 +37,44 @@ static void setup_uart(void)
 	putc_ll('>');
 }
 
-static void pmic_reg_write(struct pbl_i2c *i2c, int addr, int reg, uint8_t val)
-{
-	int ret;
-	u8 buf[32];
-	struct i2c_msg msgs[] = {
-		{
-			.addr = addr,
-			.buf = buf,
-		},
-	};
-
-	buf[0] = reg;
-	buf[1] = val;
-
-	msgs[0].len = 2;
-
-	ret = pbl_i2c_xfer(i2c, msgs, ARRAY_SIZE(msgs));
-	if (ret != 1)
-		pr_err("Failed to write to pmic@%x: %d\n", addr, ret);
-}
-
-static int i2c_dev_detect(struct pbl_i2c *i2c, int addr)
-{
-	u8 buf[1];
-	struct i2c_msg msgs[] = {
-		{
-			.addr = addr,
-			.buf = buf,
-			.flags = I2C_M_RD,
-			.len = 1,
-		},
-	};
-
-	return pbl_i2c_xfer(i2c, msgs, 1) == 1 ? 0 : -ENODEV;
-}
-
-static void power_init_board_pca9450(struct pbl_i2c *i2c, int addr)
-{
+static struct pmic_config pca9450_cfg[] = {
 	/* BUCKxOUT_DVS0/1 control BUCK123 output */
-	pmic_reg_write(i2c, addr, PCA9450_BUCK123_DVS, 0x29);
-
+	{ PCA9450_BUCK123_DVS, 0x29 },
 	/*
 	 * increase VDD_SOC to typical value 0.95V before first
 	 * DRAM access, set DVS1 to 0.85v for suspend.
 	 * Enable DVS control through PMIC_STBY_REQ and
 	 * set B1_ENMODE=1 (ON by PMIC_ON_REQ=H)
 	 */
-	pmic_reg_write(i2c, addr, PCA9450_BUCK1OUT_DVS0, 0x1C);
-
+	{ PCA9450_BUCK1OUT_DVS0, 0x1C },
 	/* Set DVS1 to 0.85v for suspend */
 	/* Enable DVS control through PMIC_STBY_REQ and set B1_ENMODE=1 (ON by PMIC_ON_REQ=H) */
-	pmic_reg_write(i2c, addr, PCA9450_BUCK1OUT_DVS1, 0x14);
-	pmic_reg_write(i2c, addr, PCA9450_BUCK1CTRL, 0x59);
-
+	{ PCA9450_BUCK1OUT_DVS1, 0x14 },
+	{ PCA9450_BUCK1CTRL, 0x59 },
 	/* set VDD_SNVS_0V8 from default 0.85V */
-	pmic_reg_write(i2c, addr, PCA9450_LDO2CTRL, 0xC0);
-
+	{ PCA9450_LDO2CTRL, 0xC0 },
 	/* enable LDO4 to 1.2v */
-	pmic_reg_write(i2c, addr, PCA9450_LDO4CTRL, 0x44);
-
+	{ PCA9450_LDO4CTRL, 0x44 },
 	/* set WDOG_B_CFG to cold reset */
-	pmic_reg_write(i2c, addr, PCA9450_RESET_CTRL, 0xA1);
-}
+	{ PCA9450_RESET_CTRL, 0xA1 },
+};
 
-static void power_init_board_bd71837(struct pbl_i2c *i2c, int addr)
-{
+static struct pmic_config bd71837_cfg[] = {
 	/* decrease RESET key long push time from the default 10s to 10ms */
-	pmic_reg_write(i2c, addr, BD718XX_PWRONCONFIG1, 0x0);
-
+	{ BD718XX_PWRONCONFIG1, 0x0 },
 	/* unlock the PMIC regs */
-	pmic_reg_write(i2c, addr, BD718XX_REGLOCK, 0x1);
-
+	{ BD718XX_REGLOCK, 0x1 },
 	/* Set VDD_ARM to typical value 0.85v for 1.2Ghz */
-	pmic_reg_write(i2c, addr, BD718XX_BUCK2_VOLT_RUN, 0xf);
-
+	{ BD718XX_BUCK2_VOLT_RUN, 0xf },
 	/* Set VDD_SOC/VDD_DRAM to typical value 0.85v for nominal mode */
-	pmic_reg_write(i2c, addr, BD718XX_BUCK1_VOLT_RUN, 0xf);
-
+	{ BD718XX_BUCK1_VOLT_RUN, 0xf },
 	/* Set VDD_SOC 0.85v for suspend */
-	pmic_reg_write(i2c, addr, BD718XX_BUCK1_VOLT_SUSP, 0xf);
-
-	/* increase NVCC_DRAM_1V2 to 1.2v for DDR4
-	 * */
-	pmic_reg_write(i2c, addr, BD718XX_4TH_NODVS_BUCK_CTRL, 0x28);
-
+	{ BD718XX_BUCK1_VOLT_SUSP, 0xf },
+	/* increase NVCC_DRAM_1V2 to 1.2v for DDR4 */
+	{ BD718XX_4TH_NODVS_BUCK_CTRL, 0x28 },
 	/* lock the PMIC regs */
-	pmic_reg_write(i2c, addr, BD718XX_REGLOCK, 0x11);
-}
+	{ BD718XX_REGLOCK, 0x11 },
+};
 
 extern struct dram_timing_info imx8mn_evk_ddr4_timing, imx8mn_evk_lpddr4_timing;
 
@@ -147,11 +98,11 @@ static void start_atf(void)
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MN_I2C1_BASE_ADDR));
 
-	if (i2c_dev_detect(i2c, 0x25) == 0) {
-		power_init_board_pca9450(i2c, 0x25);
+	if (i2c_dev_probe(i2c, 0x25, true) == 0) {
+		pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
 		imx8mn_ddr_init(&imx8mn_evk_lpddr4_timing, DRAM_TYPE_LPDDR4);
 	} else {
-		power_init_board_bd71837(i2c, 0x4b);
+		pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
 		imx8mn_ddr_init(&imx8mn_evk_ddr4_timing, DRAM_TYPE_DDR4);
 	}
 
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 43f7d194d806..4f24dd4cd426 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -11,6 +11,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <pbl/i2c.h>
+#include <pbl/pmic.h>
 #include <linux/sizes.h>
 #include <mach/atf.h>
 #include <mach/xload.h>
@@ -48,28 +49,23 @@ static void setup_uart(void)
 	putc_ll('>');
 }
 
-static void pmic_reg_write(struct pbl_i2c *i2c, int reg, uint8_t val)
-{
-	int ret;
-	u8 buf[32];
-	struct i2c_msg msgs[] = {
-		{
-			.addr = 0x25,
-			.buf = buf,
-		},
-	};
-
-	buf[0] = reg;
-	buf[1] = val;
-
-	msgs[0].len = 2;
-
-	ret = pbl_i2c_xfer(i2c, msgs, ARRAY_SIZE(msgs));
-	if (ret != 1)
-		pr_err("Failed to write to pmic\n");
-}
+static struct pmic_config pca9450_cfg[] = {
+	/* BUCKxOUT_DVS0/1 control BUCK123 output */
+	{ PCA9450_BUCK123_DVS, 0x29 },
+	/*
+	 * increase VDD_SOC to typical value 0.95V before first
+	 * DRAM access, set DVS1 to 0.85v for suspend.
+	 * Enable DVS control through PMIC_STBY_REQ and
+	 * set B1_ENMODE=1 (ON by PMIC_ON_REQ=H)
+	 */
+	{ PCA9450_BUCK1OUT_DVS0, 0x1C },
+	{ PCA9450_BUCK1OUT_DVS1, 0x14 },
+	{ PCA9450_BUCK1CTRL, 0x59 },
+	/* set WDOG_B_CFG to cold reset */
+	{ PCA9450_RESET_CTRL, 0xA1 },
+};
 
-static int power_init_board(void)
+static void power_init_board(void)
 {
 	struct pbl_i2c *i2c;
 
@@ -81,23 +77,7 @@ static int power_init_board(void)
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
 
-	/* BUCKxOUT_DVS0/1 control BUCK123 output */
-	pmic_reg_write(i2c, PCA9450_BUCK123_DVS, 0x29);
-
-	/*
-	 * increase VDD_SOC to typical value 0.95V before first
-	 * DRAM access, set DVS1 to 0.85v for suspend.
-	 * Enable DVS control through PMIC_STBY_REQ and
-	 * set B1_ENMODE=1 (ON by PMIC_ON_REQ=H)
-	 */
-	pmic_reg_write(i2c, PCA9450_BUCK1OUT_DVS0, 0x1C);
-	pmic_reg_write(i2c, PCA9450_BUCK1OUT_DVS1, 0x14);
-	pmic_reg_write(i2c, PCA9450_BUCK1CTRL, 0x59);
-
-	/* set WDOG_B_CFG to cold reset */
-	pmic_reg_write(i2c, PCA9450_RESET_CTRL, 0xA1);
-
-	return 0;
+	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
 }
 
 extern struct dram_timing_info imx8mp_evk_dram_timing;
-- 
2.30.2



