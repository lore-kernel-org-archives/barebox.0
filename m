Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YKltX-0002mm-7H
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 10:48:47 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  9 Feb 2015 11:47:45 +0100
Message-Id: <1423478871-15276-5-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1423478871-15276-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v3 04/10] ARM: socfpga: clkmgr: bypass debug root clock
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/clock-manager.c              | 4 ++++
 arch/arm/mach-socfpga/include/mach/clock-manager.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/mach-socfpga/clock-manager.c b/arch/arm/mach-socfpga/clock-manager.c
index 4cffb49f7cea..5196f08b09af 100644
--- a/arch/arm/mach-socfpga/clock-manager.c
+++ b/arch/arm/mach-socfpga/clock-manager.c
@@ -290,4 +290,8 @@ void socfpga_cm_basic_init(const struct socfpga_cm_config *cfg)
 	writel(~0, cm + CLKMGR_MAINPLLGRP_EN_ADDRESS);
 	writel(~0, cm + CLKMGR_PERPLLGRP_EN_ADDRESS);
 	writel(~0, cm + CLKMGR_SDRPLLGRP_EN_ADDRESS);
+
+	val = readl(cm + CLKMGR_DBCTRL_ADDRESS);
+	val |= CLKMGR_DBCTRL_STAYOSC1_MASK;
+	writel(val, cm + CLKMGR_DBCTRL_ADDRESS);
 }
diff --git a/arch/arm/mach-socfpga/include/mach/clock-manager.h b/arch/arm/mach-socfpga/include/mach/clock-manager.h
index 649cf96ae846..45800de79a7a 100644
--- a/arch/arm/mach-socfpga/include/mach/clock-manager.h
+++ b/arch/arm/mach-socfpga/include/mach/clock-manager.h
@@ -102,6 +102,7 @@ void socfpga_cm_basic_init(const struct socfpga_cm_config *cfg);
 #define CLKMGR_ALTERAGRP_MPUCLK 0xe0
 #define CLKMGR_ALTERAGRP_MAINCLK 0xe4
 
+#define CLKMGR_DBCTRL_STAYOSC1_MASK 0x00000001
 #define CLKMGR_MAINPLLGRP_EN_S2FUSER0CLK_MASK 0x00000200
 #define CLKMGR_MAINPLLGRP_EN_DBGTIMERCLK_MASK 0x00000080
 #define CLKMGR_MAINPLLGRP_EN_DBGTRACECLK_MASK 0x00000040
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
