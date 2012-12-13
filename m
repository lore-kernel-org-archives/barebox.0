Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBgW-0004vq-Lg
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:31:01 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 13 Dec 2012 17:30:36 +0100
Message-Id: <1355416249-22364-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1355416249-22364-1-git-send-email-jlu@pengutronix.de>
References: <1355416249-22364-1-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/14] ARM omap: remove unused function
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/sys_info.h |    1 -
 arch/arm/mach-omap/omap3_generic.c         |   19 -------------------
 2 files changed, 20 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/sys_info.h b/arch/arm/mach-omap/include/mach/sys_info.h
index e54791d..4d9b138 100644
--- a/arch/arm/mach-omap/include/mach/sys_info.h
+++ b/arch/arm/mach-omap/include/mach/sys_info.h
@@ -85,7 +85,6 @@ u32 get_cpu_rev(void);
 u32 get_sdr_cs_size(u32 offset);
 u32 get_sdr_cs1_base(void);
 inline u32 get_sysboot_value(void);
-u32 get_gpmc0_base(void);
 u32 get_base(void);
 u32 running_in_flash(void);
 u32 running_in_sram(void);
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 7cfb3e4..cbac06f 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -204,25 +204,6 @@ inline u32 get_sysboot_value(void)
 }
 
 /**
- * @brief Return the current CS0 base address
- *
- * Return current address hardware will be
- * fetching from. The below effectively gives what is correct, its a bit
- * mis-leading compared to the TRM.  For the most general case the mask
- * needs to be also taken into account this does work in practice.
- *
- * @return  base address
- */
-u32 get_gpmc0_base(void)
-{
-	u32 b;
-	b = readl(GPMC_REG(CONFIG7_0));
-	b &= 0x1F;		/* keep base [5:0] */
-	b = b << 24;		/* ret 0x0b000000 */
-	return b;
-}
-
-/**
  * @brief Get the upper address of current execution
  *
  * we can use this to figure out if we are running in SRAM /
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
