Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwUda-0003i6-4n
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 09:55:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jul 2013 11:54:40 +0200
Message-Id: <1373363682-24449-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373363682-24449-1-git-send-email-s.hauer@pengutronix.de>
References: <1373363682-24449-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: i.MX: External Nand boot: remove debug command
To: barebox@lists.infradead.org

The debug command does not work with SoC specific entry points.
remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c | 32 --------------------------------
 1 file changed, 32 deletions(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 2e4e4d0..c91ed2e 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -410,35 +410,3 @@ void __bare_init __noreturn imx35_barebox_boot_nand_external(void)
 	imx35_barebox_entry(0);
 }
 #endif
-
-#define CONFIG_NAND_IMX_BOOT_DEBUG
-#ifdef CONFIG_NAND_IMX_BOOT_DEBUG
-#include <command.h>
-
-static int do_nand_boot_test(int argc, char *argv[])
-{
-	void *dest;
-	int size;
-
-	if (argc < 3)
-		return COMMAND_ERROR_USAGE;
-
-	dest = (void *)strtoul_suffix(argv[1], NULL, 0);
-	size = strtoul_suffix(argv[2], NULL, 0);
-
-	imx_nand_load_image(dest, size);
-
-	return 0;
-}
-
-static const __maybe_unused char cmd_nand_boot_test_help[] =
-"Usage: nand_boot_test <dest> <size>\n"
-"This command loads the booloader from the NAND memory like the reset\n"
-"routine does. Its intended for development tests only";
-
-BAREBOX_CMD_START(nand_boot_test)
-	.cmd		= do_nand_boot_test,
-	.usage		= "load bootloader from NAND",
-	BAREBOX_CMD_HELP(cmd_nand_boot_test_help)
-BAREBOX_CMD_END
-#endif
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
