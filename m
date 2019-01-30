Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gos6n-0003Jm-26
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 15:49:12 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gos6g-0004KV-0x
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 16:48:54 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Jan 2019 16:48:52 +0100
Message-Id: <20190130154853.31574-6-l.stach@pengutronix.de>
In-Reply-To: <20190130154853.31574-1-l.stach@pengutronix.de>
References: <20190130154853.31574-1-l.stach@pengutronix.de>
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
Subject: [PATCH 5/6] firmware: drop the imx subdir
To: barebox@lists.infradead.org

We don't intend to ship any files in this directory, so there is no
risk of the directory getting too crowded over time. Drop the subdir
as this makes it easier for a outer build system to drop all the
needed firmwares into the correct directory.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 Documentation/boards/imx/nxp-imx8mq-evk.rst |  4 ++--
 arch/arm/boards/nxp-imx8mq-evk/ddr.h        |  8 ++++----
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c   |  2 +-
 firmware/Makefile                           | 10 +++++-----
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst b/Documentation/boards/imx/nxp-imx8mq-evk.rst
index 250e51743842..8bad9455a571 100644
--- a/Documentation/boards/imx/nxp-imx8mq-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
@@ -37,7 +37,7 @@ As a last step of this process those files need to be placed in
 	   lpddr4_pmu_train_2d_imem.bin; \
   do \
 	   cp firmware-imx-8.0/firmware/ddr/synopsys/${f} \
-	      firmware/imx/${f}; \
+	      firmware/${f}; \
   done
 
 You will also need to copy the HDMITX controller firmware in order to
@@ -47,7 +47,7 @@ use the HDMI and/or eDP display output::
 	   signed_hdmi_imx8m.bin; \
   do \
 	   cp firmware-imx-8.0/firmware/hdmi/cadence/${f} \
-	      firmware/imx/${f}; \
+	      firmware/${f}; \
   done
 
 DDR Configuration Code
diff --git a/arch/arm/boards/nxp-imx8mq-evk/ddr.h b/arch/arm/boards/nxp-imx8mq-evk/ddr.h
index 8f494ae7a223..65115dba1e52 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/ddr.h
+++ b/arch/arm/boards/nxp-imx8mq-evk/ddr.h
@@ -21,9 +21,9 @@
 void nxp_imx8mq_evk_ddr_init(void);
 void nxp_imx8mq_evk_ddr_cfg_phy(void);
 
-#define FW_1D_IMAGE	imx_lpddr4_pmu_train_1d_imem_bin, \
-			imx_lpddr4_pmu_train_1d_dmem_bin
-#define FW_2D_IMAGE	imx_lpddr4_pmu_train_2d_imem_bin, \
-			imx_lpddr4_pmu_train_2d_dmem_bin
+#define FW_1D_IMAGE	lpddr4_pmu_train_1d_imem_bin, \
+			lpddr4_pmu_train_1d_dmem_bin
+#define FW_2D_IMAGE	lpddr4_pmu_train_2d_imem_bin, \
+			lpddr4_pmu_train_2d_dmem_bin
 
 
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 1dff4b4d312c..629564c28b2a 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -115,7 +115,7 @@ ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
 		const u8 *bl31;
 		size_t bl31_size;
 
-		get_builtin_firmware(imx_imx8m_bl31_bin, &bl31, &bl31_size);
+		get_builtin_firmware(imx8m_bl31_bin, &bl31, &bl31_size);
 		imx8mq_atf_load_bl31(bl31, bl31_size);
 	}
 
diff --git a/firmware/Makefile b/firmware/Makefile
index 7f4dc4932629..170588e14520 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -4,12 +4,12 @@
 #
 
 firmware-$(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) += \
-	imx/lpddr4_pmu_train_1d_dmem.bin \
-	imx/lpddr4_pmu_train_1d_imem.bin \
-	imx/lpddr4_pmu_train_2d_dmem.bin \
-	imx/lpddr4_pmu_train_2d_imem.bin
+	lpddr4_pmu_train_1d_dmem.bin \
+	lpddr4_pmu_train_1d_imem.bin \
+	lpddr4_pmu_train_2d_dmem.bin \
+	lpddr4_pmu_train_2d_imem.bin
 
-firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx/imx8m-bl31.bin
+firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8m-bl31.bin
 
 # Create $(fwabs) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
 # leading /, it's relative to $(srctree).
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
