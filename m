Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8NfY-00045u-KH
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 08:07:57 +0000
Received: by mail-wm0-x242.google.com with SMTP id a136so13545730wme.0
 for <barebox@lists.infradead.org>; Thu, 02 Jun 2016 01:07:37 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Thu,  2 Jun 2016 10:06:48 +0200
Message-Id: <1464854818-28653-3-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
References: <1464854818-28653-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 02/12] arm: Makefile: rework makefile to handle armv8
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/Makefile | 30 ++++++++++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 5ccdb83..df4832f 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -1,7 +1,11 @@
 
 CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
+ifeq ($(CONFIG_CPU_V8),y)
+CPPFLAGS	+=$(call cc-option,-maarch64,)
+else
 CPPFLAGS	+=$(call cc-option,-marm,)
+endif
 
 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
 CPPFLAGS	+= -mbig-endian
@@ -17,7 +21,9 @@ endif
 # at least some of the code would be executed with MMU off, lets be
 # conservative and instruct the compiler not to generate any unaligned
 # accesses
+ifeq ($(CONFIG_CPU_V8),n)
 CFLAGS += -mno-unaligned-access
+endif
 
 
 # This selects which instruction set is used.
@@ -33,12 +39,17 @@ arch-$(CONFIG_CPU_32v4T)	:=-D__LINUX_ARM_ARCH__=4 -march=armv4t
 tune-$(CONFIG_CPU_ARM920T)	:=-mtune=arm9tdmi
 tune-$(CONFIG_CPU_ARM926T)	:=-mtune=arm9tdmi
 tune-$(CONFIG_CPU_XSCALE)	:=$(call cc-option,-mtune=xscale,-mtune=strongarm110) -Wa,-mcpu=xscale
+arch-$(CONFIG_CPU_64v8)		:= -D__LINUX_ARM_ARCH__=8 $(call cc-option,-march=armv8-a)
 
+ifeq ($(CONFIG_CPU_V8), y)
+CFLAGS_ABI	:=-mabi=lp64
+else
 ifeq ($(CONFIG_AEABI),y)
 CFLAGS_ABI	:=-mabi=aapcs-linux -mno-thumb-interwork
 else
 CFLAGS_ABI	:=$(call cc-option,-mapcs-32,-mabi=apcs-gnu) $(call cc-option,-mno-thumb-interwork,)
 endif
+endif
 
 ifeq ($(CONFIG_ARM_UNWIND),y)
 CFLAGS_ABI	+=-funwind-tables
@@ -51,8 +62,13 @@ CFLAGS_THUMB2	:=-mthumb $(AFLAGS_AUTOIT) $(AFLAGS_NOWARN)
 AFLAGS_THUMB2	:=$(CFLAGS_THUMB2) -Wa$(comma)-mthumb
 endif
 
+ifeq ($(CONFIG_CPU_V8), y)
+CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
+AFLAGS   += -include asm/unified.h
+else
 CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float $(CFLAGS_THUMB2)
 AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
+endif
 
 # Machine directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
@@ -78,6 +94,7 @@ machine-$(CONFIG_ARCH_VEXPRESS)		:= vexpress
 machine-$(CONFIG_ARCH_TEGRA)		:= tegra
 machine-$(CONFIG_ARCH_UEMD)		:= uemd
 machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
+machine-$(CONFIG_ARCH_VIRT)		:= virt
 
 
 # Board directory name.  This list is sorted alphanumerically
@@ -275,12 +292,21 @@ MACH :=
 endif
 
 common-y += $(BOARD) arch/arm/boards/ $(MACH)
-common-y += arch/arm/lib/ arch/arm/cpu/
-common-y += arch/arm/crypto/
+common-y += arch/arm/cpu/
+
+ifeq ($(CONFIG_CPU_V8), y)
+common-y += arch/arm/lib64/
+else
+common-y += arch/arm/lib/ arch/arm/crypto/
+endif
 
 common-$(CONFIG_OFTREE) += arch/arm/dts/
 
+ifeq ($(CONFIG_CPU_V8), y)
+lds-y	:= arch/arm/lib64/barebox.lds
+else
 lds-y	:= arch/arm/lib/barebox.lds
+endif
 
 common- += $(patsubst %,arch/arm/boards/%/,$(board-))
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
