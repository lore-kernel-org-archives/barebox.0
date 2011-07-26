Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qlbs6-0001lq-HE
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 07:16:07 +0000
Received: by ewy3 with SMTP id 3so170047ewy.36
	for <barebox@lists.infradead.org>; Tue, 26 Jul 2011 00:16:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 26 Jul 2011 11:16:00 +0400
Message-Id: <1311664560-18006-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] Calculate SUBARCH in common makefile
To: barebox@lists.infradead.org

This patch make possible to use SUBARCH no only
in sandbox makefile.

E.g. this patch make possible CROSS_COMPILER variable
autoconstruction for mips architecture.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Makefile              |   12 ++++++++++++
 arch/sandbox/Makefile |    5 -----
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index 38dc3b0..ce1f72d 100644
--- a/Makefile
+++ b/Makefile
@@ -145,6 +145,18 @@ VPATH		:= $(srctree)$(if $(KBUILD_EXTMOD),:$(KBUILD_EXTMOD))
 
 export srctree objtree VPATH
 
+# SUBARCH tells the usermode build what the underlying arch is.  That is set
+# first, and if a usermode build is happening, the "ARCH=um" on the command
+# line overrides the setting of ARCH below.  If a native build is happening,
+# then ARCH is assigned, getting whatever value it gets normally, and
+# SUBARCH is subsequently ignored.
+
+SUBARCH := $(shell uname -m | sed -e s/i.86/i386/ -e s/sun4u/sparc64/ \
+				  -e s/arm.*/arm/ -e s/sa110/arm/ \
+				  -e s/s390x/s390/ -e s/parisc64/parisc/ \
+				  -e s/ppc.*/powerpc/ -e s/mips.*/mips/ \
+				  -e s/sh[234].*/sh/ )
+
 # Cross compiling and selecting different set of gcc/bin-utils
 # ---------------------------------------------------------------------------
 #
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 4ca17ed..e7afda3 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -32,11 +32,6 @@ else
 CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
-SUBARCH := $(shell uname -m | sed -e s/i.86/i386/ -e s/sun4u/sparc64/ \
-				  -e s/arm.*/arm/ -e s/sa110/arm/ \
-				  -e s/s390x/s390/ -e s/parisc64/parisc/ \
-				  -e s/ppc.*/powerpc/ -e s/mips.*/mips/ )
-
 ifeq ($(SUBARCH),x86_64)
 ELF_ARCH   := i386:x86-64
 ELF_FORMAT := elf64-x86-64
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
