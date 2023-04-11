Delivery-date: Tue, 11 Apr 2023 09:17:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FU-00HIBf-Bx
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 09:17:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FK-0001kh-St
	for lore@pengutronix.de; Tue, 11 Apr 2023 09:17:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kh35F3bGrVy9MyMFg4Fw5z5Fo4A145qjCst+TIkpN7g=; b=FkPbqhTeDoA7x5N7vOGwbmHEWE
	5q3LSeztXAoMQUI9H4Dy6U3c0rUER2lkxt4D2jDqpcgSYOYzTi8NJefiR7telhlf9BrrM/QqbrwIa
	uRT7GJaDdsp7Cgbaam6jAjqrIm5HO+ao8TgY+R3AtxbXVKLbNprOi8JJGSd9bohKw4hddzt3KZKT3
	28zbA0+lv/pQtMoH99J2tNHHgcXSL8Z7e1W0+/kC9qkghbNfS8siSTNKhkMqOTlTgtw5VoTh6GEkN
	2Y0LisstBp16+iwCVAtCh03M+p0dPJI1Ev30S5iDeNaX3KZIdxgO0/o+gJniaMlJgWFxUTNGf17hd
	T2lpTG4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DS-00Gg56-0P;
	Tue, 11 Apr 2023 07:14:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DH-00GfxS-2J
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 07:14:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DF-0000ry-2T; Tue, 11 Apr 2023 09:14:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DE-00ARvb-CX; Tue, 11 Apr 2023 09:14:44 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DB-006qO4-QJ; Tue, 11 Apr 2023 09:14:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Apr 2023 09:14:34 +0200
Message-Id: <20230411071436.1630752-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
References: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_001447_931462_66C70761 
X-CRM114-Status: GOOD (  12.56  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 12/14] treewide: fix includes missed by multiarch support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Found by manual inspection of the results of:

  rg '#include\s*<mach/[^/]+>' | rg -v 'arch/(powerpc|sandbox|mips|x86|kvx)'

Fixes: 68b778c24314 ("ARM: Drop mach dir include path")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/imx.rst     | 4 ++--
 drivers/aiodev/am335x_adc.c      | 2 +-
 drivers/aiodev/imx_thermal.c     | 2 +-
 drivers/hab/hab.c                | 2 +-
 drivers/nvmem/ocotp.c            | 4 ++--
 drivers/pci/pci-imx6.c           | 6 +++---
 drivers/pinctrl/imx-iomux-v2.c   | 2 +-
 drivers/spi/atmel-quadspi.c      | 6 +++---
 drivers/video/imx-ipu-fb.c       | 4 ++--
 scripts/regsubst.pl              | 8 ++++----
 scripts/socfpga_xml_to_config.sh | 4 ++--
 11 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 6fbf1554d10e..5cc4676a9613 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -168,13 +168,13 @@ keys/certificates are expected in these config variables (assuming HABv4):
   CONFIG_HABV4_IMG_CRT_PEM
 
 A CSF template is located in
-``arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h`` which is preprocessed
+``include/mach/imx/habv4-imx6-gencsf.h`` which is preprocessed
 by barebox.
 It must be included in the board's flash header:
 
 .. code-block:: none
 
-  #include <mach/habv4-imx6-gencsf.h>
+  #include <mach/imx/habv4-imx6-gencsf.h>
 
 Analogous to HABv4 options and a template exist for HABv3.
 
diff --git a/drivers/aiodev/am335x_adc.c b/drivers/aiodev/am335x_adc.c
index ceb7531dc0d6..491866ca36e6 100644
--- a/drivers/aiodev/am335x_adc.c
+++ b/drivers/aiodev/am335x_adc.c
@@ -19,7 +19,7 @@
 #include <io.h>
 #include <linux/log2.h>
 #include <aiodev.h>
-#include <mach/am33xx-clock.h>
+#include <mach/omap/am33xx-clock.h>
 #include "ti_am335x_tscadc.h"
 
 struct am335x_adc_data {
diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
index 4d24f6cae32f..0b1670708fc9 100644
--- a/drivers/aiodev/imx_thermal.c
+++ b/drivers/aiodev/imx_thermal.c
@@ -22,7 +22,7 @@
 #include <linux/math64.h>
 #include <linux/log2.h>
 #include <linux/clk.h>
-#include <mach/imx6-anadig.h>
+#include <mach/imx/imx6-anadig.h>
 #include <io.h>
 #include <aiodev.h>
 #include <mfd/syscon.h>
diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 65384a6c10db..5bb97c4b689b 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -5,7 +5,7 @@
 #include <fcntl.h>
 #include <environment.h>
 #include <libfile.h>
-#include <mach/generic.h>
+#include <mach/imx/generic.h>
 #include <hab.h>
 #include <regmap.h>
 #include <fs.h>
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index ff1e815c6b98..f3bd377f844d 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -30,8 +30,8 @@
 #include <mach/imx/ocotp.h>
 #include <mach/imx/ocotp-fusemap.h>
 #else
-#include <mach/ocotp.h>
-#include <mach/ocotp-fusemap.h>
+#include <mach/mxs/ocotp.h>
+#include <mach/mxs/ocotp-fusemap.h>
 #endif
 #include <soc/imx8m/featctrl.h>
 #include <linux/nvmem-provider.h>
diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 6212a00913a5..40bcf3d89033 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -30,9 +30,9 @@
 #include <mfd/imx6q-iomuxc-gpr.h>
 #include <mfd/imx7-iomuxc-gpr.h>
 
-#include <mach/imx6-regs.h>
-#include <mach/imx7-regs.h>
-#include <mach/imx8mq-regs.h>
+#include <mach/imx/imx6-regs.h>
+#include <mach/imx/imx7-regs.h>
+#include <mach/imx/imx8mq-regs.h>
 
 #include "pcie-designware.h"
 
diff --git a/drivers/pinctrl/imx-iomux-v2.c b/drivers/pinctrl/imx-iomux-v2.c
index 806c3f882c07..cc5b8f11bcfe 100644
--- a/drivers/pinctrl/imx-iomux-v2.c
+++ b/drivers/pinctrl/imx-iomux-v2.c
@@ -7,7 +7,7 @@
 #include <io.h>
 #include <init.h>
 #include <linux/err.h>
-#include <mach/iomux-mx31.h>
+#include <mach/imx/iomux-mx31.h>
 
 /*
  * IOMUX register (base) addresses
diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index e579fcaed6ee..923a170844f6 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -21,9 +21,9 @@
 #include <of_gpio.h>
 #include <io.h>
 #include <spi/spi.h>
-#include <mach/iomux.h>
-#include <mach/board.h>
-#include <mach/cpu.h>
+#include <mach/at91/iomux.h>
+#include <mach/at91/board.h>
+#include <mach/at91/cpu.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 77c0ba2c9ca8..e2ff01929be2 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -8,14 +8,14 @@
 #include <dma.h>
 #include <init.h>
 #include <io.h>
-#include <mach/imx35-regs.h>
+#include <mach/imx/imx35-regs.h>
 #include <fb.h>
 #include <platform_data/imxfb.h>
 #include <malloc.h>
 #include <errno.h>
 #include <linux/math64.h>
 #include <mmu.h>
-#include <mach/imx-ipu-fb.h>
+#include <mach/imx/imx-ipu-fb.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 
diff --git a/scripts/regsubst.pl b/scripts/regsubst.pl
index 026c4eed2f12..1aaab4f6a20e 100755
--- a/scripts/regsubst.pl
+++ b/scripts/regsubst.pl
@@ -47,8 +47,8 @@ First you have to add the right #include directives to your file:
  loadaddr 0x20000000
  ivtofs 0x400
  
- #include <mach/imx6-ddr-regs.h>
- #include <mach/imx6dl-ddr-regs.h>
+ #include <mach/imx/imx6-ddr-regs.h>
+ #include <mach/imx/imx6dl-ddr-regs.h>
  
  wm 32 0x020e0774 0x000C0000
  wm 32 0x020e0754 0x00000000
@@ -61,8 +61,8 @@ Then you can process the file with B<regsubst.pl>:
  loadaddr 0x20000000
  ivtofs 0x400
  
- #include <mach/imx6-ddr-regs.h>
- #include <mach/imx6dl-ddr-regs.h>
+ #include <mach/imx/imx6-ddr-regs.h>
+ #include <mach/imx/imx6dl-ddr-regs.h>
  
  wm 32 MX6_IOM_GRP_DDR_TYPE 0x000C0000
  wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
diff --git a/scripts/socfpga_xml_to_config.sh b/scripts/socfpga_xml_to_config.sh
index 1e6056cfb461..2ec2788865b0 100755
--- a/scripts/socfpga_xml_to_config.sh
+++ b/scripts/socfpga_xml_to_config.sh
@@ -41,7 +41,7 @@ pll_config() {
         sed -e "s/^/\t./g" |
         sort`
 
-    echo "#include <mach/arria10-clock-manager.h>" > $tgt
+    echo "#include <mach/socfpga/arria10-clock-manager.h>" > $tgt
     echo >> $tgt
     echo "static struct arria10_mainpll_cfg mainpll_cfg = {" >> $tgt
     echo "$MAINPLL" >> $tgt
@@ -107,7 +107,7 @@ pinmux_config() {
             sed -e "s/\.sel' value='/] = /g" | \
             sed -e "s/' \/>/,/g"`
 
-    echo "#include <mach/arria10-pinmux.h>" > $tgt
+    echo "#include <mach/socfpga/arria10-pinmux.h>" > $tgt
     echo >> $tgt
     echo "static uint32_t pinmux[] = {" >> $tgt
     echo "$SHARED" >> $tgt
-- 
2.39.2



