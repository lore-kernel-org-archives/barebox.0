Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-db5eur01olkn0808.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::808]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYIe-0003ZJ-Gh
 for barebox@lists.infradead.org; Thu, 09 Apr 2020 14:37:02 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 9 Apr 2020 14:36:55 +0000
Message-ID: <DB7PR02MB4332C0654DCD03489FFE9575ABC10@DB7PR02MB4332.eurprd02.prod.outlook.com>
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
Subject: [PATCH v2 1/7] add-MCI_SDHCI-dependency-to-Arasan-driver
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

The Arasan driver depends on the SDHCI driver, without it we
will see undefined references while linking arasan-sdhci.c:283: undefined
reference to `sdhci_set_cmd_xfer_mode' arasan-sdhci.c:299: undefined
reference to `sdhci_read_response' arasan-sdhci.c:303: undefined reference to
`sdhci_transfer_data'

Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
---
 drivers/mci/Kconfig | 1 +
 1 file changed, 1 insertion(+)

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
--
2.17.1
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
