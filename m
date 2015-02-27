Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YRQVL-0005PX-S6
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 19:23:22 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id F005926C2005
 for <barebox@lists.infradead.org>; Fri, 27 Feb 2015 20:22:22 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 27 Feb 2015 20:22:18 +0100
Message-Id: <1425064938-11558-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425064938-11558-1-git-send-email-dev@lynxeye.de>
References: <1425064938-11558-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 5/5] ARM: tegra: add barebox update handler to Jetson board
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/nvidia-jetson-tk1/board.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/nvidia-jetson-tk1/board.c b/arch/arm/boards/nvidia-jetson-tk1/board.c
index 564e6a0..8d8dddf 100644
--- a/arch/arm/boards/nvidia-jetson-tk1/board.c
+++ b/arch/arm/boards/nvidia-jetson-tk1/board.c
@@ -19,6 +19,7 @@
 #include <gpio.h>
 #include <i2c/i2c.h>
 #include <init.h>
+#include <mach/tegra-bbu.h>
 
 #define AS3722_SD_VOLTAGE(n)	(0x00 + (n))
 #define AS3722_GPIO_CONTROL(n)	(0x08 + (n))
@@ -56,6 +57,9 @@ static int nvidia_jetson_tk1_device_init(void)
 
 	barebox_set_hostname("jetson-tk1");
 
+	tegra_bbu_register_emmc_handler("eMMC", "/dev/disk0.boot0",
+					BBU_HANDLER_FLAG_DEFAULT);
+
 	return 0;
 }
 device_initcall(nvidia_jetson_tk1_device_init);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
