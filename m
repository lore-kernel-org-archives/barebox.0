Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X32CG-0004LW-74
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 12:02:32 +0000
Received: from [99.240.204.5] (port=56159 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X32Bq-0000f9-27
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 08:02:06 -0400
Date: Fri, 4 Jul 2014 08:02:02 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407040759080.21709@localhost>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] bootm.c: "-o" option should refer to "DTB", not "DTS"
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Fix option explanation, and a couple grammar fixes.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  unless i misread this, the bootm "-o" option should take a DTB
argument, not a DTS, yes? and since i was there, a couple trivial
grammar fixes.

diff --git a/commands/bootm.c b/commands/bootm.c
index 617acd6..a65864a 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -143,7 +143,7 @@ err_out:
 BAREBOX_CMD_HELP_START(bootm)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-c\t",  "crc check uImage data")
-BAREBOX_CMD_HELP_OPT ("-d\t",  "dryrun: check data, but do not run")
+BAREBOX_CMD_HELP_OPT ("-d\t",  "dry run: check data, but do not run")
 BAREBOX_CMD_HELP_OPT ("-f\t",  "load images even if type is undetectable")
 #ifdef CONFIG_CMD_BOOTM_INITRD
 BAREBOX_CMD_HELP_OPT ("-r INITRD","specify an initrd image")
@@ -152,7 +152,7 @@ BAREBOX_CMD_HELP_OPT ("-L ADDR\t","specify initrd load address")
 BAREBOX_CMD_HELP_OPT ("-a ADDR\t","specify os load address")
 BAREBOX_CMD_HELP_OPT ("-e OFFS\t","entry point to the image relative to start (0)")
 #ifdef CONFIG_OFTREE
-BAREBOX_CMD_HELP_OPT ("-o DTS\t","specify open firmware device tree")
+BAREBOX_CMD_HELP_OPT ("-o DTB\t","specify open firmware device tree")
 #endif
 #ifdef CONFIG_CMD_BOOTM_VERBOSE
 BAREBOX_CMD_HELP_OPT ("-v\t","verbose")
@@ -178,7 +178,7 @@ BAREBOX_CMD_START(bootm)
 	BAREBOX_CMD_HELP(cmd_bootm_help)
 BAREBOX_CMD_END

-BAREBOX_MAGICVAR(bootargs, "Linux Kernel parameters");
+BAREBOX_MAGICVAR(bootargs, "Linux kernel parameters");
 BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image, "bootm default boot image");
 BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image.loadaddr, "bootm default boot image loadaddr");
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
