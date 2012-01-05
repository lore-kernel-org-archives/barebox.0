Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rinf6-00052r-KJ
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 13:47:22 +0000
Received: from mail643.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 4BD1E1058621
 for <barebox@lists.infradead.org>; Thu,  5 Jan 2012 14:48:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  5 Jan 2012 14:40:50 +0100
Message-Id: <1325770850-11776-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1325770850-11776-1-git-send-email-plagnioj@jcrosoft.com>
References: <1325770850-11776-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] at91: add default spi chipselect ressources
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200_devices.c  |   12 ++++++++++++
 arch/arm/mach-at91/at91sam9260_devices.c |   18 ++++++++++++++++++
 arch/arm/mach-at91/at91sam9261_devices.c |   18 ++++++++++++++++++
 arch/arm/mach-at91/at91sam9263_devices.c |   18 ++++++++++++++++++
 arch/arm/mach-at91/at91sam9g45_devices.c |   18 ++++++++++++++++++
 5 files changed, 84 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 1fc78ab..599eb79 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -158,6 +158,15 @@ void __init at91_add_device_nand(struct atmel_nand_data *data) {}
  * -------------------------------------------------------------------- */
 
 #if defined(CONFIG_DRIVER_SPI_ATMEL)
+static const unsigned spi_standard_cs[4] = { AT91_PIN_PA3, AT91_PIN_PA4, AT91_PIN_PA5, AT91_PIN_PA6 };
+
+static struct at91_spi_platform_data spi_pdata[] = {
+	[0] = {
+		.chipselect = spi_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi_standard_cs),
+	},
+};
+
 void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 {
 	int i;
@@ -165,6 +174,9 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 
 	BUG_ON(spi_id > 0);
 
+	if (!pdata)
+		pdata = &spi_pdata[spi_id];
+
 	for (i = 0; i < pdata->num_chipselect; i++) {
 		cs_pin = pdata->chipselect[i];
 
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 695a3ee..c8871f8 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -155,6 +155,21 @@ void at91_add_device_nand(struct atmel_nand_data *data) {}
  * -------------------------------------------------------------------- */
 
 #if defined(CONFIG_DRIVER_SPI_ATMEL)
+static int spi0_standard_cs[4] = { AT91_PIN_PA3, AT91_PIN_PC11, AT91_PIN_PC16, AT91_PIN_PC17 };
+
+static int spi1_standard_cs[4] = { AT91_PIN_PB3, AT91_PIN_PC5, AT91_PIN_PC4, AT91_PIN_PC3 };
+
+static struct at91_spi_platform_data spi_pdata[] = {
+	[0] = {
+		.chipselect = spi0_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+	},
+	[1] = {
+		.chipselect = spi1_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi1_standard_cs),
+	},
+};
+
 void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 {
 	int i;
@@ -163,6 +178,9 @@ void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata
 
 	BUG_ON(spi_id > 1);
 
+	if (!pdata)
+		pdata = &spi_pdata[spi_id];
+
 	for (i = 0; i < pdata->num_chipselect; i++) {
 		cs_pin = pdata->chipselect[i];
 
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 3f55e2e..7805c27 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -107,6 +107,21 @@ void at91_add_device_nand(struct atmel_nand_data *data) {}
  * -------------------------------------------------------------------- */
 
 #if defined(CONFIG_DRIVER_SPI_ATMEL)
+static const unsigned spi0_standard_cs[4] = { AT91_PIN_PA3, AT91_PIN_PA4, AT91_PIN_PA5, AT91_PIN_PA6 };
+
+static const unsigned spi1_standard_cs[4] = { AT91_PIN_PB28, AT91_PIN_PA24, AT91_PIN_PA25, AT91_PIN_PA26 };
+
+static struct at91_spi_platform_data spi_pdata[] = {
+	[0] = {
+		.chipselect = spi0_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+	},
+	[1] = {
+		.chipselect = spi1_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi1_standard_cs),
+	},
+};
+
 void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 {
 	int i;
@@ -115,6 +130,9 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 
 	BUG_ON(spi_id > 1);
 
+	if (!pdata)
+		pdata = &spi_pdata[spi_id];
+
 	for (i = 0; i < pdata->num_chipselect; i++) {
 		cs_pin = pdata->chipselect[i];
 
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index ce6221d..1811c12 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -157,6 +157,21 @@ void at91_add_device_nand(struct atmel_nand_data *data) {}
  * -------------------------------------------------------------------- */
 
 #if defined(CONFIG_DRIVER_SPI_ATMEL)
+static int spi0_standard_cs[4] = { AT91_PIN_PA5, AT91_PIN_PA3, AT91_PIN_PA4, AT91_PIN_PB11 };
+
+static int spi1_standard_cs[4] = { AT91_PIN_PB15, AT91_PIN_PB16, AT91_PIN_PB17, AT91_PIN_PB18 };
+
+static struct at91_spi_platform_data spi_pdata[] = {
+	[0] = {
+		.chipselect = spi0_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+	},
+	[1] = {
+		.chipselect = spi1_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi1_standard_cs),
+	},
+};
+
 void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 {
 	int i;
@@ -165,6 +180,9 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 
 	BUG_ON(spi_id > 1);
 
+	if (!pdata)
+		pdata = &spi_pdata[spi_id];
+
 	for (i = 0; i < pdata->num_chipselect; i++) {
 		cs_pin = pdata->chipselect[i];
 
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index d087e1f..9a24022 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -295,6 +295,21 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
 
 #if defined(CONFIG_DRIVER_SPI_ATMEL)
 /* SPI */
+static const unsigned spi0_standard_cs[4] = { AT91_PIN_PB3, AT91_PIN_PB18, AT91_PIN_PB19, AT91_PIN_PD27 };
+
+static const unsigned spi1_standard_cs[4] = { AT91_PIN_PB17, AT91_PIN_PD28, AT91_PIN_PD18, AT91_PIN_PD19 };
+
+static struct at91_spi_platform_data spi_pdata[] = {
+	[0] = {
+		.chipselect = spi0_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+	},
+	[1] = {
+		.chipselect = spi1_standard_cs,
+		.num_chipselect = ARRAY_SIZE(spi1_standard_cs),
+	},
+};
+
 void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 {
 	int i;
@@ -303,6 +318,9 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 
 	BUG_ON(spi_id > 1);
 
+	if (!pdata)
+		pdata = &spi_pdata[spi_id];
+
 	for (i = 0; i < pdata->num_chipselect; i++) {
 		cs_pin = pdata->chipselect[i];
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
