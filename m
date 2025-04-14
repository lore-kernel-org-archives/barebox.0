Delivery-date: Mon, 14 Apr 2025 08:59:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DnQ-000XTw-0f
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:59:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DnP-0000ko-Er
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:59:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vMvgFIjv7pQxfDU0YwH+ShfHbfNBm2QbYSFvSG4C3GU=; b=QG3DfHBcVwgO67eIzBuOQJkU04
	7UVkWS3+gHoGN8fFDsRkXTQD0Hb0ioWlWKw8frzt76DIo7OFhCtsunndnVuhurFk5vcaS1h3aOPM3
	QryRoBEWhrQDJyEpYuiPhjk0I3gTdQi1EEjQdz/eH/FtqUA9DgZZgRZKLzOqSArWhzdFPoV2ucecS
	8ysGeRhXQBdfW4grhA5yE+65PsVWIXmEPq19GpKNW9wyeJu7BKLUNSfefDuOXR0jeVj6RjEW7rXyc
	KhvccmrBNd28xH37YrFIUVYs2XIRyDwXBkZyOKeXxUi5nxAeAgyr1BUHceDZPi3brrF/gIEkvFiQe
	YsO4HSfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Dmz-00000000roC-01tp;
	Mon, 14 Apr 2025 06:59:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4De1-00000000ql3-3rPf
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:50:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4De0-0006V4-Jp; Mon, 14 Apr 2025 08:50:12 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4De0-000Con-13;
	Mon, 14 Apr 2025 08:50:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4De0-00BcuJ-0k;
	Mon, 14 Apr 2025 08:50:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Kim Christensen <kch@skov.dk>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:50:07 +0200
Message-Id: <20250414065009.2770749-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
References: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_235014_071141_5109C6EC 
X-CRM114-Status: GOOD (  15.57  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] ARM: i.MX8MP: skov: halt startup until power is good
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The 24V regulator supplying the system can indicate via a GPIO imminent
voltage loss. The board's capacitors hold enough charge to power the system
a while longer in such a state, but eventually, unless external power is
restored, the brownout detection of the PMIC will kick in.

For the span of time between voltage drop detection and PMIC brownout,
let's detect this situation and delay startup. This way, Linux can
detect the ongoing voltage loss, power down the eMMC, reboot into
barebox and barebox will delay boot as long as the problem persists.

Co-developed-by: Kim Christensen <kch@skov.dk>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/lowlevel.c | 60 ++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm/boards/skov-imx8mp/lowlevel.c b/arch/arm/boards/skov-imx8mp/lowlevel.c
index 637fc50b3f30..d7bd771f259d 100644
--- a/arch/arm/boards/skov-imx8mp/lowlevel.c
+++ b/arch/arm/boards/skov-imx8mp/lowlevel.c
@@ -20,6 +20,9 @@
 
 extern char __dtb_z_imx8mp_skov_start[];
 
+#define PGOOD_PAD_CTRL  MUX_PAD_CTRL(MX8MP_PAD_CTL_PUE | \
+				     MX8MP_PAD_CTL_PE)
+
 #define UART_PAD_CTRL   MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
 				     MX8MP_PAD_CTL_FSEL | \
 				     MX8MP_PAD_CTL_PUE | \
@@ -30,6 +33,12 @@ extern char __dtb_z_imx8mp_skov_start[];
 				     MX8MP_PAD_CTL_PUE | \
 				     MX8MP_PAD_CTL_PE)
 
+static inline void led_d1_toggle(bool *on)
+{
+	imx8m_gpio_direction_output(IOMEM(MX8MP_GPIO1_BASE_ADDR), 5, *on);
+	*on = !*on;
+}
+
 static void setup_uart(void)
 {
 	void __iomem *uart = IOMEM(MX8M_UART2_BASE_ADDR);
@@ -67,6 +76,55 @@ static struct pmic_config pca9450_cfg[] = {
 	{ PCA9450_BUCK2OUT_DVS0, 0x14 },
 };
 
+static inline bool power_good(void)
+{
+	/* IMX_SHDN_MF in schematics */
+	return imx8m_gpio_val(IOMEM(MX8MP_GPIO4_BASE_ADDR), 23);
+}
+
+static void wait_for_power_good(void)
+{
+	void __iomem *gpio4 = IOMEM(MX8MP_GPIO4_BASE_ADDR);
+	int timeout_ms = 0;
+	bool led_active = true;
+
+	imx8mp_setup_pad(MX8MP_PAD_SAI2_RXD0__GPIO4_IO23 | PGOOD_PAD_CTRL);
+	imx8m_gpio_direction_input(gpio4, 23);
+
+	led_d1_toggle(&led_active);
+
+	if (power_good())
+		return;
+
+	pr_warn("\nDelaying boot until power stabilizes\n");
+
+	/* If we reach this, because Linux did a hw_protection_reboot, we don't
+	 * want to continue booting right away.
+	 *
+	 * Thus let's either wait for the condition to subscede or for voltage
+	 * to reach a low enough level for the PMIC to detect VSYS_UVLO going
+	 * lower than allowed
+	 */
+
+	while (1) {
+		if (power_good()) {
+			/* wait 10ms longer and check if it still good */
+			udelay(10000);
+			if (power_good()) {
+				pr_info("IMX_SHDN_MF stuck low for ~%ums.\n", timeout_ms);
+				break;
+			}
+		}
+		/* fast blink LED D1 */
+		if (timeout_ms % 100 == 0) {
+			pr_debug(".");
+			led_d1_toggle(&led_active);
+		}
+		udelay(1000);
+		timeout_ms++;
+	}
+}
+
 static void power_init_board(void)
 {
 	struct pbl_i2c *i2c;
@@ -77,6 +135,8 @@ static void power_init_board(void)
 	imx8mp_setup_pad(MX8MP_PAD_SAI3_TXD__GPIO5_IO01);
 	imx8m_gpio_direction_output(IOMEM(MX8MP_GPIO5_BASE_ADDR), 1, 0);
 
+	wait_for_power_good();
+
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
 
-- 
2.39.5



