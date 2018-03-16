Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos5-00067l-4S
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:38 +0100
Message-Id: <20180316125354.23462-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/78] ARM: Add 64bit compilation alternative
To: Barebox List <barebox@lists.infradead.org>

Our 64bit file variants have the suffix "_64". This adds a make variable
that is either empty or contains "_64" which can be used to easily
alternatively compile the 32bit or 64bit variant.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile     |  1 +
 arch/arm/cpu/Makefile | 19 ++++++-------------
 2 files changed, 7 insertions(+), 13 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 620a3ccb0b..da307343c7 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -65,6 +65,7 @@ endif
 ifeq ($(CONFIG_CPU_V8), y)
 CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
 AFLAGS   += -include asm/unified.h
+export S64 = _64
 else
 CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float $(CFLAGS_THUMB2)
 AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 94f7d1bf45..ba729fb6e4 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,24 +1,17 @@
 obj-y += cpu.o
 
-ifeq ($(CONFIG_CPU_64v8), y)
-obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions_64.o
-obj-$(CONFIG_MMU) += mmu_64.o
-lwl-y += lowlevel_64.o
-else
-obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
-obj-$(CONFIG_MMU) += mmu.o
+obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions$(S64).o
+obj-$(CONFIG_MMU) += mmu$(S64).o
+lwl-y += lowlevel$(S64).o
+
+ifeq ($(CONFIG_CPU_32), y)
 obj-pbl-$(CONFIG_MMU) += mmu-early.o
-lwl-y += lowlevel.o
 endif
 
 obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
 obj-y += start.o entry.o
 
-ifeq ($(CONFIG_CPU_64v8), y)
-obj-pbl-y += setupc_64.o
-else
-obj-pbl-y += setupc.o
-endif
+obj-pbl-y += setupc$(S64).o
 
 #
 # Any variants can be called as start-armxyz.S
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
