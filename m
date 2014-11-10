Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x236.google.com ([2607:f8b0:400e:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xnt39-00050P-GW
 for barebox@lists.infradead.org; Mon, 10 Nov 2014 17:46:47 +0000
Received: by mail-pa0-f54.google.com with SMTP id rd3so8620481pab.41
 for <barebox@lists.infradead.org>; Mon, 10 Nov 2014 09:46:25 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 10 Nov 2014 09:46:10 -0800
Message-Id: <1415641570-19399-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: i.MX6 Phytec phyFLEX: Fix imx6_bbu_nand_register_handler
 usage
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com, cconley@phytec.com

imx6_bbu_nand_register_handler is not availible if
CONFIG_BAREBOX_UPDATE_IMX6_NAND is not selected. Fix this by wrapping
it's usage in preprocessor statements.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index 09a5c79..9acbd7a 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -81,8 +81,9 @@ static int phytec_pfla02_init(void)
 
 	phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
 					   ksz9031rn_phy_fixup);
-
+#ifdef CONFIG_BAREBOX_UPDATE_IMX6_NAND
 	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+#endif
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
