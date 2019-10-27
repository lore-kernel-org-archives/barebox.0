Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOroC-0005oY-It
 for barebox@lists.infradead.org; Sun, 27 Oct 2019 23:18:54 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Oct 2019 00:18:31 +0100
Message-Id: <20191027231832.10247-7-a.fatoum@pengutronix.de>
In-Reply-To: <20191027231832.10247-1-a.fatoum@pengutronix.de>
References: <20191027231832.10247-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 7/8] ARM: stm32mp: dk2: add barebox SD-Card update handler
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Now with the SD/MMC controller supported, lets add a bbu handler, so we
can use it to update the second stage boot loader partition.

While doing this, I noticed that making use of the bus-width = <4>
property in the device tree now makes mmc usage fail when reading the
environment:

  ERROR: error SDMMC_STA_DCRCFAIL (0x81042) for cmd 18
  ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12
  WARNING: stm32_sdmmc2_send_cmd: cmd 12 failed, retrying ...
  ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12
  WARNING: stm32_sdmmc2_send_cmd: cmd 12 failed, retrying ...
  ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12
  WARNING: stm32_sdmmc2_send_cmd: cmd 12 failed, retrying ...
  ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12

We'll want to fix this eventually, but for now force the bus width to 1
and print a notice to the console that we've done so. This is not
enough, however because it then fails at loading the kernel from MMC:

  ERROR: Time out on waiting for SDMMC_STA. cmd 18
  ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x804) for cmd 12
  WARNING: stm32_sdmmc2_send_cmd: cmd 18 failed, retrying ...

Fixing the max frequency at 208 MHz fixes this. So do that and print a
notice for it as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp157c-dk2/board.c  | 14 ++++++++++++++
 arch/arm/dts/stm32mp157a-dk1.dtsi        |  4 ++++
 arch/arm/mach-stm32mp/include/mach/bbu.h | 14 ++++++++++++++
 drivers/mci/stm32_sdmmc2.c               | 15 +++++++++++++--
 4 files changed, 45 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-stm32mp/include/mach/bbu.h

diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
index 9cb861af85d8..5bc88781c7ba 100644
--- a/arch/arm/boards/stm32mp157c-dk2/board.c
+++ b/arch/arm/boards/stm32mp157c-dk2/board.c
@@ -4,6 +4,7 @@
 #include <init.h>
 #include <asm/memory.h>
 #include <mach/stm32.h>
+#include <mach/bbu.h>
 
 static int dk2_mem_init(void)
 {
@@ -15,3 +16,16 @@ static int dk2_mem_init(void)
 	return 0;
 }
 mem_initcall(dk2_mem_init);
+
+static int dk2_postcore_init(void)
+{
+	if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
+		return 0;
+
+	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl",
+					 BBU_HANDLER_FLAG_DEFAULT);
+
+	return 0;
+}
+
+postcore_initcall(dk2_postcore_init);
diff --git a/arch/arm/dts/stm32mp157a-dk1.dtsi b/arch/arm/dts/stm32mp157a-dk1.dtsi
index 7f3b6fcf55ae..05a39d32e2fa 100644
--- a/arch/arm/dts/stm32mp157a-dk1.dtsi
+++ b/arch/arm/dts/stm32mp157a-dk1.dtsi
@@ -8,6 +8,10 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
+	aliases {
+		mmc0 = &sdmmc1;
+	};
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/mach-stm32mp/include/mach/bbu.h b/arch/arm/mach-stm32mp/include/mach/bbu.h
new file mode 100644
index 000000000000..8b9504400e9e
--- /dev/null
+++ b/arch/arm/mach-stm32mp/include/mach/bbu.h
@@ -0,0 +1,14 @@
+#ifndef MACH_STM32MP_BBU_H_
+#define MACH_STM32MP_BBU_H_
+
+#include <bbu.h>
+
+static inline int stm32mp_bbu_mmc_register_handler(const char *name,
+						   const char *devicefile,
+						   unsigned long flags)
+{
+	return bbu_register_std_file_update(name, flags, devicefile,
+					    filetype_stm32_image_v1);
+}
+
+#endif /* MACH_STM32MP_BBU_H_ */
diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 7346c8a3f5d6..3f0fff1258c0 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -627,11 +627,22 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
 	if (IS_ERR(priv->reset_ctl))
 		priv->reset_ctl = NULL;
 
+	mci_of_parse(&priv->mci);
+
 	mci->f_min = 400000;
-	/* f_max is taken from kernel v5.3 variant_stm32_sdmmc */
-	mci->f_max = 208000000;
 	mci->voltages = MMC_VDD_32_33 | MMC_VDD_33_34 | MMC_VDD_165_195;
 
+	if (mci->f_max != 208000000) {
+		/* f_max is taken from kernel v5.3 variant_stm32_sdmmc */
+		dev_notice(dev, "Fixing max-frequency to 208 MHz due to driver limitation\n");
+		mci->f_max = 208000000;
+	}
+
+	if (mci->host_caps & (MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)) {
+		dev_notice(dev, "Fixing bus-width to 1 due to driver limitation\n");
+		mci->host_caps &= ~(MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA);
+	}
+
 	return mci_register(&priv->mci);
 
 priv_free:
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
