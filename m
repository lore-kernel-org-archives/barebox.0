Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6UuB-0008Vm-SS
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 05:36:21 +0000
Received: by mail-lf0-x242.google.com with SMTP id d20-v6so5843545lfe.3
 for <barebox@lists.infradead.org>; Wed, 11 Apr 2018 22:36:10 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 12 Apr 2018 08:35:58 +0300
Message-Id: <20180412053559.30687-4-antonynpavlov@gmail.com>
In-Reply-To: <20180412053559.30687-1-antonynpavlov@gmail.com>
References: <20180412053559.30687-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/4] ARM: socfpga: mach/pll_config.h: add guard macro
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/mach-socfpga/include/mach/pll_config.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-socfpga/include/mach/pll_config.h b/arch/arm/mach-socfpga/include/mach/pll_config.h
index 1a7e851eda..d6fb60dd24 100644
--- a/arch/arm/mach-socfpga/include/mach/pll_config.h
+++ b/arch/arm/mach-socfpga/include/mach/pll_config.h
@@ -1,3 +1,5 @@
+#ifndef _MACH_SOCFPGA_PRELOADER_PLL_CONFIG_H_
+#define _MACH_SOCFPGA_PRELOADER_PLL_CONFIG_H_
 
 #include <mach/cyclone5-clock-manager.h>
 
@@ -54,3 +56,5 @@ static struct socfpga_cm_config cm_default_cfg = {
 	.alteragrp_mpu = CONFIG_HPS_ALTERAGRP_MPUCLK,
 	.alteregrp_main = CONFIG_HPS_ALTERAGRP_MAINCLK,
 };
+
+#endif /* _MACH_SOCFPGA_PRELOADER_PLL_CONFIG_H_ */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
