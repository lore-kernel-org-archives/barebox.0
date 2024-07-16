Delivery-date: Tue, 16 Jul 2024 13:59:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgpw-005QvL-0m
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:59:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgpu-0001on-Q1
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:59:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4qqVJcY+J0Lk+lViu1+blAMUEtMUzQ4m5hi8C3sGo3g=; b=YOPGqpgTV/A0P9pBvLtLyXsuZJ
	QIGYdq+1YPoapVaG84WwcsF8NJWaA/g6c63bQNR3ZdGd9gabEDG8GIbyOy2jty/Tg6CxPq+FtDeS9
	m43nUFMeexZvSMt8LqQtbzCxhg5Iu4oaEShLGUUQr6tOeWy1xeaWODM1l/ijnB1HNjcJzNaNvDdds
	weTksJuyQ2XVSIj0CUBWHn+lenP2JfCOvMwv7QL5y0ZKwuFwQ0zLF6quJ0G8Cu5dcHVFEkM9sYqFW
	CMl3kkTGiABgvmqUmpbX0OqvEUX3lIkYptuoowvhOR0nqQXtHHW/D62wEXGZIEw7LAtLozi3C3UtS
	XqTUg/2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpO-0000000AKfi-3q1U;
	Tue, 16 Jul 2024 11:58:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpJ-0000000AKc0-1vwb
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:58:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpI-0001O7-3e; Tue, 16 Jul 2024 13:58:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpH-0007Yz-N3; Tue, 16 Jul 2024 13:58:35 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpH-008FTm-20;
	Tue, 16 Jul 2024 13:58:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 13:58:28 +0200
Message-Id: <20240716115834.1958413-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
References: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_045837_724465_B2FCCD7D 
X-CRM114-Status: GOOD (  10.00  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] treewide: fix dependency on indirectly included linux/kernel.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently include <linux/kernel.h> in <linux/list.h>, which pulls in
definitions that many source files depend on.

Include <linux/kernel.h> directly or other more specific files if
available in preparation for removing the <linux/kernel.h> include from
<linux/list.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/io.c                  | 1 +
 arch/mips/include/asm/dma.h          | 1 +
 commands/bthread.c                   | 1 +
 commands/mmc.c                       | 1 +
 drivers/clk/at91/at91sam9260.c       | 1 +
 drivers/clk/at91/at91sam9g45.c       | 1 +
 drivers/clk/at91/at91sam9n12.c       | 1 +
 drivers/clk/at91/at91sam9rl.c        | 1 +
 drivers/clk/at91/at91sam9x5.c        | 1 +
 drivers/clk/at91/clk-audio-pll.c     | 1 +
 drivers/clk/at91/clk-generated.c     | 1 +
 drivers/clk/at91/clk-master.c        | 1 +
 drivers/clk/at91/clk-pll.c           | 1 +
 drivers/clk/at91/clk-usb.c           | 1 +
 drivers/clk/at91/sama5d2.c           | 1 +
 drivers/clk/at91/sama5d3.c           | 1 +
 drivers/clk/at91/sama5d4.c           | 1 +
 drivers/clk/rockchip/rst-rk3588.c    | 1 +
 drivers/soc/sifive/sifive_l2_cache.c | 2 ++
 drivers/usb/misc/onboard_usb_hub.c   | 1 +
 include/linux/mtd/nand.h             | 1 +
 include/mach/mvebu/debug_ll.h        | 1 +
 lib/idr.c                            | 2 ++
 23 files changed, 25 insertions(+)

diff --git a/arch/arm/lib32/io.c b/arch/arm/lib32/io.c
index 780b1083a641..9e3acfe02246 100644
--- a/arch/arm/lib32/io.c
+++ b/arch/arm/lib32/io.c
@@ -3,6 +3,7 @@
 #include <module.h>
 #include <linux/types.h>
 #include <asm/unaligned.h>
+#include <linux/align.h>
 #include <io.h>
 
 /*
diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
index dbcbfa40768d..46fae14ae5aa 100644
--- a/arch/mips/include/asm/dma.h
+++ b/arch/mips/include/asm/dma.h
@@ -8,6 +8,7 @@
 
 #include <linux/pagemap.h>
 #include <linux/types.h>
+#include <linux/minmax.h>
 #include <malloc.h>
 #include <xfuncs.h>
 #include <asm/addrspace.h>
diff --git a/commands/bthread.c b/commands/bthread.c
index aaade46e9206..00ff1837cc69 100644
--- a/commands/bthread.c
+++ b/commands/bthread.c
@@ -11,6 +11,7 @@
 #include <getopt.h>
 #include <clock.h>
 #include <slice.h>
+#include <linux/kernel.h>
 
 static int bthread_time(void)
 {
diff --git a/commands/mmc.c b/commands/mmc.c
index 041a721d3661..718558f18ba7 100644
--- a/commands/mmc.c
+++ b/commands/mmc.c
@@ -5,6 +5,7 @@
 #include <stdio.h>
 #include <string.h>
 #include <getopt.h>
+#include <linux/kernel.h>
 #include <dma.h>
 
 static int mmc_enh_area_setmax(struct mci *mci, u8 *ext_csd)
diff --git a/drivers/clk/at91/at91sam9260.c b/drivers/clk/at91/at91sam9260.c
index c94cd9556616..b590dc629855 100644
--- a/drivers/clk/at91/at91sam9260.c
+++ b/drivers/clk/at91/at91sam9260.c
@@ -2,6 +2,7 @@
 #include <linux/clk-provider.h>
 #include <mfd/syscon.h>
 #include <linux/slab.h>
+#include <linux/kernel.h>
 #include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
diff --git a/drivers/clk/at91/at91sam9g45.c b/drivers/clk/at91/at91sam9g45.c
index fedf96139348..3d2197c7f288 100644
--- a/drivers/clk/at91/at91sam9g45.c
+++ b/drivers/clk/at91/at91sam9g45.c
@@ -2,6 +2,7 @@
 #include <linux/clk-provider.h>
 #include <mfd/syscon.h>
 #include <linux/slab.h>
+#include <linux/kernel.h>
 #include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
diff --git a/drivers/clk/at91/at91sam9n12.c b/drivers/clk/at91/at91sam9n12.c
index bb075de9fde6..3899242a33de 100644
--- a/drivers/clk/at91/at91sam9n12.c
+++ b/drivers/clk/at91/at91sam9n12.c
@@ -2,6 +2,7 @@
 #include <linux/clk-provider.h>
 #include <mfd/syscon.h>
 #include <linux/slab.h>
+#include <linux/kernel.h>
 #include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
diff --git a/drivers/clk/at91/at91sam9rl.c b/drivers/clk/at91/at91sam9rl.c
index 95b02d86d596..a671c6be541e 100644
--- a/drivers/clk/at91/at91sam9rl.c
+++ b/drivers/clk/at91/at91sam9rl.c
@@ -2,6 +2,7 @@
 #include <linux/clk-provider.h>
 #include <mfd/syscon.h>
 #include <linux/slab.h>
+#include <linux/kernel.h>
 #include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
diff --git a/drivers/clk/at91/at91sam9x5.c b/drivers/clk/at91/at91sam9x5.c
index f4dc7ceeea9f..e351848bf7a7 100644
--- a/drivers/clk/at91/at91sam9x5.c
+++ b/drivers/clk/at91/at91sam9x5.c
@@ -2,6 +2,7 @@
 #include <linux/clk-provider.h>
 #include <mfd/syscon.h>
 #include <linux/slab.h>
+#include <linux/kernel.h>
 #include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
diff --git a/drivers/clk/at91/clk-audio-pll.c b/drivers/clk/at91/clk-audio-pll.c
index 71976567ea7f..019d68b7b7e7 100644
--- a/drivers/clk/at91/clk-audio-pll.c
+++ b/drivers/clk/at91/clk-audio-pll.c
@@ -38,6 +38,7 @@
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
+#include <linux/kernel.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
index e59cff2bdf9f..807c8179c0f1 100644
--- a/drivers/clk/at91/clk-generated.c
+++ b/drivers/clk/at91/clk-generated.c
@@ -14,6 +14,7 @@
 #include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
+#include <linux/kernel.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-master.c b/drivers/clk/at91/clk-master.c
index db5e235b6b8f..ed358257dcb6 100644
--- a/drivers/clk/at91/clk-master.c
+++ b/drivers/clk/at91/clk-master.c
@@ -11,6 +11,7 @@
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
 #include <linux/printk.h>
+#include <linux/kernel.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-pll.c b/drivers/clk/at91/clk-pll.c
index 027e1fc77349..917b2224fe19 100644
--- a/drivers/clk/at91/clk-pll.c
+++ b/drivers/clk/at91/clk-pll.c
@@ -9,6 +9,7 @@
 #include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
+#include <linux/kernel.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index 4473dc7c3491..96a35b5cb09e 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -9,6 +9,7 @@
 #include <of.h>
 #include <mfd/syscon.h>
 #include <linux/regmap.h>
+#include <linux/kernel.h>
 
 #include "pmc.h"
 
diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
index 96c0d1f6a46d..cb4e1b78a5e3 100644
--- a/drivers/clk/at91/sama5d2.c
+++ b/drivers/clk/at91/sama5d2.c
@@ -2,6 +2,7 @@
 #include <linux/clk-provider.h>
 #include <mfd/syscon.h>
 #include <linux/slab.h>
+#include <linux/kernel.h>
 #include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
diff --git a/drivers/clk/at91/sama5d3.c b/drivers/clk/at91/sama5d3.c
index 53a1a7413a02..4212afb21827 100644
--- a/drivers/clk/at91/sama5d3.c
+++ b/drivers/clk/at91/sama5d3.c
@@ -2,6 +2,7 @@
 #include <linux/clk-provider.h>
 #include <mfd/syscon.h>
 #include <linux/slab.h>
+#include <linux/kernel.h>
 #include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
diff --git a/drivers/clk/at91/sama5d4.c b/drivers/clk/at91/sama5d4.c
index 8fbd81088349..bd02bdc915f5 100644
--- a/drivers/clk/at91/sama5d4.c
+++ b/drivers/clk/at91/sama5d4.c
@@ -2,6 +2,7 @@
 #include <linux/clk-provider.h>
 #include <mfd/syscon.h>
 #include <linux/slab.h>
+#include <linux/kernel.h>
 #include <stdio.h>
 
 #include <dt-bindings/clock/at91.h>
diff --git a/drivers/clk/rockchip/rst-rk3588.c b/drivers/clk/rockchip/rst-rk3588.c
index 7501b92b45f7..fdc83cefc7ad 100644
--- a/drivers/clk/rockchip/rst-rk3588.c
+++ b/drivers/clk/rockchip/rst-rk3588.c
@@ -6,6 +6,7 @@
  */
 
 #include <dt-bindings/reset/rockchip,rk3588-cru.h>
+#include <linux/array_size.h>
 #include "clk.h"
 
 /* 0xFD7C0000 + 0x0A00 */
diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index c404143974fc..239e65292ae2 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -16,7 +16,9 @@
 #include <init.h>
 #include <soc/sifive/l2_cache.h>
 #include <asm/barrier.h>
+#include <linux/align.h>
 #include <linux/bitops.h>
+#include <linux/bug.h>
 
 #define SIFIVE_L2_DIRECCFIX_LOW 0x100
 #define SIFIVE_L2_DIRECCFIX_HIGH 0x104
diff --git a/drivers/usb/misc/onboard_usb_hub.c b/drivers/usb/misc/onboard_usb_hub.c
index 9e94caaa8456..603fd693a137 100644
--- a/drivers/usb/misc/onboard_usb_hub.c
+++ b/drivers/usb/misc/onboard_usb_hub.c
@@ -12,6 +12,7 @@
 #include <linux/printk.h>
 #include <of_device.h>
 #include <regulator.h>
+#include <xfuncs.h>
 #include <linux/usb/usb.h>
 
 #include "onboard_usb_hub.h"
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index ef2546490d65..fda55df59a26 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -11,6 +11,7 @@
 #define __LINUX_MTD_NAND_H
 
 #include <linux/mtd/mtd.h>
+#include <linux/minmax.h>
 
 struct nand_device;
 
diff --git a/include/mach/mvebu/debug_ll.h b/include/mach/mvebu/debug_ll.h
index 9197cd68eb99..cf08776d4fcc 100644
--- a/include/mach/mvebu/debug_ll.h
+++ b/include/mach/mvebu/debug_ll.h
@@ -5,6 +5,7 @@
 #define __MACH_MVEBU_DEBUG_LL_H__
 
 #include <io.h>
+#include <linux/bits.h>
 
 #define UART_BASE	0xf1012000
 #define UARTn_BASE(n)	(UART_BASE + ((n) * 0x100))
diff --git a/lib/idr.c b/lib/idr.c
index 10a714ac03f0..a25e46b17b95 100644
--- a/lib/idr.c
+++ b/lib/idr.c
@@ -6,6 +6,8 @@
 
 #include <errno.h>
 #include <linux/idr.h>
+#include <malloc.h>
+#include <linux/minmax.h>
 
 struct idr *__idr_find(struct idr *head, int lookup_id)
 {
-- 
2.39.2



