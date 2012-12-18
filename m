Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tky4P-0001iJ-2f
 for barebox@lists.infradead.org; Tue, 18 Dec 2012 14:22:59 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 18 Dec 2012 15:22:25 +0100
Message-Id: <1355840561-11552-4-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1355840561-11552-1-git-send-email-jlu@pengutronix.de>
References: <1355840561-11552-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 03/19] ARM omap4: Add missing assembly protection in header
 file
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/omap4-silicon.h |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index 8ce1882..127257d 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -184,6 +184,8 @@
 #define OMAP4460_ES1_0	6
 #define OMAP4460_ES1_1	7
 
+#ifndef __ASSEMBLY__
+
 struct ddr_regs {
 	u32 tim1;
 	u32 tim2;
@@ -205,3 +207,5 @@ unsigned int omap4_revision(void);
 noinline int omap4_scale_vcores(unsigned vsel0_pin);
 
 #endif
+
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
