Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAb-0003qr-B5
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:07 +0100
Message-Id: <1322467340-10596-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/14] bootm: remove dead code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |   47 -----------------------------------------------
 1 files changed, 0 insertions(+), 47 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 731b74d..2a4fde8 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -44,57 +44,10 @@
 #include <init.h>
 #include <asm-generic/memory_layout.h>
 
-/*
- *  Continue booting an OS image; caller already has:
- *  - copied image header to global variable `header'
- *  - checked header magic number, checksums (both header & image),
- *  - verified image architecture (PPC) and type (KERNEL or MULTI),
- *  - loaded (first part of) image to header load address,
- *  - disabled interrupts.
- */
-typedef void boot_os_Fcn(struct command *cmdtp, int flag,
-			  int	argc, char *argv[],
-			  ulong	addr,		/* of image to boot */
-			  ulong	*len_ptr,	/* multi-file image length table */
-			  int	verify);	/* getenv("verify")[0] != 'n' */
-
 #ifndef CFG_BOOTM_LEN
 #define CFG_BOOTM_LEN	0x800000	/* use 8MByte as default max gunzip size */
 #endif
 
-#ifdef CONFIG_SILENT_CONSOLE
-static void
-fixup_silent_linux ()
-{
-	char buf[256], *start, *end;
-	char *cmdline = getenv ("bootargs");
-
-	/* Only fix cmdline when requested */
-	if (!(gd->flags & GD_FLG_SILENT))
-		return;
-
-	debug ("before silent fix-up: %s\n", cmdline);
-	if (cmdline) {
-		if ((start = strstr (cmdline, "console=")) != NULL) {
-			end = strchr (start, ' ');
-			strncpy (buf, cmdline, (start - cmdline + 8));
-			if (end)
-				strcpy (buf + (start - cmdline + 8), end);
-			else
-				buf[start - cmdline + 8] = '\0';
-		} else {
-			strcpy (buf, cmdline);
-			strcat (buf, " console=");
-		}
-	} else {
-		strcpy (buf, "console=");
-	}
-
-	setenv ("bootargs", buf);
-	debug ("after silent fix-up: %s\n", buf);
-}
-#endif /* CONFIG_SILENT_CONSOLE */
-
 struct image_handle_data* image_handle_data_get_by_num(struct image_handle* handle, int num)
 {
 	if (!handle || num < 0 || num >= handle->nb_data_entries)
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
