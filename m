Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R1zvL-00017d-Ur
	for barebox@lists.infradead.org; Fri, 09 Sep 2011 12:11:12 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 757E9BF0E7
	for <barebox@lists.infradead.org>;
	Fri,  9 Sep 2011 14:15:09 +0200 (CEST)
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Fri, 9 Sep 2011 14:10:53 +0200
Message-Id: <1315570256-28614-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] Add Reset Support for omap3.
To: barebox@lists.infradead.org
Cc: Juergen Kilb <j.kilb@phytec.de>

Inspired from reset_cpu in omap4_generic.c.

Signed-off-by: Juergen Kilb <j.kilb@phytec.de>
---
 arch/arm/mach-omap/include/mach/omap3-silicon.h |    3 +++
 arch/arm/mach-omap/omap3_generic.c              |    5 +++--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/arch/arm/mach-omap/include/mach/omap3-silicon.h
index 0e6a45f..67f7747 100644
--- a/arch/arm/mach-omap/include/mach/omap3-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap3-silicon.h
@@ -132,5 +132,8 @@
 #define OMAP_SDRC_CS0		0x80000000
 #define OMAP_SDRC_CS1		0xA0000000
 
+/* PRM */
+#define PRM_RSTCTRL_RESET       0x04
+
 #endif /* __ASM_ARCH_OMAP3_H */
 
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 661a971..9627a6b 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -59,8 +59,9 @@
  */
 void __noreturn reset_cpu(unsigned long addr)
 {
-	/* FIXME: Enable WDT and cause reset */
-	hang();
+	writel(PRM_RSTCTRL_RESET, PRM_REG(RSTCTRL));
+
+	while (1);
 }
 EXPORT_SYMBOL(reset_cpu);
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
