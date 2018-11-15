Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNDat-00055d-5t
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 09:05:48 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gNDah-0005pb-El
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 10:05:35 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gNDah-0002dQ-4y
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 10:05:35 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 15 Nov 2018 10:05:30 +0100
Message-Id: <20181115090530.10081-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20181115090530.10081-1-s.trumtrar@pengutronix.de>
References: <20181115090530.10081-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: socfpga: select GPIOLIB for non-xload
To: Barebox List <barebox@lists.infradead.org>

SoCFPGA has GPIOs. Select it for the normal bootloader. For the xload barebox,
do not select it to not waste space.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 65097b676a6f..3d8fc8ba42a9 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -21,6 +21,7 @@ config ARCH_SOCFPGA_CYCLONE5
 	select HAVE_PBL_MULTI_IMAGES
 	select OFDEVICE if !ARCH_SOCFPGA_XLOAD
 	select OFTREE if !ARCH_SOCFPGA_XLOAD
+	select GPIOLIB if !ARCH_SOCFPGA_XLOAD
 
 config ARCH_SOCFPGA_ARRIA10
 	bool
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
