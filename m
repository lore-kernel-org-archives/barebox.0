Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSc4e-0002m4-BU
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 05:42:34 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 12 Jun 2018 07:42:14 +0200
Message-Id: <20180612054214.23261-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20180611203822.dpc6qtgvydg66veg@pengutronix.de>
References: <20180611203822.dpc6qtgvydg66veg@pengutronix.de>
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
Subject: [PATCH] fixup! mvebu: create bbu handler for kwb images and use it on
 cubox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

---
 arch/arm/mach-mvebu/Makefile           | 2 +-
 arch/arm/mach-mvebu/include/mach/bbu.h | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index cc2b926438e4..6079403b83dd 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -1,8 +1,8 @@
 obj-pbl-y			+= common.o
-obj-y				+= kwb_bbu.o
 obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_ARMADA_38X)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_DOVE)		+= dove.o
 obj-$(CONFIG_ARCH_KIRKWOOD)	+= kirkwood.o
+obj-$(CONFIG_BAREBOX_UPDATE)	+= kwb_bbu.o
 obj-$(CONFIG_BOOTM)		+= kwbootimage.o
diff --git a/arch/arm/mach-mvebu/include/mach/bbu.h b/arch/arm/mach-mvebu/include/mach/bbu.h
index f1021e52ce9f..a06db2b1442e 100644
--- a/arch/arm/mach-mvebu/include/mach/bbu.h
+++ b/arch/arm/mach-mvebu/include/mach/bbu.h
@@ -1,3 +1,12 @@
+#ifdef CONFIG_BAREBOX_UPDATE
 int mvebu_bbu_flash_register_handler(const char *name,
 				     char *devicefile, int version,
 				     bool isdefault);
+#else
+int mvebu_bbu_flash_register_handler(const char *name,
+                                     char *devicefile, int version,
+                                     bool isdefault)
+{
+	return -ENOSYS;
+}
+#endif
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
