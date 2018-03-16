Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos5-00067j-4Y
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:37 +0100
Message-Id: <20180316125354.23462-2-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/78] ARM: Use obj-pbl- where appropriate
To: Barebox List <barebox@lists.infradead.org>

When sourcefiles are compiled for barebox and pbl we have obj-pbl-. Use
it where appropriate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile | 28 ++++++++++------------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 13fe12c31f..94f7d1bf45 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -6,8 +6,8 @@ obj-$(CONFIG_MMU) += mmu_64.o
 lwl-y += lowlevel_64.o
 else
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
-obj-$(CONFIG_MMU) += mmu.o mmu-early.o
-pbl-$(CONFIG_MMU) += mmu-early.o
+obj-$(CONFIG_MMU) += mmu.o
+obj-pbl-$(CONFIG_MMU) += mmu-early.o
 lwl-y += lowlevel.o
 endif
 
@@ -15,11 +15,9 @@ obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
 obj-y += start.o entry.o
 
 ifeq ($(CONFIG_CPU_64v8), y)
-obj-y += setupc_64.o
-pbl-y += setupc_64.o
+obj-pbl-y += setupc_64.o
 else
-obj-y += setupc.o
-pbl-y += setupc.o
+obj-pbl-y += setupc.o
 endif
 
 #
@@ -40,25 +38,19 @@ AFLAGS_smccc-call.o	:=-Wa,-march=armv7-a
 obj-$(CONFIG_ARM_SECURE_MONITOR) += sm.o sm_as.o
 AFLAGS_sm_as.o		:=-Wa,-march=armv7-a
 
-obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
-pbl-$(CONFIG_CPU_32v4T) += cache-armv4.o
-obj-$(CONFIG_CPU_32v5) += cache-armv5.o
-pbl-$(CONFIG_CPU_32v5) += cache-armv5.o
-obj-$(CONFIG_CPU_32v6) += cache-armv6.o
-pbl-$(CONFIG_CPU_32v6) += cache-armv6.o
+obj-pbl-$(CONFIG_CPU_32v4T) += cache-armv4.o
+obj-pbl-$(CONFIG_CPU_32v5) += cache-armv5.o
+obj-pbl-$(CONFIG_CPU_32v6) += cache-armv6.o
 AFLAGS_cache-armv7.o       :=-Wa,-march=armv7-a
-obj-$(CONFIG_CPU_32v7) += cache-armv7.o
+obj-pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
 AFLAGS_pbl-cache-armv7.o       :=-Wa,-march=armv7-a
-pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
 obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
 AFLAGS_cache-armv8.o       :=-Wa,-march=armv8-a
-obj-$(CONFIG_CPU_64v8) += cache-armv8.o
+obj-pbl-$(CONFIG_CPU_64v8) += cache-armv8.o
 AFLAGS_pbl-cache-armv8.o       :=-Wa,-march=armv8-a
-pbl-$(CONFIG_CPU_64v8) += cache-armv8.o
 
 pbl-y += entry.o
 pbl-$(CONFIG_PBL_SINGLE_IMAGE) += start-pbl.o
 pbl-$(CONFIG_PBL_MULTI_IMAGES) += uncompress.o
 
-obj-y += common.o cache.o
-pbl-y += common.o cache.o
+obj-pbl-y += common.o cache.o
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
