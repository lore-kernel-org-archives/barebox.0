Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R1zvM-00017g-7Q
	for barebox@lists.infradead.org; Fri, 09 Sep 2011 12:11:13 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 956D5BF0E9
	for <barebox@lists.infradead.org>;
	Fri,  9 Sep 2011 14:15:15 +0200 (CEST)
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Fri, 9 Sep 2011 14:10:55 +0200
Message-Id: <1315570256-28614-3-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <1315570256-28614-1-git-send-email-J.Kilb@phytec.de>
References: <1315570256-28614-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] Added helper function to get CS1 base address.
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

This helper function can be used for automatic
SDDR configuration based on register settings
made by a previously first stage bootloader
i.e. x-loader.

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 arch/arm/mach-omap/include/mach/sys_info.h |    1 +
 arch/arm/mach-omap/omap3_generic.c         |   19 +++++++++++++++++++
 2 files changed, 20 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/sys_info.h b/arch/arm/mach-omap/include/mach/sys_info.h
index f557068..f0594bf 100644
--- a/arch/arm/mach-omap/include/mach/sys_info.h
+++ b/arch/arm/mach-omap/include/mach/sys_info.h
@@ -91,6 +91,7 @@
 u32 get_cpu_type(void);
 u32 get_cpu_rev(void);
 u32 get_sdr_cs_size(u32 offset);
+u32 get_sdr_cs1_base(void);
 inline u32 get_sysboot_value(void);
 u32 get_gpmc0_base(void);
 u32 get_base(void);
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 9627a6b..7468441 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -178,7 +178,26 @@ u32 get_sdr_cs_size(u32 offset)
 	size *= 2 * (1024 * 1024);	/* find size in MB */
 	return size;
 }
+EXPORT_SYMBOL(get_sdr_cs_size);
+/**
+ * @brief base address of chip select 1 (cs0 is defined at 0x80000000)
+ *
+ * @return return the CS1 base address.
+ */
+u32 get_sdr_cs1_base(void)
+{
+	u32 base;
+	u32 cs_cfg;
 
+	cs_cfg = readl(SDRC_REG(CS_CFG));
+	/* get ram size field */
+	base = (cs_cfg & 0x0000000F) << 2; /* get CS1STARTHIGH */
+	base = base | ((cs_cfg & 0x00000300) >> 8); /* get CS1STARTLOW */
+	base = base << 25;
+	base += 0x80000000;
+	return base;
+}
+EXPORT_SYMBOL(get_sdr_cs1_base);
 /**
  * @brief Get the initial SYSBOOT value
  *
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
