Delivery-date: Fri, 20 Oct 2023 09:20:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjoL-00FGZg-Bo
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:20:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjoI-0006rA-MT
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:20:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SVVvdbX597zgpZTBNKRIQkvITsQEGDaz0SLhfpHHogE=; b=kEmjW/0tYV4oIwiSZg565paeOI
	EbrznHdDNnIocXmz+4bdlq/C5GKCq2WlGgFWxQABpz+jYRtZR8s4Z9jhBozTkUS5wAjxsxYzUXcwc
	YdxbfP6ekfjkxinN3g0NFrTdbsRIlx/RDmv7WlsOdUpl6VHCveXmaPJQJcJcrJHLhcBzJIx5DbEtz
	dtHzlgIIKUu+qiQigs72w56YGdmGWs1ARzokNrWi045TQX8JTuN+O6faraexomWdlvqi6vqjO6rkv
	Pe9AV16QNPSsy9KKcNq6s7PcDfJiH8aP9RNYsVFakVPs60V/2MWqo3bP8mjOud/PEmxr56IdlABsZ
	R4XF//Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmx-001P38-1c;
	Fri, 20 Oct 2023 07:19:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmk-001OvZ-0S
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:19:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmg-0006Do-3z; Fri, 20 Oct 2023 09:19:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-002yLu-H6; Fri, 20 Oct 2023 09:19:01 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-00BrRr-1O;
	Fri, 20 Oct 2023 09:19:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 09:18:53 +0200
Message-Id: <20231020071853.2826528-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
References: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_001906_507748_F6485EE4 
X-CRM114-Status: GOOD (  10.13  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/11] treewide: switch regmap.h include to linux/regmap.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that there are no longer any users of regmap.h in headers, let's
switch all users in the source files to linux/regmap.h.

That way, the only users of regmap.h whether directly or indirectly will
be out-of-tree code, which will fail with an error if they are dependent
on the old semantics of regmap_bulk_read and regmap_bulk_write.

After a transitory period, we can then drop regmap.h.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c    | 2 +-
 arch/arm/mach-rockchip/dmc.c             | 2 +-
 arch/kvx/cpu/reset.c                     | 2 +-
 drivers/base/regmap/regmap-fmt.c         | 2 +-
 drivers/base/regmap/regmap-i2c.c         | 2 +-
 drivers/base/regmap/regmap-mmio.c        | 2 +-
 drivers/base/regmap/regmap-spi.c         | 2 +-
 drivers/clk/at91/at91rm9200.c            | 2 +-
 drivers/clk/at91/at91sam9260.c           | 2 +-
 drivers/clk/at91/at91sam9g45.c           | 2 +-
 drivers/clk/at91/at91sam9n12.c           | 2 +-
 drivers/clk/at91/at91sam9rl.c            | 2 +-
 drivers/clk/at91/at91sam9x5.c            | 2 +-
 drivers/clk/at91/clk-audio-pll.c         | 2 +-
 drivers/clk/at91/clk-generated.c         | 2 +-
 drivers/clk/at91/clk-h32mx.c             | 2 +-
 drivers/clk/at91/clk-i2s-mux.c           | 2 +-
 drivers/clk/at91/clk-main.c              | 2 +-
 drivers/clk/at91/clk-master.c            | 2 +-
 drivers/clk/at91/clk-peripheral.c        | 2 +-
 drivers/clk/at91/clk-pll.c               | 2 +-
 drivers/clk/at91/clk-plldiv.c            | 2 +-
 drivers/clk/at91/clk-programmable.c      | 2 +-
 drivers/clk/at91/clk-sam9x60-pll.c       | 2 +-
 drivers/clk/at91/clk-slow.c              | 2 +-
 drivers/clk/at91/clk-smd.c               | 2 +-
 drivers/clk/at91/clk-system.c            | 2 +-
 drivers/clk/at91/clk-usb.c               | 2 +-
 drivers/clk/at91/clk-utmi.c              | 2 +-
 drivers/clk/at91/pmc.c                   | 2 +-
 drivers/clk/at91/sam9x60.c               | 2 +-
 drivers/clk/at91/sama5d2.c               | 2 +-
 drivers/clk/at91/sama5d3.c               | 2 +-
 drivers/clk/at91/sama5d4.c               | 2 +-
 drivers/clk/at91/sckc.c                  | 2 +-
 drivers/clk/clk-stm32f4.c                | 2 +-
 drivers/clk/rockchip/clk-inverter.c      | 2 +-
 drivers/clk/rockchip/clk-muxgrf.c        | 2 +-
 drivers/clk/rockchip/clk-pll.c           | 2 +-
 drivers/clk/rockchip/clk.c               | 2 +-
 drivers/clk/socfpga/clk-gate-a10.c       | 2 +-
 drivers/gpio/gpio-sx150x.c               | 2 +-
 drivers/hab/hab.c                        | 2 +-
 drivers/i2c/busses/i2c-cadence.c         | 2 +-
 drivers/i2c/busses/i2c-rockchip.c        | 2 +-
 drivers/i2c/busses/i2c-stm32.c           | 2 +-
 drivers/memory/atmel-ebi.c               | 2 +-
 drivers/mfd/axp20x-i2c.c                 | 2 +-
 drivers/mfd/axp20x.c                     | 2 +-
 drivers/mfd/mc13xxx.c                    | 2 +-
 drivers/mfd/rk808.c                      | 2 +-
 drivers/mfd/rohm-bd718x7.c               | 2 +-
 drivers/mfd/stpmic1.c                    | 2 +-
 drivers/mfd/superio.c                    | 2 +-
 drivers/mtd/nand/atmel/nand-controller.c | 2 +-
 drivers/net/designware_imx8.c            | 2 +-
 drivers/net/designware_rockchip.c        | 2 +-
 drivers/net/ksz8873.c                    | 2 +-
 drivers/net/realtek-dsa/realtek-mdio.c   | 2 +-
 drivers/net/realtek-dsa/realtek-smi.c    | 2 +-
 drivers/net/realtek-dsa/rtl8365mb.c      | 2 +-
 drivers/net/realtek-dsa/rtl8366rb.c      | 2 +-
 drivers/nvmem/starfive-otp.c             | 2 +-
 drivers/pci/pci-layerscape.c             | 2 +-
 drivers/power/reset/syscon-reboot-mode.c | 2 +-
 drivers/regulator/anatop-regulator.c     | 2 +-
 drivers/regulator/helpers.c              | 2 +-
 drivers/regulator/pfuze.c                | 2 +-
 drivers/regulator/rk808-regulator.c      | 2 +-
 drivers/regulator/stpmic1_regulator.c    | 2 +-
 drivers/remoteproc/imx_rproc.c           | 2 +-
 drivers/remoteproc/stm32_rproc.c         | 2 +-
 drivers/reset/reset-imx7.c               | 2 +-
 drivers/soc/imx/gpcv2.c                  | 2 +-
 drivers/soc/rockchip/io-domain.c         | 2 +-
 drivers/spi/spi-fsl-dspi.c               | 2 +-
 drivers/spi/spi-nxp-fspi.c               | 2 +-
 drivers/usb/typec/tusb320.c              | 2 +-
 drivers/watchdog/rn5t568_wdt.c           | 2 +-
 79 files changed, 79 insertions(+), 79 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 2e101adc288e..5c5e7d615599 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -20,7 +20,7 @@
 #include <mfd/syscon.h>
 #include <net.h>
 #include <of_device.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <sys/mount.h>
 #include <sys/stat.h>
 #include <unistd.h>
diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index a167be776540..e23eb9211051 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -11,7 +11,7 @@
 #include <asm/memory.h>
 #include <pbl.h>
 #include <io.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <mfd/syscon.h>
 #include <mach/rockchip/dmc.h>
 #include <mach/rockchip/rk3399-regs.h>
diff --git a/arch/kvx/cpu/reset.c b/arch/kvx/cpu/reset.c
index df36764cb66b..a19399220ac1 100644
--- a/arch/kvx/cpu/reset.c
+++ b/arch/kvx/cpu/reset.c
@@ -7,7 +7,7 @@
 #include <reset_source.h>
 #include <mfd/syscon.h>
 #include <restart.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <init.h>
 
 #include <asm/ftu.h>
diff --git a/drivers/base/regmap/regmap-fmt.c b/drivers/base/regmap/regmap-fmt.c
index 47545f691901..e7f6a8da801d 100644
--- a/drivers/base/regmap/regmap-fmt.c
+++ b/drivers/base/regmap/regmap-fmt.c
@@ -12,7 +12,7 @@
  */
 
 #include <common.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/log2.h>
 #include <asm/unaligned.h>
 
diff --git a/drivers/base/regmap/regmap-i2c.c b/drivers/base/regmap/regmap-i2c.c
index a64570d8dcfb..13ba5866c02e 100644
--- a/drivers/base/regmap/regmap-i2c.c
+++ b/drivers/base/regmap/regmap-i2c.c
@@ -4,7 +4,7 @@
  */
 
 #include <i2c/i2c.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 
 static int regmap_i2c_read(void *context,
diff --git a/drivers/base/regmap/regmap-mmio.c b/drivers/base/regmap/regmap-mmio.c
index 4c6389689cd6..01b0a9963110 100644
--- a/drivers/base/regmap/regmap-mmio.c
+++ b/drivers/base/regmap/regmap-mmio.c
@@ -7,7 +7,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <io.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "internal.h"
 
diff --git a/drivers/base/regmap/regmap-spi.c b/drivers/base/regmap/regmap-spi.c
index cb6e6f2b3716..d15d59f6350e 100644
--- a/drivers/base/regmap/regmap-spi.c
+++ b/drivers/base/regmap/regmap-spi.c
@@ -6,7 +6,7 @@
 //
 // Author: Mark Brown <broonie@opensource.wolfsonmicro.com>
 
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <spi/spi.h>
 
 static int regmap_spi_write(void *context, const void *data, size_t count)
diff --git a/drivers/clk/at91/at91rm9200.c b/drivers/clk/at91/at91rm9200.c
index dbefcd92d32f..fe40ec788a1f 100644
--- a/drivers/clk/at91/at91rm9200.c
+++ b/drivers/clk/at91/at91rm9200.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 //
 #include <driver.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <stdio.h>
 #include <mfd/syscon.h>
 
diff --git a/drivers/clk/at91/at91sam9260.c b/drivers/clk/at91/at91sam9260.c
index 3348cc6637df..7d1d3ee5f34e 100644
--- a/drivers/clk/at91/at91sam9260.c
+++ b/drivers/clk/at91/at91sam9260.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <driver.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <stdio.h>
 #include <mfd/syscon.h>
 
diff --git a/drivers/clk/at91/at91sam9g45.c b/drivers/clk/at91/at91sam9g45.c
index 95dc3d6e795b..035d36580c6e 100644
--- a/drivers/clk/at91/at91sam9g45.c
+++ b/drivers/clk/at91/at91sam9g45.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <driver.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <stdio.h>
 #include <mfd/syscon.h>
 
diff --git a/drivers/clk/at91/at91sam9n12.c b/drivers/clk/at91/at91sam9n12.c
index bf170994532d..9a12341f942e 100644
--- a/drivers/clk/at91/at91sam9n12.c
+++ b/drivers/clk/at91/at91sam9n12.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <driver.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <stdio.h>
 #include <mfd/syscon.h>
 
diff --git a/drivers/clk/at91/at91sam9rl.c b/drivers/clk/at91/at91sam9rl.c
index 19002c8dab56..bdec5cedca69 100644
--- a/drivers/clk/at91/at91sam9rl.c
+++ b/drivers/clk/at91/at91sam9rl.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <driver.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <stdio.h>
 #include <mfd/syscon.h>
 
diff --git a/drivers/clk/at91/at91sam9x5.c b/drivers/clk/at91/at91sam9x5.c
index f9f45ed6e885..d052d67ffe93 100644
--- a/drivers/clk/at91/at91sam9x5.c
+++ b/drivers/clk/at91/at91sam9x5.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <driver.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <stdio.h>
 #include <mfd/syscon.h>
 
diff --git a/drivers/clk/at91/clk-audio-pll.c b/drivers/clk/at91/clk-audio-pll.c
index e9a30b0516d4..780353ead1b4 100644
--- a/drivers/clk/at91/clk-audio-pll.c
+++ b/drivers/clk/at91/clk-audio-pll.c
@@ -37,7 +37,7 @@
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
index e639fb3a1a65..190fc7d7e921 100644
--- a/drivers/clk/at91/clk-generated.c
+++ b/drivers/clk/at91/clk-generated.c
@@ -13,7 +13,7 @@
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/bitfield.h>
 
 #include "pmc.h"
diff --git a/drivers/clk/at91/clk-h32mx.c b/drivers/clk/at91/clk-h32mx.c
index b2c5007cf785..7f36fe7abb34 100644
--- a/drivers/clk/at91/clk-h32mx.c
+++ b/drivers/clk/at91/clk-h32mx.c
@@ -12,7 +12,7 @@
 #include <linux/list.h>
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 
 #include "pmc.h"
diff --git a/drivers/clk/at91/clk-i2s-mux.c b/drivers/clk/at91/clk-i2s-mux.c
index 5e7040a5b7be..97eb75a7fa1e 100644
--- a/drivers/clk/at91/clk-i2s-mux.c
+++ b/drivers/clk/at91/clk-i2s-mux.c
@@ -14,7 +14,7 @@
 #include <linux/clk/at91_pmc.h>
 #include <linux/overflow.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include <soc/at91/atmel-sfr.h>
 
diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
index 38e72d653813..e0c8cf108ada 100644
--- a/drivers/clk/at91/clk-main.c
+++ b/drivers/clk/at91/clk-main.c
@@ -8,7 +8,7 @@
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-master.c b/drivers/clk/at91/clk-master.c
index 3e4836b66709..d20cea2b3481 100644
--- a/drivers/clk/at91/clk-master.c
+++ b/drivers/clk/at91/clk-master.c
@@ -9,7 +9,7 @@
 #include <linux/clk/at91_pmc.h>
 #include <linux/overflow.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-peripheral.c b/drivers/clk/at91/clk-peripheral.c
index c768947647d4..ff98edef3fd2 100644
--- a/drivers/clk/at91/clk-peripheral.c
+++ b/drivers/clk/at91/clk-peripheral.c
@@ -9,7 +9,7 @@
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-pll.c b/drivers/clk/at91/clk-pll.c
index d8ea566f4965..400132ad1fc4 100644
--- a/drivers/clk/at91/clk-pll.c
+++ b/drivers/clk/at91/clk-pll.c
@@ -10,7 +10,7 @@
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-plldiv.c b/drivers/clk/at91/clk-plldiv.c
index 2830b1672271..e39eb6a6543d 100644
--- a/drivers/clk/at91/clk-plldiv.c
+++ b/drivers/clk/at91/clk-plldiv.c
@@ -10,7 +10,7 @@
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-programmable.c b/drivers/clk/at91/clk-programmable.c
index ec53f1addd5f..eebd96736f35 100644
--- a/drivers/clk/at91/clk-programmable.c
+++ b/drivers/clk/at91/clk-programmable.c
@@ -11,7 +11,7 @@
 #include <linux/clk/at91_pmc.h>
 #include <linux/overflow.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-sam9x60-pll.c b/drivers/clk/at91/clk-sam9x60-pll.c
index e94b3eec4192..3cd34350b9a7 100644
--- a/drivers/clk/at91/clk-sam9x60-pll.c
+++ b/drivers/clk/at91/clk-sam9x60-pll.c
@@ -11,7 +11,7 @@
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/bitfield.h>
 
 #include "pmc.h"
diff --git a/drivers/clk/at91/clk-slow.c b/drivers/clk/at91/clk-slow.c
index bc4285e4bf75..03f8ee2c6a5d 100644
--- a/drivers/clk/at91/clk-slow.c
+++ b/drivers/clk/at91/clk-slow.c
@@ -13,7 +13,7 @@
 #include <linux/clk/at91_pmc.h>
 #include <linux/overflow.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-smd.c b/drivers/clk/at91/clk-smd.c
index 6df698637cf1..58ccbf145e57 100644
--- a/drivers/clk/at91/clk-smd.c
+++ b/drivers/clk/at91/clk-smd.c
@@ -11,7 +11,7 @@
 #include <linux/clk/at91_pmc.h>
 #include <linux/overflow.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-system.c b/drivers/clk/at91/clk-system.c
index 9a15d5b04a74..6166622a3ca8 100644
--- a/drivers/clk/at91/clk-system.c
+++ b/drivers/clk/at91/clk-system.c
@@ -9,7 +9,7 @@
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index 148befc8ac68..0a715037edbd 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -11,7 +11,7 @@
 #include <linux/clk/at91_pmc.h>
 #include <linux/overflow.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-utmi.c b/drivers/clk/at91/clk-utmi.c
index 1389983bde89..d3855b18f7b4 100644
--- a/drivers/clk/at91/clk-utmi.c
+++ b/drivers/clk/at91/clk-utmi.c
@@ -9,7 +9,7 @@
 #include <linux/clk.h>
 #include <linux/clk/at91_pmc.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include <soc/at91/atmel-sfr.h>
 
diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
index 70b71422ff04..fea931aa7c6c 100644
--- a/drivers/clk/at91/pmc.c
+++ b/drivers/clk/at91/pmc.c
@@ -9,7 +9,7 @@
 #include <linux/overflow.h>
 #include <of.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include <dt-bindings/clock/at91.h>
 
diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
index 5368b0dbc93a..9651b616c8d5 100644
--- a/drivers/clk/at91/sam9x60.c
+++ b/drivers/clk/at91/sam9x60.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <driver.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <stdio.h>
 #include <mfd/syscon.h>
 
diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
index 31c7259b91df..b25adafab91a 100644
--- a/drivers/clk/at91/sama5d2.c
+++ b/drivers/clk/at91/sama5d2.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <driver.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <stdio.h>
 #include <mfd/syscon.h>
 
diff --git a/drivers/clk/at91/sama5d3.c b/drivers/clk/at91/sama5d3.c
index f9c89dccee60..fdd97e583424 100644
--- a/drivers/clk/at91/sama5d3.c
+++ b/drivers/clk/at91/sama5d3.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <driver.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <stdio.h>
 #include <mfd/syscon.h>
 
diff --git a/drivers/clk/at91/sama5d4.c b/drivers/clk/at91/sama5d4.c
index 2d6fc6df97e5..8c6b2c1e2da7 100644
--- a/drivers/clk/at91/sama5d4.c
+++ b/drivers/clk/at91/sama5d4.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <driver.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <stdio.h>
 #include <mfd/syscon.h>
 
diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index 579fbf2479df..3b50c2b08c3a 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -15,7 +15,7 @@
 #include <linux/clk/at91_pmc.h>
 #include <linux/overflow.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 
 
diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index 3ef38b361bc4..d6ccfa6d151e 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -12,7 +12,7 @@
 #include <of_address.h>
 #include <linux/math64.h>
 #include <linux/iopoll.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <mfd/syscon.h>
 
 /*
diff --git a/drivers/clk/rockchip/clk-inverter.c b/drivers/clk/rockchip/clk-inverter.c
index 7cdcf15fd8d1..ea72d8c6b28a 100644
--- a/drivers/clk/rockchip/clk-inverter.c
+++ b/drivers/clk/rockchip/clk-inverter.c
@@ -10,7 +10,7 @@
 #include <xfuncs.h>
 #include <linux/barebox-wrapper.h>
 #include <linux/clk.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/spinlock.h>
 #include "clk.h"
 
diff --git a/drivers/clk/rockchip/clk-muxgrf.c b/drivers/clk/rockchip/clk-muxgrf.c
index f06fa6951448..e81761422f64 100644
--- a/drivers/clk/rockchip/clk-muxgrf.c
+++ b/drivers/clk/rockchip/clk-muxgrf.c
@@ -7,7 +7,7 @@
 #include <xfuncs.h>
 #include <linux/barebox-wrapper.h>
 #include <linux/clk.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/spinlock.h>
 #include "clk.h"
 
diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 736b87e32b3c..ee0603557567 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -17,7 +17,7 @@
 #include <linux/barebox-wrapper.h>
 #include "clk.h"
 #include <xfuncs.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/iopoll.h>
 
 #define PLL_MODE_WIDTH		2
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 5c074f526aa0..aca107a45db7 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -17,7 +17,7 @@
 #include <common.h>
 #include <malloc.h>
 #include <linux/clk.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <mfd/syscon.h>
 #include <linux/spinlock.h>
 #include <linux/rational.h>
diff --git a/drivers/clk/socfpga/clk-gate-a10.c b/drivers/clk/socfpga/clk-gate-a10.c
index a78732124eaf..b66fbcdb8c54 100644
--- a/drivers/clk/socfpga/clk-gate-a10.c
+++ b/drivers/clk/socfpga/clk-gate-a10.c
@@ -6,7 +6,7 @@
 #include <common.h>
 #include <io.h>
 #include <malloc.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <mach/socfpga/arria10-regs.h>
diff --git a/drivers/gpio/gpio-sx150x.c b/drivers/gpio/gpio-sx150x.c
index 320c76af060b..ff7e86d64402 100644
--- a/drivers/gpio/gpio-sx150x.c
+++ b/drivers/gpio/gpio-sx150x.c
@@ -19,7 +19,7 @@
 #include <xfuncs.h>
 #include <errno.h>
 #include <i2c/i2c.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include <gpio.h>
 #include <of_device.h>
diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index afe6a6682276..b5d309080529 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -7,7 +7,7 @@
 #include <libfile.h>
 #include <mach/imx/generic.h>
 #include <hab.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <fs.h>
 #include <mach/imx/iim.h>
 #include <mach/imx/imx25-fusemap.h>
diff --git a/drivers/i2c/busses/i2c-cadence.c b/drivers/i2c/busses/i2c-cadence.c
index 32d8a084e7aa..bf9ec3099450 100644
--- a/drivers/i2c/busses/i2c-cadence.c
+++ b/drivers/i2c/busses/i2c-cadence.c
@@ -16,7 +16,7 @@
 #include <driver.h>
 #include <io.h>
 #include <linux/clk.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 struct __packed i2c_regs {
 	u32 control;
diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
index 23bf4a55d722..ce029d148f5e 100644
--- a/drivers/i2c/busses/i2c-rockchip.c
+++ b/drivers/i2c/busses/i2c-rockchip.c
@@ -15,7 +15,7 @@
 #include <io.h>
 #include <linux/clk.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/sizes.h>
 
 struct i2c_regs {
diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index ba0d4a51b527..1be52b3dd97f 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -9,7 +9,7 @@
 #include <common.h>
 #include <i2c/i2c.h>
 #include <init.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/clk.h>
 #include <linux/iopoll.h>
 #include <linux/reset.h>
diff --git a/drivers/memory/atmel-ebi.c b/drivers/memory/atmel-ebi.c
index 6b2796fda570..293c3d7f9d56 100644
--- a/drivers/memory/atmel-ebi.c
+++ b/drivers/memory/atmel-ebi.c
@@ -14,7 +14,7 @@
 #include <init.h>
 #include <driver.h>
 #include <of_device.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <soc/at91/atmel-sfr.h>
 #include <linux/time.h>
 #include <linux/printk.h>
diff --git a/drivers/mfd/axp20x-i2c.c b/drivers/mfd/axp20x-i2c.c
index 578f7bfcf2a4..bfd93902b4dc 100644
--- a/drivers/mfd/axp20x-i2c.c
+++ b/drivers/mfd/axp20x-i2c.c
@@ -19,7 +19,7 @@
 #include <i2c/i2c.h>
 #include <module.h>
 #include <linux/mfd/axp20x.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 static int axp20x_i2c_probe(struct device *dev)
 {
diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
index c61a6e00242a..666b9ea98cae 100644
--- a/drivers/mfd/axp20x.c
+++ b/drivers/mfd/axp20x.c
@@ -23,7 +23,7 @@
 #include <module.h>
 #include <of.h>
 #include <of_device.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <regulator.h>
 
 #define AXP20X_OFF	BIT(7)
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index eadb845f6cb9..1e06a24b4539 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -11,7 +11,7 @@
 #include <errno.h>
 #include <malloc.h>
 #include <of.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include <i2c/i2c.h>
 #include <spi/spi.h>
diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 1361bb710198..77493a7b5b92 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -21,7 +21,7 @@
 #include <driver.h>
 #include <poweroff.h>
 #include <of.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 struct rk808_reg_data {
 	int addr;
diff --git a/drivers/mfd/rohm-bd718x7.c b/drivers/mfd/rohm-bd718x7.c
index 20c572b6d766..e317a29ce533 100644
--- a/drivers/mfd/rohm-bd718x7.c
+++ b/drivers/mfd/rohm-bd718x7.c
@@ -14,7 +14,7 @@
 #include <driver.h>
 #include <poweroff.h>
 #include <of.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 static struct mfd_cell bd71837_mfd_cells[] = {
 	{ .name = "gpio-keys", },
diff --git a/drivers/mfd/stpmic1.c b/drivers/mfd/stpmic1.c
index 56ab68256639..9985673aa676 100644
--- a/drivers/mfd/stpmic1.c
+++ b/drivers/mfd/stpmic1.c
@@ -9,7 +9,7 @@
 #include <i2c/i2c.h>
 #include <init.h>
 #include <of.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/mfd/stpmic1.h>
 
 static const struct regmap_config stpmic1_regmap_i2c_config = {
diff --git a/drivers/mfd/superio.c b/drivers/mfd/superio.c
index bd16b79011db..16d0bba4506e 100644
--- a/drivers/mfd/superio.c
+++ b/drivers/mfd/superio.c
@@ -7,7 +7,7 @@
 
 #include <common.h>
 #include <superio.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 struct device *superio_func_add(struct superio_chip *siochip, const char *name)
 {
diff --git a/drivers/mtd/nand/atmel/nand-controller.c b/drivers/mtd/nand/atmel/nand-controller.c
index cb74b365c8e4..5188a11cbef6 100644
--- a/drivers/mtd/nand/atmel/nand-controller.c
+++ b/drivers/mtd/nand/atmel/nand-controller.c
@@ -57,7 +57,7 @@
 #include <of.h>
 #include <of_device.h>
 #include <linux/iopoll.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <soc/at91/atmel-sfr.h>
 
 #include "pmecc.h"
diff --git a/drivers/net/designware_imx8.c b/drivers/net/designware_imx8.c
index d81dd499ab29..cd66473acd09 100644
--- a/drivers/net/designware_imx8.c
+++ b/drivers/net/designware_imx8.c
@@ -3,7 +3,7 @@
 #include <common.h>
 #include <init.h>
 #include <net.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <mfd/syscon.h>
 #include <linux/clk.h>
 
diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index 04f56ce881a4..04e2b7f12dfd 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -4,7 +4,7 @@
 #include <init.h>
 #include <dma.h>
 #include <net.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <of_net.h>
 #include <mfd/syscon.h>
 #include <linux/iopoll.h>
diff --git a/drivers/net/ksz8873.c b/drivers/net/ksz8873.c
index 7e98ec492a71..03d353075451 100644
--- a/drivers/net/ksz8873.c
+++ b/drivers/net/ksz8873.c
@@ -8,7 +8,7 @@
 #include <linux/mdio.h>
 #include <net.h>
 #include <of_device.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #define KSZ8873_CHIP_ID0		0x00
 #define KSZ8873_CHIP_ID1		0x01
diff --git a/drivers/net/realtek-dsa/realtek-mdio.c b/drivers/net/realtek-dsa/realtek-mdio.c
index 6776609b0480..463757711198 100644
--- a/drivers/net/realtek-dsa/realtek-mdio.c
+++ b/drivers/net/realtek-dsa/realtek-mdio.c
@@ -20,7 +20,7 @@
  */
 
 #include <of_device.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <clock.h>
 #include <linux/gpio/consumer.h>
 #include <linux/printk.h>
diff --git a/drivers/net/realtek-dsa/realtek-smi.c b/drivers/net/realtek-dsa/realtek-smi.c
index 8e6f0e2ad94f..f93024ace516 100644
--- a/drivers/net/realtek-dsa/realtek-smi.c
+++ b/drivers/net/realtek-dsa/realtek-smi.c
@@ -35,7 +35,7 @@
 #include <clock.h>
 #include <linux/gpio/consumer.h>
 #include <driver.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/bitops.h>
 #include <linux/if_bridge.h>
 
diff --git a/drivers/net/realtek-dsa/rtl8365mb.c b/drivers/net/realtek-dsa/rtl8365mb.c
index d8e8ac714deb..700773ffa657 100644
--- a/drivers/net/realtek-dsa/rtl8365mb.c
+++ b/drivers/net/realtek-dsa/rtl8365mb.c
@@ -96,7 +96,7 @@
 #include <linux/spinlock.h>
 #include <linux/printk.h>
 #include <linux/export.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <net.h>
 #include <linux/if_bridge.h>
 
diff --git a/drivers/net/realtek-dsa/rtl8366rb.c b/drivers/net/realtek-dsa/rtl8366rb.c
index 5449b9481cf7..26f036dfe570 100644
--- a/drivers/net/realtek-dsa/rtl8366rb.c
+++ b/drivers/net/realtek-dsa/rtl8366rb.c
@@ -17,7 +17,7 @@
 #include <linux/if_bridge.h>
 #include <linux/printk.h>
 #include <linux/export.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #include "realtek.h"
 
diff --git a/drivers/nvmem/starfive-otp.c b/drivers/nvmem/starfive-otp.c
index 91069dc78ebf..d22350b10ef2 100644
--- a/drivers/nvmem/starfive-otp.c
+++ b/drivers/nvmem/starfive-otp.c
@@ -13,7 +13,7 @@
 #include <net.h>
 #include <io.h>
 #include <of.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <machine_id.h>
 #include <linux/reset.h>
 #include <linux/clk.h>
diff --git a/drivers/pci/pci-layerscape.c b/drivers/pci/pci-layerscape.c
index 168948047030..0fb742af9ad7 100644
--- a/drivers/pci/pci-layerscape.c
+++ b/drivers/pci/pci-layerscape.c
@@ -21,7 +21,7 @@
 #include <linux/kernel.h>
 #include <of_address.h>
 #include <of_pci.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <magicvar.h>
 #include <globalvar.h>
 #include <mfd/syscon.h>
diff --git a/drivers/power/reset/syscon-reboot-mode.c b/drivers/power/reset/syscon-reboot-mode.c
index 9d379c9dda0e..7d44d9c07e96 100644
--- a/drivers/power/reset/syscon-reboot-mode.c
+++ b/drivers/power/reset/syscon-reboot-mode.c
@@ -7,7 +7,7 @@
 #include <init.h>
 #include <driver.h>
 #include <of.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <mfd/syscon.h>
 #include <linux/reboot-mode.h>
 #include <linux/overflow.h>
diff --git a/drivers/regulator/anatop-regulator.c b/drivers/regulator/anatop-regulator.c
index e78b503d4f71..4b4c1743046f 100644
--- a/drivers/regulator/anatop-regulator.c
+++ b/drivers/regulator/anatop-regulator.c
@@ -6,7 +6,7 @@
 #include <common.h>
 #include <init.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <regulator.h>
 
 struct anatop_regulator {
diff --git a/drivers/regulator/helpers.c b/drivers/regulator/helpers.c
index fb689a6bfc94..80102e2c1028 100644
--- a/drivers/regulator/helpers.c
+++ b/drivers/regulator/helpers.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <common.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <regulator.h>
 
 /**
diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
index 8426d6f25be2..3e8890b10cec 100644
--- a/drivers/regulator/pfuze.c
+++ b/drivers/regulator/pfuze.c
@@ -10,7 +10,7 @@
 #include <errno.h>
 #include <malloc.h>
 #include <of.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <mfd/pfuze.h>
 
 #include <i2c/i2c.h>
diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index 8c96b99c9be5..adb02623143f 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -14,7 +14,7 @@
 #include <init.h>
 #include <i2c/i2c.h>
 #include <of_device.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/regulator/of_regulator.h>
 #include <regulator.h>
 #include <linux/mfd/rk808.h>
diff --git a/drivers/regulator/stpmic1_regulator.c b/drivers/regulator/stpmic1_regulator.c
index c8b56e3a1a18..beab7f163d1d 100644
--- a/drivers/regulator/stpmic1_regulator.c
+++ b/drivers/regulator/stpmic1_regulator.c
@@ -5,7 +5,7 @@
 #include <common.h>
 #include <init.h>
 #include <of_device.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/regulator/of_regulator.h>
 #include <regulator.h>
 #include <linux/mfd/stpmic1.h>
diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 68fe8031e5fb..bf76858ef35c 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -17,7 +17,7 @@
 #include <memory.h>
 #include <of_address.h>
 #include <of_device.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 
 #define IMX7D_SRC_SCR			0x0C
 #define IMX7D_ENABLE_M4			BIT(3)
diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index b6a62634842f..31df7fb49558 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -13,7 +13,7 @@
 #include <mach/stm32mp/smc.h>
 #include <mfd/syscon.h>
 #include <of_address.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/remoteproc.h>
 #include <linux/reset.h>
 
diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
index 20542c536b99..c6c38f48a828 100644
--- a/drivers/reset/reset-imx7.c
+++ b/drivers/reset/reset-imx7.c
@@ -14,7 +14,7 @@
 #include <linux/err.h>
 #include <linux/reset-controller.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <of_device.h>
 
 struct imx7_src_signal {
diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 57d9dcc99d9a..b967947478b9 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -10,7 +10,7 @@
 
 #include <of_device.h>
 #include <common.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/clk.h>
 #include <linux/reset.h>
 #include <clock.h>
diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index 5b32dad9ed6b..d31d38b1daf7 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -14,7 +14,7 @@
 #include <of.h>
 #include <linux/err.h>
 #include <mfd/syscon.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <regulator.h>
 
 #define MAX_SUPPLIES		16
diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index f827c9fc8244..f032e2673eb6 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -10,7 +10,7 @@
 #include <errno.h>
 #include <init.h>
 #include <io.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <spi/spi.h>
 #include <linux/clk.h>
 #include <linux/math64.h>
diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index ed0af241f87d..1d6604fee33a 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -38,7 +38,7 @@
 #include <errno.h>
 #include <init.h>
 #include <io.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/types.h>
 #include <linux/bitops.h>
 #include <linux/clk.h>
diff --git a/drivers/usb/typec/tusb320.c b/drivers/usb/typec/tusb320.c
index eb6b492481a3..90a846b0fbcc 100644
--- a/drivers/usb/typec/tusb320.c
+++ b/drivers/usb/typec/tusb320.c
@@ -14,7 +14,7 @@
 #include <linux/printk.h>
 #include <linux/bitops.h>
 #include <module.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/usb/typec.h>
 #include <linux/usb/typec_altmode.h>
 
diff --git a/drivers/watchdog/rn5t568_wdt.c b/drivers/watchdog/rn5t568_wdt.c
index 0357320822ff..2011e3e01c5f 100644
--- a/drivers/watchdog/rn5t568_wdt.c
+++ b/drivers/watchdog/rn5t568_wdt.c
@@ -8,7 +8,7 @@
 #include <common.h>
 #include <init.h>
 #include <watchdog.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <of.h>
 
 #define RN5T568_WATCHDOG 0x0b
-- 
2.39.2



