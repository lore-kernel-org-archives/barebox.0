Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bIAmA-0003TD-Js
 for barebox@lists.infradead.org; Wed, 29 Jun 2016 08:23:15 +0000
Received: by mail-wm0-x242.google.com with SMTP id c82so12403990wme.3
 for <barebox@lists.infradead.org>; Wed, 29 Jun 2016 01:22:54 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Wed, 29 Jun 2016 10:22:09 +0200
Message-Id: <1467188540-76509-3-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1467188540-76509-1-git-send-email-poggi.raph@gmail.com>
References: <1467188540-76509-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v4 02/13] arm: Makefile: rework makefile to handle armv8
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/Makefile | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 5ccdb83..2cf5feb 100644
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
@@ -17,13 +21,16 @@ endif
 # at least some of the code would be executed with MMU off, lets be
 # conservative and instruct the compiler not to generate any unaligned
 # accesses
+ifeq ($(CONFIG_CPU_V8),n)
 CFLAGS += -mno-unaligned-access
+endif
 
 
 # This selects which instruction set is used.
 # Note that GCC does not numerically define an architecture version
 # macro, but instead defines a whole series of macros which makes
 # testing for a specific architecture or later rather impossible.
+arch-$(CONFIG_CPU_64v8)		:= -D__LINUX_ARM_ARCH__=8 $(call cc-option,-march=armv8-a)
 arch-$(CONFIG_CPU_32v7)		:=-D__LINUX_ARM_ARCH__=7 $(call cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)
 arch-$(CONFIG_CPU_32v6)            :=-D__LINUX_ARM_ARCH__=6 $(call cc-option,-march=armv6,-march=armv5t -Wa$(comma)-march=armv6)
 arch-$(CONFIG_CPU_32v5)		:=-D__LINUX_ARM_ARCH__=5 $(call cc-option,-march=armv5te,-march=armv4t)
@@ -34,11 +41,15 @@ tune-$(CONFIG_CPU_ARM920T)	:=-mtune=arm9tdmi
 tune-$(CONFIG_CPU_ARM926T)	:=-mtune=arm9tdmi
 tune-$(CONFIG_CPU_XSCALE)	:=$(call cc-option,-mtune=xscale,-mtune=strongarm110) -Wa,-mcpu=xscale
 
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
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
