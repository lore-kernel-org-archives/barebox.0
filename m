Delivery-date: Wed, 17 Nov 2021 12:40:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnJIm-0001wG-1f
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 12:40:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnJIj-0000n8-Or
	for lore@pengutronix.de; Wed, 17 Nov 2021 12:40:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9KjgkNFEQtcgMsburBRK4LM/AAuSBlgdLQf4MOkH54=; b=H5JSbPtrmypiFM
	IDf2JxVIU8fQ5+CQQST1fzxcW/UGP8VgnQkGnO5yF+E+s0etFq3ifPBihqS0wXqrzviuNTGSR5661
	jFt/x0hSaLXh8GkIo7SOY2NoqphwtigKBFvJbAQl3Kp+L764ItN6I4bzWIK3ZbPlHTnulsscNcpzZ
	E3ctmGXlBbXe7DO6UtIluS6ZbgcJpFPPT98mov/KnKAL7ESOhfoRBmks4ITuwLhUFbHdjt3oq4VFo
	Lz9nnGEl8482cJwToTGYwJCnielt4NBP6UOQoBDRch/hZXNPlAQ8ys6d6BM7TlzvBl7UdUra1xNYB
	UqVLtTFBAACNOJzyxVng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnJHM-004dCy-9N; Wed, 17 Nov 2021 11:39:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnJHE-004dB3-MQ
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 11:38:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mnJHB-0000IH-Ru; Wed, 17 Nov 2021 12:38:53 +0100
Received: from rhi by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <rhi@pengutronix.de>)
 id 1mnJHB-008UEX-CJ; Wed, 17 Nov 2021 12:38:53 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Wed, 17 Nov 2021 12:38:51 +0100
Message-Id: <20211117113851.2022669-3-rhi@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211117113851.2022669-1-rhi@pengutronix.de>
References: <20211117113851.2022669-1-rhi@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_033857_101600_19F59E34 
X-CRM114-Status: GOOD (  10.04  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] drivers: migrate "GPL-2.0+" license identifiers to SPDX
 2.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

"GPL-2.0-or-later" was introduced in SPDX 2.0, and the old identifier
"GPL-2.0+" is now deprecated; see <https://spdx.org/licenses>.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 drivers/block/virtio_blk.c                 | 2 +-
 drivers/clk/at91/clk-sam9x60-pll.c         | 2 +-
 drivers/clocksource/clps711x.c             | 2 +-
 drivers/ddr/fsl/arm_ddr_gen3.c             | 2 +-
 drivers/ddr/fsl/ctrl_regs.c                | 2 +-
 drivers/ddr/fsl/ddr4_dimm_params.c         | 2 +-
 drivers/ddr/fsl/fsl_ddr_gen4.c             | 2 +-
 drivers/ddr/fsl/options.c                  | 2 +-
 drivers/ddr/imx8m/ddr_init.c               | 2 +-
 drivers/ddr/imx8m/ddrphy_csr.c             | 2 +-
 drivers/ddr/imx8m/ddrphy_train.c           | 2 +-
 drivers/ddr/imx8m/ddrphy_utils.c           | 2 +-
 drivers/ddr/imx8m/helper.c                 | 2 +-
 drivers/gpio/gpio-clps711x.c               | 2 +-
 drivers/gpio/gpio-raspberrypi-exp.c        | 2 +-
 drivers/mfd/rave-sp.c                      | 2 +-
 drivers/misc/ubootvar.c                    | 2 +-
 drivers/net/fsl-fman.c                     | 2 +-
 drivers/net/virtio.c                       | 2 +-
 drivers/nvmem/rmem.c                       | 2 +-
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 2 +-
 drivers/power/reset/nvmem-reboot-mode.c    | 2 +-
 drivers/reset/reset-stm32.c                | 2 +-
 drivers/serial/serial_clps711x.c           | 2 +-
 drivers/serial/serial_sbi.c                | 2 +-
 drivers/serial/serial_sifive.c             | 2 +-
 drivers/serial/serial_stm32.c              | 2 +-
 drivers/serial/serial_stm32.h              | 2 +-
 drivers/soc/imx/gpcv2.c                    | 2 +-
 drivers/spi/spi-fsl-dspi.c                 | 2 +-
 drivers/spi/spi-fsl-qspi.c                 | 2 +-
 drivers/spi/spi-mem.c                      | 2 +-
 drivers/spi/zynq_qspi.c                    | 2 +-
 drivers/usb/dwc2/core.c                    | 2 +-
 drivers/usb/dwc2/core.h                    | 2 +-
 drivers/usb/dwc2/dwc2.c                    | 2 +-
 drivers/usb/dwc2/dwc2.h                    | 2 +-
 drivers/usb/dwc2/gadget.c                  | 2 +-
 drivers/usb/dwc2/host.c                    | 2 +-
 drivers/usb/dwc2/regs.h                    | 2 +-
 drivers/usb/dwc2/rhub.c                    | 2 +-
 drivers/usb/gadget/storage_common.c        | 2 +-
 drivers/usb/host/xhci-mem.c                | 2 +-
 drivers/usb/host/xhci-ring.c               | 2 +-
 drivers/usb/host/xhci.c                    | 2 +-
 drivers/usb/host/xhci.h                    | 2 +-
 drivers/usb/misc/usb251xb.c                | 2 +-
 drivers/virtio/virtio_pci_modern.c         | 2 +-
 drivers/virtio/virtio_ring.c               | 2 +-
 drivers/watchdog/rave-sp-wdt.c             | 2 +-
 50 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index 87ab505f8326..660f3a7b6b9b 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2018, Tuomas Tynkkynen <tuomas.tynkkynen@iki.fi>
  * Copyright (C) 2018, Bin Meng <bmeng.cn@gmail.com>
diff --git a/drivers/clk/at91/clk-sam9x60-pll.c b/drivers/clk/at91/clk-sam9x60-pll.c
index 744c3833bb34..e94b3eec4192 100644
--- a/drivers/clk/at91/clk-sam9x60-pll.c
+++ b/drivers/clk/at91/clk-sam9x60-pll.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2019 Microchip Technology Inc.
  *
diff --git a/drivers/clocksource/clps711x.c b/drivers/clocksource/clps711x.c
index a99147f30c4f..cd099604786e 100644
--- a/drivers/clocksource/clps711x.c
+++ b/drivers/clocksource/clps711x.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /* Author: Alexander Shiyan <shc_work@mail.ru> */
 
 #include <common.h>
diff --git a/drivers/ddr/fsl/arm_ddr_gen3.c b/drivers/ddr/fsl/arm_ddr_gen3.c
index c016917a3fbe..a8b96f1261be 100644
--- a/drivers/ddr/fsl/arm_ddr_gen3.c
+++ b/drivers/ddr/fsl/arm_ddr_gen3.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2013 Freescale Semiconductor, Inc.
  *
diff --git a/drivers/ddr/fsl/ctrl_regs.c b/drivers/ddr/fsl/ctrl_regs.c
index eb99e0ea21e7..b0d98a929c5d 100644
--- a/drivers/ddr/fsl/ctrl_regs.c
+++ b/drivers/ddr/fsl/ctrl_regs.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2008-2016 Freescale Semiconductor, Inc.
  * Copyright 2017-2018 NXP Semiconductor
diff --git a/drivers/ddr/fsl/ddr4_dimm_params.c b/drivers/ddr/fsl/ddr4_dimm_params.c
index f39b6e2853b1..0be2de8de611 100644
--- a/drivers/ddr/fsl/ddr4_dimm_params.c
+++ b/drivers/ddr/fsl/ddr4_dimm_params.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2014-2016 Freescale Semiconductor, Inc.
  * Copyright 2017-2018 NXP Semiconductor
diff --git a/drivers/ddr/fsl/fsl_ddr_gen4.c b/drivers/ddr/fsl/fsl_ddr_gen4.c
index ac68e4ff031f..147ff9916dd1 100644
--- a/drivers/ddr/fsl/fsl_ddr_gen4.c
+++ b/drivers/ddr/fsl/fsl_ddr_gen4.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2014-2015 Freescale Semiconductor, Inc.
  */
diff --git a/drivers/ddr/fsl/options.c b/drivers/ddr/fsl/options.c
index 73e9ab044e45..5bfeeab49524 100644
--- a/drivers/ddr/fsl/options.c
+++ b/drivers/ddr/fsl/options.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2008, 2010-2016 Freescale Semiconductor, Inc.
  * Copyright 2017-2018 NXP Semiconductor
diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index 95ac76efcddb..ae05b136229c 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2018-2019 NXP
  */
diff --git a/drivers/ddr/imx8m/ddrphy_csr.c b/drivers/ddr/imx8m/ddrphy_csr.c
index 2e08d111be6f..d1cbf8f88050 100644
--- a/drivers/ddr/imx8m/ddrphy_csr.c
+++ b/drivers/ddr/imx8m/ddrphy_csr.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2018 NXP
  */
diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx8m/ddrphy_train.c
index d930a2fffe44..9dc20a476233 100644
--- a/drivers/ddr/imx8m/ddrphy_train.c
+++ b/drivers/ddr/imx8m/ddrphy_train.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2018 NXP
  */
diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
index 79bb76c35a2a..c5d94e305086 100644
--- a/drivers/ddr/imx8m/ddrphy_utils.c
+++ b/drivers/ddr/imx8m/ddrphy_utils.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
 * Copyright 2018 NXP
 */
diff --git a/drivers/ddr/imx8m/helper.c b/drivers/ddr/imx8m/helper.c
index 209c55f552c0..94bbb811576d 100644
--- a/drivers/ddr/imx8m/helper.c
+++ b/drivers/ddr/imx8m/helper.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2018 NXP
  */
diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index 44f40c36e45b..67bce79bc35f 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /* Author: Alexander Shiyan <shc_work@mail.ru> */
 
 #include <init.h>
diff --git a/drivers/gpio/gpio-raspberrypi-exp.c b/drivers/gpio/gpio-raspberrypi-exp.c
index 0713e3ca5fb6..b68f19bfd010 100644
--- a/drivers/gpio/gpio-raspberrypi-exp.c
+++ b/drivers/gpio/gpio-raspberrypi-exp.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Raspberry Pi 3 expander GPIO driver
  *
diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index ef569dd513b5..30d4bde5dc62 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 
 /*
  * Multifunction core driver for Zodiac Inflight Innovations RAVE
diff --git a/drivers/misc/ubootvar.c b/drivers/misc/ubootvar.c
index 27f2515e7da5..d98a6ed9a742 100644
--- a/drivers/misc/ubootvar.c
+++ b/drivers/misc/ubootvar.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 
 /*
  * U-Boot environment vriable blob driver
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 6d54fcc7c91c..4d7293310536 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2009-2012 Freescale Semiconductor, Inc.
  *	Dave Liu <daveliu@freescale.com>
diff --git a/drivers/net/virtio.c b/drivers/net/virtio.c
index ea4d5529037e..b40c9486892b 100644
--- a/drivers/net/virtio.c
+++ b/drivers/net/virtio.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2018, Tuomas Tynkkynen <tuomas.tynkkynen@iki.fi>
  * Copyright (C) 2018, Bin Meng <bmeng.cn@gmail.com>
diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
index e103cec4482a..cd735e5ef39d 100644
--- a/drivers/nvmem/rmem.c
+++ b/drivers/nvmem/rmem.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2020 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
  */
diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index 6d60eacd7ff9..d3f9c1ba6ecf 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /* Copyright (c) 2017 NXP. */
 
 #include <common.h>
diff --git a/drivers/power/reset/nvmem-reboot-mode.c b/drivers/power/reset/nvmem-reboot-mode.c
index 2086e96400bb..c2233d0f3a6e 100644
--- a/drivers/power/reset/nvmem-reboot-mode.c
+++ b/drivers/power/reset/nvmem-reboot-mode.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (c) Vaisala Oyj. All rights reserved.
  */
diff --git a/drivers/reset/reset-stm32.c b/drivers/reset/reset-stm32.c
index 2ef00859c48b..703ba1f072c5 100644
--- a/drivers/reset/reset-stm32.c
+++ b/drivers/reset/reset-stm32.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2017, STMicroelectronics - All Rights Reserved
  * Copyright (C) 2019, Ahmad Fatoum, Pengutronix
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index 294c88b92fdd..7aac0970bf9d 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /* Author: Alexander Shiyan <shc_work@mail.ru> */
 
 #include <common.h>
diff --git a/drivers/serial/serial_sbi.c b/drivers/serial/serial_sbi.c
index 2ea28fea5b0f..343fcda4dc58 100644
--- a/drivers/serial/serial_sbi.c
+++ b/drivers/serial/serial_sbi.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2021 Marcelo Politzer <marcelo.politzer@cartesi.io>
  */
diff --git a/drivers/serial/serial_sifive.c b/drivers/serial/serial_sifive.c
index 45f7c2bc9ace..931269f2e3eb 100644
--- a/drivers/serial/serial_sifive.c
+++ b/drivers/serial/serial_sifive.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2018 Anup Patel <anup@brainfault.org>
  */
diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
index 4bbfb1eef72c..271897f1743c 100644
--- a/drivers/serial/serial_stm32.c
+++ b/drivers/serial/serial_stm32.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2016, STMicroelectronics - All Rights Reserved
  * Author(s): Vikas Manocha, <vikas.manocha@st.com> for STMicroelectronics.
diff --git a/drivers/serial/serial_stm32.h b/drivers/serial/serial_stm32.h
index dd3e930c9352..f519f2abac9f 100644
--- a/drivers/serial/serial_stm32.h
+++ b/drivers/serial/serial_stm32.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright (C) 2016, STMicroelectronics - All Rights Reserved
  * Author(s): Vikas Manocha, <vikas.manocha@st.com> for STMicroelectronics.
diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index bc373ecf40cc..565c86cb0246 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright 2017 Impinj, Inc
  * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
diff --git a/drivers/spi/spi-fsl-dspi.c b/drivers/spi/spi-fsl-dspi.c
index a7ceb854e912..21cf84233b90 100644
--- a/drivers/spi/spi-fsl-dspi.c
+++ b/drivers/spi/spi-fsl-dspi.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 //
 // Copyright 2013 Freescale Semiconductor, Inc.
 //
diff --git a/drivers/spi/spi-fsl-qspi.c b/drivers/spi/spi-fsl-qspi.c
index e22c3099fe72..f9bf88860352 100644
--- a/drivers/spi/spi-fsl-qspi.c
+++ b/drivers/spi/spi-fsl-qspi.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 
 /*
  * Freescale QuadSPI driver.
diff --git a/drivers/spi/spi-mem.c b/drivers/spi/spi-mem.c
index b438ed3dcc7a..1e4120a2dc45 100644
--- a/drivers/spi/spi-mem.c
+++ b/drivers/spi/spi-mem.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2018 Exceet Electronics GmbH
  * Copyright (C) 2018 Bootlin
diff --git a/drivers/spi/zynq_qspi.c b/drivers/spi/zynq_qspi.c
index bd3418a3fb3e..f0edc41c375f 100644
--- a/drivers/spi/zynq_qspi.c
+++ b/drivers/spi/zynq_qspi.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2019 Xilinx, Inc.
  *
diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index d0af25f4b48f..8be5c91f98a1 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 #include "dwc2.h"
 
 /* Returns the controller's GHWCFG2.OTG_MODE. */
diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index c49672c85ad4..84cb698dc84a 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /* Maximum number of Endpoints/HostChannels */
 #define DWC2_MAX_EPS_CHANNELS	16
 
diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index 9893977b8e58..1b5981c2d54e 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2012 Oleksandr Tymoshenko <gonzo@freebsd.org>
  * Copyright (C) 2014 Marek Vasut <marex@denx.de>
diff --git a/drivers/usb/dwc2/dwc2.h b/drivers/usb/dwc2/dwc2.h
index 31827d4c7a9e..3ecc359f8b24 100644
--- a/drivers/usb/dwc2/dwc2.h
+++ b/drivers/usb/dwc2/dwc2.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 #include <usb/usb.h>
 #include <usb/usb_defs.h>
 #include <usb/gadget.h>
diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index 5a4fd9631e68..7070485410a1 100644
--- a/drivers/usb/dwc2/gadget.c
+++ b/drivers/usb/dwc2/gadget.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 #include <dma.h>
 #include <usb/gadget.h>
 #include "dwc2.h"
diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index b5a51f566804..e4843f74fd7d 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 #include <dma.h>
 #include "dwc2.h"
 
diff --git a/drivers/usb/dwc2/regs.h b/drivers/usb/dwc2/regs.h
index 06fc8da8220a..4c74f95eb460 100644
--- a/drivers/usb/dwc2/regs.h
+++ b/drivers/usb/dwc2/regs.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright (C) 2014 Marek Vasut <marex@denx.de>
  */
diff --git a/drivers/usb/dwc2/rhub.c b/drivers/usb/dwc2/rhub.c
index 3560714444f8..de4d2837ac6c 100644
--- a/drivers/usb/dwc2/rhub.c
+++ b/drivers/usb/dwc2/rhub.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 #include "dwc2.h"
 
 static struct descriptor {
diff --git a/drivers/usb/gadget/storage_common.c b/drivers/usb/gadget/storage_common.c
index 88cd745063e4..69fcd0656595 100644
--- a/drivers/usb/gadget/storage_common.c
+++ b/drivers/usb/gadget/storage_common.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * storage_common.c -- Common definitions for mass storage functionality
  *
diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index f66dadef12e5..ae20560eb517 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * USB HOST XHCI Controller stack
  *
diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 61b1b55a271d..fe432952ec76 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * USB HOST XHCI Controller stack
  *
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index caab2400d8d6..7336a0911ae2 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * USB HOST XHCI Controller stack
  *
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index 9ffbb103d562..401fa6563747 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * USB HOST XHCI Controller
  *
diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
index e282988fb41b..4871faf451ce 100644
--- a/drivers/usb/misc/usb251xb.c
+++ b/drivers/usb/misc/usb251xb.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Driver for Microchip USB251xB USB 2.0 Hi-Speed Hub Controller
  * Configuration via SMBus.
diff --git a/drivers/virtio/virtio_pci_modern.c b/drivers/virtio/virtio_pci_modern.c
index d828bee69e62..f816baf18e81 100644
--- a/drivers/virtio/virtio_pci_modern.c
+++ b/drivers/virtio/virtio_pci_modern.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2018, Bin Meng <bmeng.cn@gmail.com>
  *
diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index 68180fe37da0..326fd22d3fa6 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  * Copyright (C) 2018, Tuomas Tynkkynen <tuomas.tynkkynen@iki.fi>
  * Copyright (C) 2018, Bin Meng <bmeng.cn@gmail.com>
diff --git a/drivers/watchdog/rave-sp-wdt.c b/drivers/watchdog/rave-sp-wdt.c
index cad63e22f921..26540395cbfc 100644
--- a/drivers/watchdog/rave-sp-wdt.c
+++ b/drivers/watchdog/rave-sp-wdt.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0-or-later
 
 /*
  * Driver for watchdog aspect of for Zodiac Inflight Innovations RAVE
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

