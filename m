Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R4Xnf-0007fk-Od
	for barebox@lists.infradead.org; Fri, 16 Sep 2011 12:45:50 +0000
Received: from mail240.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 88A49DD3435
	for <barebox@lists.infradead.org>;
	Fri, 16 Sep 2011 14:46:54 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 16 Sep 2011 14:23:45 +0200
Message-Id: <1316175828-19748-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1316175828-19748-1-git-send-email-plagnioj@jcrosoft.com>
References: <1316175828-19748-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/7] at91/boards: switch to software ecc as in linux kernel
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/init.c     |    2 +-
 arch/arm/boards/at91sam9263ek/init.c     |    2 +-
 arch/arm/boards/pm9263/init.c            |    2 +-
 arch/arm/mach-at91/at91sam9g45_devices.c |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 861e898..e4b98bf 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -64,7 +64,7 @@ static struct atmel_nand_data nand_pdata = {
 	.cle		= 22,
 /*	.det_pin	= ... not connected */
 	.ecc_base	= (void __iomem *)(AT91_BASE_SYS + AT91_ECC),
-	.ecc_mode	= NAND_ECC_HW,
+	.ecc_mode	= NAND_ECC_SOFT,
 	.rdy_pin	= AT91_PIN_PC13,
 	.enable_pin	= AT91_PIN_PC14,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 46f3a7e..9e0981f 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -45,7 +45,7 @@ static struct atmel_nand_data nand_pdata = {
 	.cle		= 22,
 /*	.det_pin	= ... not connected */
 	.ecc_base	= (void __iomem *)(AT91_BASE_SYS + AT91_ECC0),
-	.ecc_mode	= NAND_ECC_HW,
+	.ecc_mode	= NAND_ECC_SOFT,
 	.rdy_pin	= AT91_PIN_PA22,
 	.enable_pin	= AT91_PIN_PD15,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index aeca4e7..a1fe0cd 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -44,7 +44,7 @@ static struct atmel_nand_data nand_pdata = {
 	.cle		= 22,
 /*	.det_pin	= ... not connected */
 	.ecc_base	= (void __iomem *)(AT91_BASE_SYS + AT91_ECC0),
-	.ecc_mode	= NAND_ECC_HW,
+	.ecc_mode	= NAND_ECC_SOFT,
 	.rdy_pin	= AT91_PIN_PB30,
 	.enable_pin	= AT91_PIN_PD15,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index f311b62..e18682b 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -71,7 +71,7 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 		return;
 
 	data->ecc_base = (void __iomem *)(AT91_BASE_SYS + AT91_ECC);
-	data->ecc_mode = NAND_ECC_HW;
+	data->ecc_mode	= NAND_ECC_SOFT;
 
 	csa = at91_sys_read(AT91_MATRIX_EBICSA);
 	at91_sys_write(AT91_MATRIX_EBICSA, csa | AT91_MATRIX_EBI_CS3A_SMC_SMARTMEDIA);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
