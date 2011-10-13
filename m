Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RENEb-0005Q4-O3
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 15:30:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Oct 2011 17:30:07 +0200
Message-Id: <1318519808-14316-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1318519808-14316-1-git-send-email-s.hauer@pengutronix.de>
References: <1318519808-14316-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] mtd nand i.MX: depend on ARCH_IMX instead of individual
	SoCs
To: barebox@lists.infradead.org

This hardware is present on nearly all i.MX SoCs so do not
extend this list even further.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Kconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 126f7cc..20f9f33 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -57,7 +57,7 @@ config NAND_READ_OOB
 config NAND_IMX
 	bool
 	prompt "i.MX NAND driver"
-	depends on ARCH_IMX21 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX25 || ARCH_IMX51
+	depends on ARCH_IMX
 
 config NAND_OMAP_GPMC
 	tristate "NAND Flash Support for GPMC based OMAP platforms"
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
