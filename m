Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpCUt-00042p-Cg
 for barebox@lists.infradead.org; Thu, 31 Jan 2019 13:35:16 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gpCUr-0002jN-SJ
 for barebox@lists.infradead.org; Thu, 31 Jan 2019 14:35:13 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 31 Jan 2019 14:35:13 +0100
Message-Id: <20190131133513.5857-1-l.stach@pengutronix.de>
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
Subject: [PATCH] fixup! firmware: drop the imx subdir
To: barebox@lists.infradead.org

The imx-atf build target is called imx8mq, so to avoid any renaming
look for a ATF binary of the same name.
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 2 +-
 firmware/Makefile                         | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 629564c28b2a..ffbe14836f92 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -115,7 +115,7 @@ ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
 		const u8 *bl31;
 		size_t bl31_size;
 
-		get_builtin_firmware(imx8m_bl31_bin, &bl31, &bl31_size);
+		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
 		imx8mq_atf_load_bl31(bl31, bl31_size);
 	}
 
diff --git a/firmware/Makefile b/firmware/Makefile
index 170588e14520..f238ce25383c 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -9,7 +9,7 @@ firmware-$(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) += \
 	lpddr4_pmu_train_2d_dmem.bin \
 	lpddr4_pmu_train_2d_imem.bin
 
-firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8m-bl31.bin
+firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
 
 # Create $(fwabs) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
 # leading /, it's relative to $(srctree).
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
