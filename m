Delivery-date: Fri, 05 Aug 2022 14:57:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwtB-00CWOx-Q8
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 14:57:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwtB-0005h4-0e
	for lore@pengutronix.de; Fri, 05 Aug 2022 14:57:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GOqibjj6kHkvWtDka53RZ5EJRpq4FjMqKXg4czI3Bxw=; b=TGUpRS7jRGosjDIYtyAWcuBFlS
	86GagQd8z0VcPCNbbSbFcVao5MBuVEXBCByfSXaL3c02omWs6rPGeOGBB8CnC5h3Td5iBL5/iQLNH
	iaim47H94vnsoi8xk5knq0T4f03pKMgDr6uG9FdxUK0N2HYDAvdQThsa3kHbX5JOUmlMuzSw9M3EA
	Huvpwx0YwOTExpfksK2kdZsd2N9S1T7D5rgi1ewwa0bIN418vB/6Sfib1DHhCLZnU7Q1PEYJLHKcz
	+SrJ7fEgdht4P71IPIHZastpoUbCMYsZP8x3kY6iFCiOHSv+57Tu0FKzam9t/V7r/FIfPZvqpfkEe
	PgqQnD4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwra-00FAes-1X; Fri, 05 Aug 2022 12:55:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwqJ-00FA0e-NX
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 12:54:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqI-0004d3-5h; Fri, 05 Aug 2022 14:54:18 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqF-001tgr-6d; Fri, 05 Aug 2022 14:54:17 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqF-004vw4-7Z; Fri, 05 Aug 2022 14:54:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 14:54:08 +0200
Message-Id: <20220805125413.1046239-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
References: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_055419_844106_49074E57 
X-CRM114-Status: GOOD (  14.04  )
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
Subject: [PATCH 4/9] ARM: i.MX8MN: evk: simplify DDR4/LPDDR4 selection code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The code selecting either DDR4 or LPDDR4 would be easier to follow with
symmetric if and else clauses. Factor out an i2c_dev_detect function
that can move into common pbl code in the future and refactor the code
accordingly.

With this change, we also remove use of dram_timing->dram_type,
which comes in handy in a follow-up commit that retires that struct
member.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 26 ++++++++++-------------
 1 file changed, 11 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index ddc6e4fd2b29..f53f9c1c6172 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -57,7 +57,7 @@ static void pmic_reg_write(void *i2c, int addr, int reg, uint8_t val)
 		pr_err("Failed to write to pmic@%x: %d\n", addr, ret);
 }
 
-static int power_init_board_pca9450(void *i2c, int addr)
+static int i2c_dev_detect(void *i2c, int addr)
 {
 	u8 buf[1];
 	struct i2c_msg msgs[] = {
@@ -69,9 +69,11 @@ static int power_init_board_pca9450(void *i2c, int addr)
 		},
 	};
 
-	if (i2c_fsl_xfer(i2c, msgs, 1) != 1)
-		return -ENODEV;
+	return i2c_fsl_xfer(i2c, msgs, 1) == 1 ? 0 : -ENODEV;
+}
 
+static void power_init_board_pca9450(void *i2c, int addr)
+{
 	/* BUCKxOUT_DVS0/1 control BUCK123 output */
 	pmic_reg_write(i2c, addr, PCA9450_BUCK123_DVS, 0x29);
 
@@ -96,11 +98,9 @@ static int power_init_board_pca9450(void *i2c, int addr)
 
 	/* set WDOG_B_CFG to cold reset */
 	pmic_reg_write(i2c, addr, PCA9450_RESET_CTRL, 0xA1);
-
-	return 0;
 }
 
-static int power_init_board_bd71837(void *i2c, int addr)
+static void power_init_board_bd71837(void *i2c, int addr)
 {
 	/* decrease RESET key long push time from the default 10s to 10ms */
 	pmic_reg_write(i2c, addr, BD718XX_PWRONCONFIG1, 0x0);
@@ -123,17 +123,13 @@ static int power_init_board_bd71837(void *i2c, int addr)
 
 	/* lock the PMIC regs */
 	pmic_reg_write(i2c, addr, BD718XX_REGLOCK, 0x11);
-
-	return 0;
 }
 
 extern struct dram_timing_info imx8mn_evk_ddr4_timing, imx8mn_evk_lpddr4_timing;
 
 static void start_atf(void)
 {
-	struct dram_timing_info *dram_timing = &imx8mn_evk_lpddr4_timing;
 	void *i2c;
-	int ret;
 
 	/*
 	 * If we are in EL3 we are running for the first time and need to
@@ -151,14 +147,14 @@ static void start_atf(void)
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MN_I2C1_BASE_ADDR));
 
-	ret = power_init_board_pca9450(i2c, 0x25);
-	if (ret) {
+	if (i2c_dev_detect(i2c, 0x25) == 0) {
+		power_init_board_pca9450(i2c, 0x25);
+		imx8mn_ddr_init(&imx8mn_evk_lpddr4_timing, DRAM_TYPE_LPDDR4);
+	} else {
 		power_init_board_bd71837(i2c, 0x4b);
-		dram_timing = &imx8mn_evk_ddr4_timing;
+		imx8mn_ddr_init(&imx8mn_evk_ddr4_timing, DRAM_TYPE_DDR4);
 	}
 
-	imx8mn_ddr_init(dram_timing, dram_timing->dram_type);
-
 	imx8mn_load_and_start_image_via_tfa();
 }
 
-- 
2.30.2



