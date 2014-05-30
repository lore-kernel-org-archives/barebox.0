Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22a.google.com ([2a00:1450:400c:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIiA-0002Bq-Dv
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:02:51 +0000
Received: by mail-we0-f170.google.com with SMTP id u57so1699113wes.15
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:02:28 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:07:34 +0200
Message-Id: <1401440856-6145-9-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 08/10] bootm: beautify output
To: barebox@lists.infradead.org

* fix indentation of options in 'help bootm'
* add missing help for -m
* put some output into debug/verbose mode

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/lib/armlinux.c |    2 +-
 commands/Kconfig        |   15 ++++++++++-----
 commands/bootm.c        |   15 ++++++++-------
 common/bootm.c          |    4 ++--
 4 files changed, 21 insertions(+), 15 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index bc28620..16879f8 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -261,7 +261,7 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 	int architecture;
 
 	if (oftree) {
-		printf("booting kernel with devicetree\n");
+		pr_debug("booting kernel with devicetree\n");
 		params = oftree;
 	} else {
 		setup_tags(initrd_address, initrd_size, swap);
diff --git a/commands/Kconfig b/commands/Kconfig
index a1b1fc8..eed6fbd 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -288,11 +288,16 @@ config CMD_BOOT
 	  one succeeds.
 
 	  Options:
-		  -v	Increase verbosity
-		  -d	Dryrun. See what happens but do no actually boot
-		  -l	List available boot sources
-		  -m	Show a menu with boot options
-		  -t SECS	specify timeout in SECS
+	      -c         crc check uImage data
+	      -d         dryrun: check data, but do not run
+	      -f         load images even if type is undetectable
+	      -r INITRD  specify an initrd image
+	      -L ADDR    specify initrd load address
+	      -a ADDR    specify os load address
+	      -e OFFS    entry point to the image relative to start (0)
+	      -o DTS     specify open firmware device tree
+	      -v         verbose
+
 
 config CMD_BOOTM
 	tristate
diff --git a/commands/bootm.c b/commands/bootm.c
index 5801f44..d6625df 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -142,16 +142,17 @@ err_out:
 
 BAREBOX_CMD_HELP_START(bootm)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-c",  "crc check uImage data")
-BAREBOX_CMD_HELP_OPT ("-d",  "dryrun. Check data, but do not run")
+BAREBOX_CMD_HELP_OPT ("-c\t",  "crc check uImage data")
+BAREBOX_CMD_HELP_OPT ("-d\t",  "dryrun: check data, but do not run")
+BAREBOX_CMD_HELP_OPT ("-f\t",  "load images even if type is undetectable")
 #ifdef CONFIG_CMD_BOOTM_INITRD
 BAREBOX_CMD_HELP_OPT ("-r INITRD","specify an initrd image")
-BAREBOX_CMD_HELP_OPT ("-L ADDR","specify initrd load address")
+BAREBOX_CMD_HELP_OPT ("-L ADDR\t","specify initrd load address")
 #endif
-BAREBOX_CMD_HELP_OPT ("-a ADDR","specify os load address")
-BAREBOX_CMD_HELP_OPT ("-e OFFS","entry point to the image relative to start (0)")
+BAREBOX_CMD_HELP_OPT ("-a ADDR\t","specify os load address")
+BAREBOX_CMD_HELP_OPT ("-e OFFS\t","entry point to the image relative to start (0)")
 #ifdef CONFIG_OFTREE
-BAREBOX_CMD_HELP_OPT ("-o DTS","specify device tree")
+BAREBOX_CMD_HELP_OPT ("-o DTS\t","specify open firmware device tree")
 #endif
 #ifdef CONFIG_CMD_BOOTM_VERBOSE
 BAREBOX_CMD_HELP_OPT ("-v\t","verbose")
@@ -161,7 +162,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(bootm)
 	.cmd		= do_bootm,
 	BAREBOX_CMD_DESC("boot an application image")
-	BAREBOX_CMD_OPTS("[-cd"
+	BAREBOX_CMD_OPTS("[-cdf"
 #ifdef CONFIG_CMD_BOOTM_INITRD
 					  "rL"
 #endif
diff --git a/common/bootm.c b/common/bootm.c
index d6e02a7..871959c 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -428,7 +428,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 	}
 
-	printf("\nLoading OS %s '%s'", file_type_to_string(os_type),
+	printf("\nLoading %s '%s'", file_type_to_string(os_type),
 			data->os_file);
 	if (os_type == filetype_uimage &&
 			data->os->header.ih_type == IH_TYPE_MULTI)
@@ -442,7 +442,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 				goto err_out;
 		} else {
 			data->of_root_node = of_get_root_node();
-			if (data->of_root_node)
+			if (bootm_verbose(data) > 1 && data->of_root_node)
 				printf("using internal devicetree\n");
 		}
 	}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
