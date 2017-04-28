Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d45IH-000799-EE
 for barebox@lists.infradead.org; Fri, 28 Apr 2017 12:46:42 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 22AEEA0022B
 for <barebox@lists.infradead.org>; Fri, 28 Apr 2017 14:46:54 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 28 Apr 2017 14:46:02 +0200
Message-Id: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 1/7] arm: mach-omap: Change file flags in emmc handler
To: barebox@lists.infradead.org

This handler tries to read from a file descriptor with 'write only'
flags and fails. Add read permissions for the file, so the handler can
read the partition layout.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/mach-omap/am33xx_bbu_emmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/am33xx_bbu_emmc.c b/arch/arm/mach-omap/am33xx_bbu_emmc.c
index 3220575..d3adb37 100644
--- a/arch/arm/mach-omap/am33xx_bbu_emmc.c
+++ b/arch/arm/mach-omap/am33xx_bbu_emmc.c
@@ -39,7 +39,7 @@ static int emmc_mlo_handler(struct bbu_handler *handler, struct bbu_data *data)
 	if (ret != 0)
 		return ret;
 
-	fd = open(handler->devicefile, O_WRONLY);
+	fd = open(handler->devicefile, O_RDWR);
 	if (fd < 0) {
 		pr_err("could not open %s: %s\n", handler->devicefile,
 			errno_str());
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
