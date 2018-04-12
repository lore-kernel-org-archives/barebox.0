Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6UuC-0008VS-H5
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 05:36:22 +0000
Received: by mail-lf0-x241.google.com with SMTP id q5-v6so5833767lff.12
 for <barebox@lists.infradead.org>; Wed, 11 Apr 2018 22:36:08 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 12 Apr 2018 08:35:56 +0300
Message-Id: <20180412053559.30687-2-antonynpavlov@gmail.com>
In-Reply-To: <20180412053559.30687-1-antonynpavlov@gmail.com>
References: <20180412053559.30687-1-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] net: make SoCFPGA-specific designware driver work again
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

If MFD_SYSCON is disabled in .config then socfpga_designware_eth probe
fails with this message:

  socfpga_designware_eth ff702000.ethernet: Could not get sysmgr-syscon node

Thanks to Steffen for hint!

Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/configs/socfpga_defconfig | 1 +
 drivers/net/Kconfig                | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index dbc33f952f..6883b5f526 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -71,6 +71,7 @@ CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_DESIGNWARE=y
+CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA=y
 CONFIG_MCI=y
 CONFIG_MCI_DW=y
 CONFIG_MFD_MC13XXX=y
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 09676b3d60..b633a3ac4d 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -82,6 +82,7 @@ config DRIVER_NET_DESIGNWARE_GENERIC
 config DRIVER_NET_DESIGNWARE_SOCFPGA
 	bool "Designware Universal MAC ethernet driver for SoCFPGA platforms"
 	depends on ARCH_SOCFPGA
+	select MFD_SYSCON
 	help
 	  This option enables support for the Synopsys
 	  Designware Core Univesal MAC 10M/100M/1G ethernet IP on SoCFPGA.
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
