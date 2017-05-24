Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDQPz-0006dj-Ay
 for barebox@lists.infradead.org; Wed, 24 May 2017 07:09:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 May 2017 09:08:51 +0200
Message-Id: <20170524070851.9647-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] Makefile: Speed up evaluation of ld options
To: Barebox List <barebox@lists.infradead.org>

Since "333ff7b1e4 Fix linking with new ld, based on u-boot" the build
with multiple images became unreasonable slow. This is because the
ld-option macro was evaluated once for each image. Fix this by exporting
and using LDFLAGS_barebox from the main Makefile.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile        | 1 +
 images/Makefile | 5 +----
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 3b8d73dab8..da65a1ab40 100644
--- a/Makefile
+++ b/Makefile
@@ -321,6 +321,7 @@ export HOSTCXX HOSTCXXFLAGS LDFLAGS_MODULE CHECK CHECKFLAGS
 export CPPFLAGS NOSTDINC_FLAGS LINUXINCLUDE OBJCOPYFLAGS LDFLAGS
 export CFLAGS CFLAGS_KERNEL
 export AFLAGS AFLAGS_KERNEL
+export LDFLAGS_barebox
 
 # Files to ignore in find ... statements
 
diff --git a/images/Makefile b/images/Makefile
index 3f48267bca..705c8ad03e 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -53,11 +53,8 @@ extra-y += $(pbl-lds)
 $(pbl-lds): $(obj)/../arch/$(ARCH)/lib/pbl.lds.S FORCE
 	$(call if_changed_dep,cpp_lds_S)
 
-# Avoid 'Not enough room for program headers' error on binutils 2.28 onwards.
-LDFLAGS += $(call ld-option, --no-dynamic-linker)
-
 quiet_cmd_elf__ ?= LD      $@
-      cmd_elf__ ?= $(LD) $(LDFLAGS) --gc-sections -pie			\
+      cmd_elf__ ?= $(LD) $(LDFLAGS_barebox) --gc-sections -pie			\
 		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
 		-T $(pbl-lds)						\
 		--start-group $(barebox-pbl-common) --end-group
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
