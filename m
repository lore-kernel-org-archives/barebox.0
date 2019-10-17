Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL3D4-0002Aa-9A
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 10:40:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1iL3D1-0006Cz-Cq
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 12:40:43 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1iL3D1-0002lS-5J
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 12:40:43 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 17 Oct 2019 12:40:41 +0200
Message-Id: <20191017104041.31923-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20191017104041.31923-1-s.trumtrar@pengutronix.de>
References: <20191017104041.31923-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: socfpga: defconfig: enable state_drv
To: Barebox List <barebox@lists.infradead.org>

The Arria10 DTS uses the state framework.
Enable the driver so it gets probed.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/configs/socfpga-arria10_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/socfpga-arria10_defconfig b/arch/arm/configs/socfpga-arria10_defconfig
index ae420c1dd290..e47a0ab1836d 100644
--- a/arch/arm/configs/socfpga-arria10_defconfig
+++ b/arch/arm/configs/socfpga-arria10_defconfig
@@ -74,6 +74,7 @@ CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_DW=y
+CONFIG_STATE_DRV=y
 # CONFIG_PINCTRL is not set
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
