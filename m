Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vi1eur05olkn2094.outbound.protection.outlook.com
 ([40.92.90.94] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJvFy-0006RZ-Ts
 for barebox@lists.infradead.org; Thu, 02 Apr 2020 08:31:24 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 2 Apr 2020 08:17:13 +0000
Message-ID: <DB7PR02MB4332F07BA9744FEC9468F90EABC60@DB7PR02MB4332.eurprd02.prod.outlook.com>
Content-Language: de-DE
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/7] Zedboard: Arasan MMC driver 
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

The Arasan driver depends on the SDHCI driver, without it we will see 
undefined references while linking
arasan-sdhci.c:283: undefined reference to `sdhci_set_cmd_xfer_mode'
arasan-sdhci.c:299: undefined reference to `sdhci_read_response'
arasan-sdhci.c:303: undefined reference to `sdhci_transfer_data'

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 80b3a2600..9f56bed3a 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -141,6 +141,7 @@ config MCI_TEGRA
 
 config MCI_ARASAN
 	bool "Arasan SDHCI Controller"
+	select MCI_SDHCI
 	help
 	  Enable this to support SD and MMC card read/write on systems with
 	  the Arasan SD3.0 / SDIO3.0 / eMMC4.51 host controller.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
