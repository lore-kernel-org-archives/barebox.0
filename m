Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZEfa-0005Ou-30
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 12:40:20 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 18 Dec 2018 13:40:03 +0100
Message-Id: <1545136803-42645-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] commands: nand-bitflip: Add documentation for option '-c'
To: barebox@lists.infradead.org

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 commands/nand-bitflip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/nand-bitflip.c b/commands/nand-bitflip.c
index a8a97c153aa0..cfde2f4040e7 100644
--- a/commands/nand-bitflip.c
+++ b/commands/nand-bitflip.c
@@ -107,6 +107,7 @@ BAREBOX_CMD_HELP_START(nand_bitflip)
 BAREBOX_CMD_HELP_TEXT("This command creates bitflips on Nand pages.")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-b <block>",  "block to work on")
+BAREBOX_CMD_HELP_OPT ("-c\t",  "Check only for bitflips")
 BAREBOX_CMD_HELP_OPT ("-o <offset>",  "offset in Nand")
 BAREBOX_CMD_HELP_OPT ("-r\t",  "flip random bits")
 BAREBOX_CMD_HELP_OPT ("-n <numbitflips>",  "Specify maximum number of bitflips to generate")
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
