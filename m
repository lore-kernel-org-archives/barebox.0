Delivery-date: Fri, 05 Aug 2022 14:57:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwsw-00CWNb-PB
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 14:57:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwsw-0005dI-6a
	for lore@pengutronix.de; Fri, 05 Aug 2022 14:57:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FFWl6vLzrdWyRIdPM5HSfqYt9BuMAWqX3U7M3cQvuac=; b=cMZ3gvSMWl8oBOrDf5FawINGZ9
	VMimEl24LGTmJvfXwgdC+IUTxoTE8ykSYtUxMIxPKcdvyptnsnfeMIMyNucWcrCKXs06hoGCRRiGl
	+R4WPkJVJzoDhDGjDWvfdxLplRGzg51NnjuD8LE3crXUVDlaT/BaK2LbL5AvM6Qc+dnRNYv2JccV+
	0xrTdi3lZm/ATeh+Sez51drHhQ6g3gVIMk38H3DUeyjKuqyhhvlZFQP9uc3pdy8E0fJV63fv2vlgj
	ixsoOGtTptpAPBmb7mZwo4cPEfAWtL4267rAgl7xh+EU4rzHqt8TKhxKFBPxblchxqQbE5ZodtJiZ
	xpr51PZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwrI-00FAWF-7u; Fri, 05 Aug 2022 12:55:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwqJ-00FA0C-7x
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 12:54:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqH-0004bb-9w; Fri, 05 Aug 2022 14:54:17 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqE-001tgT-90; Fri, 05 Aug 2022 14:54:16 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqF-004w02-Bp; Fri, 05 Aug 2022 14:54:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de
Date: Fri,  5 Aug 2022 14:54:11 +0200
Message-Id: <20220805125413.1046239-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
References: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_055419_698018_E6AFECA3 
X-CRM114-Status: GOOD (  29.43  )
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
Subject: [PATCH 7/9] pbl: generalize fsl i2c_early API into pbl_i2c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The prebootloader is inherently board-specific, so it's natural to
hardcode the i2c driver used and we only support fsl_i2c at the moment
anyway. For abstractions used by different prebootloaders though
(e.g. PMIC writing, SPD EEPROM decoding), it would be good for generic
code to use a pbl_i2c abstraction, so it can be reused across PBLs using
different I2C controllers. Add such an abstraction and use it where
appropriate.
---
 arch/arm/boards/ls1046ardb/lowlevel.c     |  6 +++---
 arch/arm/boards/mnt-reform/lowlevel.c     | 12 ++++++------
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c |  8 ++++----
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 16 +++++++--------
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c |  8 ++++----
 common/ddr_spd.c                          | 24 ++++++++++-------------
 drivers/i2c/busses/i2c-imx-early.c        | 21 ++++++++++++--------
 include/ddr_spd.h                         |  5 ++---
 include/i2c/i2c-early.h                   | 13 ------------
 include/pbl/i2c.h                         | 21 ++++++++++++++++++++
 10 files changed, 71 insertions(+), 63 deletions(-)
 delete mode 100644 include/i2c/i2c-early.h
 create mode 100644 include/pbl/i2c.h

diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index 0a30f05aa2cb..055e5f4c9995 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -5,7 +5,7 @@
 #include <ddr_spd.h>
 #include <image-metadata.h>
 #include <platform_data/mmc-esdhc-imx.h>
-#include <i2c/i2c-early.h>
+#include <pbl/i2c.h>
 #include <soc/fsl/fsl_ddr_sdram.h>
 #include <soc/fsl/immap_lsch2.h>
 #include <asm/barebox-arm-head.h>
@@ -187,7 +187,7 @@ static struct fsl_ddr_info ls1046a_info = {
 static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
 {
 	unsigned long membase = LS1046A_DDR_SDRAM_BASE;
-	struct fsl_i2c *i2c;
+	struct pbl_i2c *i2c;
 	int ret;
 
 	if (get_pc() >= membase) {
@@ -205,7 +205,7 @@ static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
 	IMD_USED_OF(fsl_ls1046a_rdb);
 
 	i2c = ls1046_i2c_init(IOMEM(LSCH2_I2C1_BASE_ADDR));
-	ret = spd_read_eeprom(i2c, i2c_fsl_xfer, 0x51, &spd_eeprom);
+	ret = spd_read_eeprom(i2c, 0x51, &spd_eeprom);
 	if (ret) {
 		pr_err("Cannot read SPD EEPROM: %d\n", ret);
 		goto err;
diff --git a/arch/arm/boards/mnt-reform/lowlevel.c b/arch/arm/boards/mnt-reform/lowlevel.c
index 644c42269d79..a845d36263fe 100644
--- a/arch/arm/boards/mnt-reform/lowlevel.c
+++ b/arch/arm/boards/mnt-reform/lowlevel.c
@@ -7,7 +7,7 @@
 #include <common.h>
 #include <debug_ll.h>
 #include <firmware.h>
-#include <i2c/i2c-early.h>
+#include <pbl/i2c.h>
 #include <mach/atf.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
@@ -36,7 +36,7 @@ static void mnt_reform_setup_uart(void)
 	putc_ll('>');
 }
 
-static void i2c_mux_set(void *i2c, u8 channel)
+static void i2c_mux_set(struct pbl_i2c *i2c, u8 channel)
 {
 	int ret;
 	u8 buf[1];
@@ -50,12 +50,12 @@ static void i2c_mux_set(void *i2c, u8 channel)
 
 	buf[0] = 1 << channel;
 
-	ret = i2c_fsl_xfer(i2c, msgs, ARRAY_SIZE(msgs));
+	ret = pbl_i2c_xfer(i2c, msgs, ARRAY_SIZE(msgs));
 	if (ret != 1)
 		pr_err("failed to set i2c mux\n");
 }
 
-static void i2c_regulator_set_voltage(void *i2c, u8 reg, u8 voffs)
+static void i2c_regulator_set_voltage(struct pbl_i2c *i2c, u8 reg, u8 voffs)
 {
 	int ret;
 	u8 buf[2];
@@ -70,7 +70,7 @@ static void i2c_regulator_set_voltage(void *i2c, u8 reg, u8 voffs)
 	buf[0] = reg;
 	buf[1] = 0x80 + voffs;
 
-	ret = i2c_fsl_xfer(i2c, msgs, ARRAY_SIZE(msgs));
+	ret = pbl_i2c_xfer(i2c, msgs, ARRAY_SIZE(msgs));
 	if (ret != 1)
 		pr_err("failed to set voltage\n");
 }
@@ -81,7 +81,7 @@ static void i2c_regulator_set_voltage(void *i2c, u8 reg, u8 voffs)
 
 static void mnt_reform_init_power(void)
 {
-	void *i2c;
+	struct pbl_i2c *i2c;
 
 	imx8mq_setup_pad(IMX8MQ_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
 	imx8mq_setup_pad(IMX8MQ_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 888bdd079083..e52d0f29a4c9 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -7,7 +7,7 @@
 #include <asm/cache.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <i2c/i2c-early.h>
+#include <pbl/i2c.h>
 #include <linux/sizes.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
@@ -37,7 +37,7 @@ static void setup_uart(void)
 	putc_ll('>');
 }
 
-static void pmic_reg_write(void *i2c, int reg, uint8_t val)
+static void pmic_reg_write(struct pbl_i2c *i2c, int reg, uint8_t val)
 {
 	int ret;
 	u8 buf[32];
@@ -53,14 +53,14 @@ static void pmic_reg_write(void *i2c, int reg, uint8_t val)
 
 	msgs[0].len = 2;
 
-	ret = i2c_fsl_xfer(i2c, msgs, ARRAY_SIZE(msgs));
+	ret = pbl_i2c_xfer(i2c, msgs, ARRAY_SIZE(msgs));
 	if (ret != 1)
 		pr_err("Failed to write to pmic\n");
 }
 
 static int power_init_board(void)
 {
-	void *i2c;
+	struct pbl_i2c *i2c;
 
 	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SCL_I2C1_SCL);
 	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SDA_I2C1_SDA);
diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index f53f9c1c6172..37b983f6387a 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -9,7 +9,7 @@
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <i2c/i2c-early.h>
+#include <pbl/i2c.h>
 #include <linux/sizes.h>
 #include <mach/atf.h>
 #include <mach/xload.h>
@@ -36,7 +36,7 @@ static void setup_uart(void)
 	putc_ll('>');
 }
 
-static void pmic_reg_write(void *i2c, int addr, int reg, uint8_t val)
+static void pmic_reg_write(struct pbl_i2c *i2c, int addr, int reg, uint8_t val)
 {
 	int ret;
 	u8 buf[32];
@@ -52,12 +52,12 @@ static void pmic_reg_write(void *i2c, int addr, int reg, uint8_t val)
 
 	msgs[0].len = 2;
 
-	ret = i2c_fsl_xfer(i2c, msgs, ARRAY_SIZE(msgs));
+	ret = pbl_i2c_xfer(i2c, msgs, ARRAY_SIZE(msgs));
 	if (ret != 1)
 		pr_err("Failed to write to pmic@%x: %d\n", addr, ret);
 }
 
-static int i2c_dev_detect(void *i2c, int addr)
+static int i2c_dev_detect(struct pbl_i2c *i2c, int addr)
 {
 	u8 buf[1];
 	struct i2c_msg msgs[] = {
@@ -69,10 +69,10 @@ static int i2c_dev_detect(void *i2c, int addr)
 		},
 	};
 
-	return i2c_fsl_xfer(i2c, msgs, 1) == 1 ? 0 : -ENODEV;
+	return pbl_i2c_xfer(i2c, msgs, 1) == 1 ? 0 : -ENODEV;
 }
 
-static void power_init_board_pca9450(void *i2c, int addr)
+static void power_init_board_pca9450(struct pbl_i2c *i2c, int addr)
 {
 	/* BUCKxOUT_DVS0/1 control BUCK123 output */
 	pmic_reg_write(i2c, addr, PCA9450_BUCK123_DVS, 0x29);
@@ -100,7 +100,7 @@ static void power_init_board_pca9450(void *i2c, int addr)
 	pmic_reg_write(i2c, addr, PCA9450_RESET_CTRL, 0xA1);
 }
 
-static void power_init_board_bd71837(void *i2c, int addr)
+static void power_init_board_bd71837(struct pbl_i2c *i2c, int addr)
 {
 	/* decrease RESET key long push time from the default 10s to 10ms */
 	pmic_reg_write(i2c, addr, BD718XX_PWRONCONFIG1, 0x0);
@@ -129,7 +129,7 @@ extern struct dram_timing_info imx8mn_evk_ddr4_timing, imx8mn_evk_lpddr4_timing;
 
 static void start_atf(void)
 {
-	void *i2c;
+	struct pbl_i2c *i2c;
 
 	/*
 	 * If we are in EL3 we are running for the first time and need to
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 338c8024c4a1..43f7d194d806 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <i2c/i2c-early.h>
+#include <pbl/i2c.h>
 #include <linux/sizes.h>
 #include <mach/atf.h>
 #include <mach/xload.h>
@@ -48,7 +48,7 @@ static void setup_uart(void)
 	putc_ll('>');
 }
 
-static void pmic_reg_write(void *i2c, int reg, uint8_t val)
+static void pmic_reg_write(struct pbl_i2c *i2c, int reg, uint8_t val)
 {
 	int ret;
 	u8 buf[32];
@@ -64,14 +64,14 @@ static void pmic_reg_write(void *i2c, int reg, uint8_t val)
 
 	msgs[0].len = 2;
 
-	ret = i2c_fsl_xfer(i2c, msgs, ARRAY_SIZE(msgs));
+	ret = pbl_i2c_xfer(i2c, msgs, ARRAY_SIZE(msgs));
 	if (ret != 1)
 		pr_err("Failed to write to pmic\n");
 }
 
 static int power_init_board(void)
 {
-	void *i2c;
+	struct pbl_i2c *i2c;
 
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index 7089923afb94..52773178e78e 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -6,6 +6,7 @@
 #include <common.h>
 #include <crc.h>
 #include <ddr_spd.h>
+#include <pbl/i2c.h>
 
 /* used for ddr1 and ddr2 spd */
 static int spd_check(const u8 *buf, u8 spd_rev, u8 spd_cksum)
@@ -430,9 +431,7 @@ void ddr_spd_print(uint8_t *record)
 #define SPD_SPA0_ADDRESS        0x36
 #define SPD_SPA1_ADDRESS        0x37
 
-static int select_page(void *ctx,
-		       int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
-		       uint8_t addr)
+static int select_page(struct pbl_i2c *i2c, uint8_t addr)
 {
 	struct i2c_msg msg = {
 		.addr = addr,
@@ -440,15 +439,14 @@ static int select_page(void *ctx,
 	};
 	int ret;
 
-	ret = xfer(ctx, &msg, 1);
+	ret = pbl_i2c_xfer(i2c, &msg, 1);
 	if (ret < 0)
 		return ret;
 
 	return 0;
 }
 
-static int read_buf(void *ctx,
-		    int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
+static int read_buf(struct pbl_i2c *i2c,
 		    uint8_t addr, int page, void *buf)
 {
 	uint8_t pos = 0;
@@ -466,11 +464,11 @@ static int read_buf(void *ctx,
 		}
 	};
 
-	ret = select_page(ctx, xfer, page);
+	ret = select_page(i2c, page);
 	if (ret < 0)
 		return ret;
 
-	ret = xfer(ctx, msg, 2);
+	ret = pbl_i2c_xfer(i2c, msg, 2);
 	if (ret < 0)
 		return ret;
 
@@ -479,8 +477,7 @@ static int read_buf(void *ctx,
 
 /**
  * spd_read_eeprom - Read contents of a SPD EEPROM
- * @ctx: Context pointer for the xfer function
- * @xfer: I2C message transfer function
+ * @i2c: I2C controller handle
  * @addr: I2C bus address for the EEPROM
  * @buf: buffer to read the SPD data to
  *
@@ -489,19 +486,18 @@ static int read_buf(void *ctx,
  * have a size of 512 bytes. Returns 0 for success or a negative error code
  * otherwise.
  */
-int spd_read_eeprom(void *ctx,
-		    int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
+int spd_read_eeprom(struct pbl_i2c *i2c,
 		    uint8_t addr, void *buf)
 {
 	unsigned char *buf8 = buf;
 	int ret;
 
-	ret = read_buf(ctx, xfer, addr, SPD_SPA0_ADDRESS, buf);
+	ret = read_buf(i2c, addr, SPD_SPA0_ADDRESS, buf);
 	if (ret < 0)
 		return ret;
 
 	if (buf8[2] == SPD_MEMTYPE_DDR4) {
-		ret = read_buf(ctx, xfer, addr, SPD_SPA1_ADDRESS, buf + 256);
+		ret = read_buf(i2c, addr, SPD_SPA1_ADDRESS, buf + 256);
 		if (ret < 0)
 			return ret;
 	}
diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
index a79d7bd88ce1..4e0f7e517d01 100644
--- a/drivers/i2c/busses/i2c-imx-early.c
+++ b/drivers/i2c/busses/i2c-imx-early.c
@@ -9,11 +9,12 @@
  */
 #include <common.h>
 #include <i2c/i2c.h>
-#include <i2c/i2c-early.h>
+#include <pbl/i2c.h>
 
 #include "i2c-imx.h"
 
 struct fsl_i2c {
+	struct pbl_i2c i2c;
 	void __iomem *regs;
 	unsigned int i2cr_ien_opcode;
 	unsigned int i2sr_clr_opcode;
@@ -170,7 +171,7 @@ static int i2c_fsl_write(struct fsl_i2c *fsl_i2c, struct i2c_msg *msg)
 	/* write data */
 	for (i = 0; i < msg->len; i++) {
 		ret = i2c_fsl_send(fsl_i2c, msg->buf[i]);
-		if (ret)
+	if (ret)
 			return ret;
 	}
 
@@ -229,9 +230,9 @@ static int i2c_fsl_read(struct fsl_i2c *fsl_i2c, struct i2c_msg *msg)
  * If successful returns the number of messages transferred, otherwise a negative
  * error code is returned.
  */
-int i2c_fsl_xfer(void *ctx, struct i2c_msg *msgs, int num)
+static int i2c_fsl_xfer(struct pbl_i2c *i2c, struct i2c_msg *msgs, int num)
 {
-	struct fsl_i2c *fsl_i2c = ctx;
+	struct fsl_i2c *fsl_i2c = container_of(i2c, struct fsl_i2c, i2c);
 	unsigned int i, temp;
 	int ret;
 
@@ -288,7 +289,7 @@ static struct fsl_i2c fsl_i2c;
  * This function returns a context pointer suitable to transfer I2C messages
  * using i2c_fsl_xfer.
  */
-void *ls1046_i2c_init(void __iomem *regs)
+struct pbl_i2c *ls1046_i2c_init(void __iomem *regs)
 {
 	fsl_i2c.regs = regs;
 	fsl_i2c.regshift = 0;
@@ -297,10 +298,12 @@ void *ls1046_i2c_init(void __iomem *regs)
 	/* Divider for ~100kHz when coming from the ROM */
 	fsl_i2c.ifdr = 0x3e;
 
-	return &fsl_i2c;
+	fsl_i2c.i2c.xfer = i2c_fsl_xfer;
+
+	return &fsl_i2c.i2c;
 }
 
-void *imx8m_i2c_early_init(void __iomem *regs)
+struct pbl_i2c *imx8m_i2c_early_init(void __iomem *regs)
 {
 	fsl_i2c.regs = regs;
 	fsl_i2c.regshift = 2;
@@ -309,5 +312,7 @@ void *imx8m_i2c_early_init(void __iomem *regs)
 	/* Divider for ~100kHz when coming from the ROM */
 	fsl_i2c.ifdr = 0x0f;
 
-	return &fsl_i2c;
+	fsl_i2c.i2c.xfer = i2c_fsl_xfer;
+
+	return &fsl_i2c.i2c;
 }
diff --git a/include/ddr_spd.h b/include/ddr_spd.h
index 6e63d90e5e20..bcc2171d2a50 100644
--- a/include/ddr_spd.h
+++ b/include/ddr_spd.h
@@ -6,7 +6,7 @@
 #ifndef _DDR_SPD_H_
 #define _DDR_SPD_H_
 
-#include <i2c/i2c.h>
+#include <pbl/i2c.h>
 
 /*
  * Format from "JEDEC Standard No. 21-C,
@@ -574,8 +574,7 @@ void ddr2_spd_dump(const struct ddr2_spd_eeprom *spd);
 int ddr3_spd_check(const struct ddr3_spd_eeprom *spd);
 int ddr4_spd_check(const struct ddr4_spd_eeprom *spd);
 
-int spd_read_eeprom(void *ctx,
-		    int (*xfer)(void *ctx, struct i2c_msg *msgs, int num),
+int spd_read_eeprom(struct pbl_i2c *i2c,
 		    uint8_t addr, void *buf);
 
 #endif /* _DDR_SPD_H_ */
diff --git a/include/i2c/i2c-early.h b/include/i2c/i2c-early.h
deleted file mode 100644
index fa93656e28e8..000000000000
--- a/include/i2c/i2c-early.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __I2C_EARLY_H
-#define __I2C_EARLY_H
-
-#include <i2c/i2c.h>
-
-int i2c_fsl_xfer(void *ctx, struct i2c_msg *msgs, int num);
-
-void *imx8m_i2c_early_init(void __iomem *regs);
-void *ls1046_i2c_init(void __iomem *regs);
-
-#endif /* __I2C_EARLY_H */
diff --git a/include/pbl/i2c.h b/include/pbl/i2c.h
new file mode 100644
index 000000000000..1f26e3dfc6ca
--- /dev/null
+++ b/include/pbl/i2c.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __PBL_I2C_H
+#define __PBL_I2C_H
+
+#include <i2c/i2c.h>
+
+struct pbl_i2c {
+	int (*xfer)(struct pbl_i2c *, struct i2c_msg *msgs, int num);
+};
+
+static inline int pbl_i2c_xfer(struct pbl_i2c *i2c,
+			       struct i2c_msg *msgs, int num)
+{
+	return i2c->xfer(i2c, msgs, num);
+}
+
+struct pbl_i2c *imx8m_i2c_early_init(void __iomem *regs);
+struct pbl_i2c *ls1046_i2c_init(void __iomem *regs);
+
+#endif /* __I2C_EARLY_H */
-- 
2.30.2



