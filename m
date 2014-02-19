Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WG4kA-0003Vb-MK
 for barebox@lists.infradead.org; Wed, 19 Feb 2014 10:51:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Feb 2014 11:50:43 +0100
Message-Id: <1392807047-32080-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392807047-32080-1-git-send-email-s.hauer@pengutronix.de>
References: <1392807047-32080-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] common/Makefile: reorder targets
To: barebox@lists.infradead.org

Reorder targets alphabetically to make the file look nicer, no
functional change.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile | 87 ++++++++++++++++++++++++++++-----------------------------
 1 file changed, 42 insertions(+), 45 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index ee02e0e..ce34d98 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -1,53 +1,50 @@
-obj-$(CONFIG_BINFMT)		+= binfmt.o
-obj-$(CONFIG_SHELL_HUSH)	+= hush.o
-obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
-obj-$(CONFIG_GREGORIAN_CALENDER) += date.o
-obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
-obj-$(CONFIG_ENV_HANDLING)	+= environment.o
+obj-y				+= memory.o
+obj-y				+= memory_display.o
+obj-y				+= clock.o
+obj-y				+= console_common.o
+obj-y				+= startup.o
+obj-y				+= misc.o
+obj-y				+= memsize.o
+obj-y				+= resource.o
+obj-y				+= bootsource.o
+extra-y				+= barebox_default_env barebox_default_env.h
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
-obj-$(CONFIG_POLLER)		+= poller.o
+obj-$(CONFIG_BANNER)		+= version.o
+obj-$(CONFIG_BAREBOX_UPDATE)	+= bbu.o
+obj-$(CONFIG_BINFMT)		+= binfmt.o
 obj-$(CONFIG_BLOCK)		+= block.o
-obj-$(CONFIG_PARTITION_DISK)	+= partitions.o partitions/
-
+obj-$(CONFIG_BLSPEC)		+= blspec.o
+obj-$(CONFIG_BOOTM)		+= bootm.o
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
+obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
+obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
+obj-$(CONFIG_CONSOLE_FULL)	+= console.o
+obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
+obj-$(CONFIG_DIGEST)		+= digest.o
+obj-$(CONFIG_DDR_SPD)		+= ddr_spd.o
+obj-$(CONFIG_ENV_HANDLING)	+= environment.o
+obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
+obj-$(CONFIG_FILETYPE)		+= filetype.o
+obj-$(CONFIG_FLEXIBLE_BOOTARGS)	+= bootargs.o
+obj-$(CONFIG_GLOBALVAR)		+= globalvar.o
+obj-$(CONFIG_GREGORIAN_CALENDER) += date.o
+obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
+obj-$(CONFIG_MALLOC_DLMALLOC)	+= dlmalloc.o
+obj-$(CONFIG_MALLOC_TLSF)	+= tlsf_malloc.o tlsf.o
+obj-$(CONFIG_MALLOC_DUMMY)	+= dummy_malloc.o
+obj-$(CONFIG_MEMINFO)		+= meminfo.o
+obj-$(CONFIG_MENU)		+= menu.o
+obj-$(CONFIG_MODULES)		+= module.o
+extra-$(CONFIG_MODULES)		+= module.lds
 obj-$(CONFIG_OFTREE)		+= oftree.o
+obj-$(CONFIG_PARTITION_DISK)	+= partitions.o partitions/
+obj-$(CONFIG_PASSWORD)		+= password.o
+obj-$(CONFIG_POLLER)		+= poller.o
+obj-$(CONFIG_RESET_SOURCE)	+= reset_source.o
+obj-$(CONFIG_SHELL_HUSH)	+= hush.o
+obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
+obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
 
-obj-$(CONFIG_BLSPEC) += blspec.o
-obj-y += memory.o
-obj-$(CONFIG_DDR_SPD)  += ddr_spd.o
-obj-y += memory_display.o
-obj-$(CONFIG_MALLOC_DLMALLOC) += dlmalloc.o
-obj-$(CONFIG_MALLOC_TLSF) += tlsf_malloc.o
-obj-$(CONFIG_MALLOC_TLSF) += tlsf.o
-obj-$(CONFIG_MALLOC_DUMMY) += dummy_malloc.o
-obj-$(CONFIG_CMD_MEMTEST) += memtest.o
-obj-y += clock.o
-obj-$(CONFIG_BANNER) += version.o
-obj-$(CONFIG_MEMINFO) += meminfo.o
-obj-$(CONFIG_COMMAND_SUPPORT) += command.o
-obj-$(CONFIG_CONSOLE_FULL) += console.o
-obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
-obj-y += console_common.o
-obj-$(CONFIG_DIGEST) += digest.o
-obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
-obj-$(CONFIG_UIMAGE) += image.o
-obj-$(CONFIG_UIMAGE) += uimage.o
-obj-y += startup.o
-obj-y += misc.o
-obj-y += memsize.o
-obj-$(CONFIG_GLOBALVAR) += globalvar.o
-obj-$(CONFIG_RESET_SOURCE) += reset_source.o
-obj-$(CONFIG_FILETYPE) += filetype.o
-obj-y += resource.o
-obj-$(CONFIG_MENU) += menu.o
-obj-$(CONFIG_PASSWORD) += password.o
-obj-$(CONFIG_MODULES) += module.o
-obj-$(CONFIG_FLEXIBLE_BOOTARGS) += bootargs.o
-obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
-obj-y += bootsource.o
-obj-$(CONFIG_BOOTM) += bootm.o
-extra-$(CONFIG_MODULES) += module.lds
-extra-y += barebox_default_env barebox_default_env.h
 
 ifdef CONFIG_DEFAULT_ENVIRONMENT
 $(obj)/startup.o: $(obj)/barebox_default_env.h
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
