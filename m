Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U8AXs-0008FD-St
 for barebox@lists.infradead.org; Wed, 20 Feb 2013 14:21:17 +0000
Received: from mail611.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 089DCDC1B4E
 for <barebox@lists.infradead.org>; Wed, 20 Feb 2013 15:31:53 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 20 Feb 2013 15:20:09 +0100
Message-Id: <1361370009-15147-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] Makefile: x_flags prepare for apps support
To: barebox@lists.infradead.org

only include barebox header for barebox flags

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile             |    3 ++-
 arch/arm/Makefile    |    3 ++-
 scripts/Makefile.lib |   13 +++++++++----
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/Makefile b/Makefile
index 7f97e8f..f1d3c50 100644
--- a/Makefile
+++ b/Makefile
@@ -297,7 +297,7 @@ LINUXINCLUDE    := -Iinclude \
                    -include include/generated/autoconf.h \
                    -include $(srctree)/include/linux/kconfig.h
 
-CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
+CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ -fno-builtin -ffreestanding
 
 CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
                    -fno-strict-aliasing -fno-common -Os -pipe
@@ -315,6 +315,7 @@ export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL UTS_MACHINE
 export HOSTCXX HOSTCXXFLAGS LDFLAGS_MODULE CHECK CHECKFLAGS
 
 export CPPFLAGS NOSTDINC_FLAGS LINUXINCLUDE OBJCOPYFLAGS LDFLAGS
+export AFLAGS_LINUXINCLUDE
 export CFLAGS CFLAGS_KERNEL
 export AFLAGS AFLAGS_KERNEL
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index b98d6b8..240cae7 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -47,7 +47,8 @@ AFLAGS_THUMB2	:=$(CFLAGS_THUMB2) -Wa$(comma)-mthumb
 endif
 
 CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float $(CFLAGS_THUMB2)
-AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
+AFLAGS_LINUXINCLUDE += -include asm/unified.h
+AFLAGS   += -msoft-float $(AFLAGS_THUMB2)
 
 # Machine directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 871c44b..91e4c47 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -130,16 +130,21 @@ __a_flags	=                          $(call flags,_a_flags)
 __cpp_flags     =                          $(call flags,_cpp_flags)
 endif
 
-c_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(CPPFLAGS) \
+___c_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(CPPFLAGS) \
 		 $(__c_flags) $(modkern_cflags) \
 		 -D"KBUILD_STR(s)=\#s" $(basename_flags) $(modname_flags)
 
-a_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(CPPFLAGS) \
+___a_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(CPPFLAGS) \
 		 $(__a_flags) $(modkern_aflags)
 
-cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
+___cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
 
-ld_flags       = $(LDFLAGS) $(EXTRA_LDFLAGS)
+___ld_flags       = $(LDFLAGS) $(EXTRA_LDFLAGS)
+
+c_flags        = $(___c_flags) $(LINUXINCLUDE)
+a_flags        = $(___a_flags) $(LINUXINCLUDE) $(AFLAGS_LINUXINCLUDE)
+cpp_flags      = $(___cpp_flags) $(LINUXINCLUDE)
+ld_flags       = $(___ld_flags)
 
 # Finds the multi-part object the current object will be linked into
 modname-multi = $(sort $(foreach m,$(multi-used),\
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
