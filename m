Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X05PW-0006pm-Hk
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 08:52:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jun 2014 10:51:32 +0200
Message-Id: <1403772698-10330-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] ubiformat: avoid macros in help text
To: barebox@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

To simplify parsing of the help strings, we need to avoid using
macros there.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 commands/ubiformat.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 5c8a363..443d645 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -26,7 +26,7 @@
  */
 #define MAX_CONSECUTIVE_BAD_BLOCKS 4
 
-#define PROGRAM_NAME    "ubiformat"
+#define PROGRAM_NAME	"ubiformat"
 
 #include <common.h>
 #include <command.h>
@@ -337,7 +337,7 @@ static int flash_image(const struct mtd_dev_info *mtd,
 		long long ec;
 
 		if (!args.quiet && !args.verbose) {
-			printf("\r" PROGRAM_NAME ": flashing eraseblock %d -- %2u %% complete  ",
+			printf("\rubiformat: flashing eraseblock %d -- %2u %% complete  ",
 			       eb, (eb + 1) * 100 / mtd->eb_cnt);
 		}
 
@@ -447,7 +447,7 @@ static int format(const struct mtd_dev_info *mtd,
 		long long ec;
 
 		if (!args.quiet && !args.verbose) {
-			printf("\r" PROGRAM_NAME ": formatting eraseblock %d -- %2u %% complete  ",
+			printf("\rubiformat: formatting eraseblock %d -- %2u %% complete  ",
 			       eb, (eb + 1 - start_eb) * 100 / (mtd->eb_cnt - start_eb));
 		}
 
@@ -781,8 +781,8 @@ BAREBOX_CMD_HELP_OPT("-Q NUM\t", "32-bit UBI image sequence number to use")
 BAREBOX_CMD_HELP_OPT("-q\t", "suppress progress percentage information")
 BAREBOX_CMD_HELP_OPT("-v\t", "be verbose")
 BAREBOX_CMD_HELP_TEXT("")
-BAREBOX_CMD_HELP_TEXT("Example 1: " PROGRAM_NAME " /dev/nand0 -y - format nand0 and assume yes")
-BAREBOX_CMD_HELP_TEXT("Example 2: " PROGRAM_NAME " /dev/nand0 -q -e 0 - format nand0,")
+BAREBOX_CMD_HELP_TEXT("Example 1: ubiformat /dev/nand0 -y - format nand0 and assume yes")
+BAREBOX_CMD_HELP_TEXT("Example 2: ubiformat /dev/nand0 -q -e 0 - format nand0,")
 BAREBOX_CMD_HELP_TEXT("\tbe quiet and force erase counter value 0.")
 BAREBOX_CMD_HELP_END
 
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
