Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ogakx-0000VW-9i
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 09:59:28 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  4 Aug 2010 11:59:09 +0200
Message-Id: <1280915957-2910-6-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 05/13] arm omap: Add cpu_is_ macros
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/generic.h |   19 +++++++++++++++++++
 1 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-omap/include/mach/generic.h

diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
new file mode 100644
index 0000000..a2dd229
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/generic.h
@@ -0,0 +1,19 @@
+
+/* I2C controller revisions */
+#define OMAP_I2C_REV_2			0x20
+
+/* I2C controller revisions present on specific hardware */
+#define OMAP_I2C_REV_ON_2430		0x36
+#define OMAP_I2C_REV_ON_3430		0x3C
+
+#ifdef CONFIG_ARCH_OMAP
+#define cpu_is_omap2430()	(1)
+#else
+#define cpu_is_omap2430()	(0)
+#endif
+
+#ifdef CONFIG_ARCH_OMAP3
+#define cpu_is_omap34xx()	(1)
+#else
+#define cpu_is_omap34xx()	(0)
+#endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
