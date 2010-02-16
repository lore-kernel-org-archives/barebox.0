Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhOhS-0005LI-VB
	for barebox@lists.infradead.org; Tue, 16 Feb 2010 14:47:04 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 16 Feb 2010 15:46:19 +0100
Message-Id: <1266331586-11253-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1266331586-11253-4-git-send-email-mkl@pengutronix.de>
References: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-2-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-3-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-4-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 04/11] arm/cpu/Makefile: cleanup: propper indention
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/cpu/Makefile |   27 ++++++++++++++-------------
 1 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 2273e45..d974af2 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,17 +1,18 @@
-obj-y += cpu.o exceptions.o
-obj-y += interrupts.o
+obj-y				+= cpu.o
+obj-y				+= exceptions.o
+obj-y				+= interrupts.o
 
 #
 # Any variants can be called as start-armxyz.S
 #
-obj-$(CONFIG_CPU_ARM920T) += start-arm.o
-obj-$(CONFIG_CPU_ARM926T) += start-arm.o
-obj-$(CONFIG_CPU_V7) += start-arm.o
-obj-$(CONFIG_ARCH_IMX31) += start-arm.o
-obj-$(CONFIG_ARCH_IMX35) += start-arm.o
-obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
-obj-$(CONFIG_MMU) += mmu.o
-obj-$(CONFIG_CPU_32v4T)	+= cache-armv4.o
-obj-$(CONFIG_CPU_32v5)	+= cache-armv4.o
-obj-$(CONFIG_CPU_32v6)	+= cache-armv6.o
-obj-$(CONFIG_CPU_32v7)	+= cache-armv7.o
+obj-$(CONFIG_CPU_ARM920T)	+= start-arm.o
+obj-$(CONFIG_CPU_ARM926T)	+= start-arm.o
+obj-$(CONFIG_CPU_V7)		+= start-arm.o
+obj-$(CONFIG_ARCH_IMX31)	+= start-arm.o
+obj-$(CONFIG_ARCH_IMX35)	+= start-arm.o
+obj-$(CONFIG_CMD_ARM_CPUINFO)	+= cpuinfo.o
+obj-$(CONFIG_MMU)		+= mmu.o
+obj-$(CONFIG_CPU_32v4T)		+= cache-armv4.o
+obj-$(CONFIG_CPU_32v5)		+= cache-armv4.o
+obj-$(CONFIG_CPU_32v6)		+= cache-armv6.o
+obj-$(CONFIG_CPU_32v7)		+= cache-armv7.o
-- 
1.6.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
