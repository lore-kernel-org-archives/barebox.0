Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSQzn-0003zf-RT
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 13:34:40 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 02896A00665
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 15:33:57 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 12 Sep 2014 15:33:47 +0200
Message-Id: <1410528827-12722-10-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1410528827-12722-1-git-send-email-c.hemp@phytec.de>
References: <1410528827-12722-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 10/10] ARM:phyFLEX-iMX6: Add bootsource detection
To: barebox@lists.infradead.org

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c |   15 +++++++++++++++
 1 files changed, 15 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index 843edac..fe3d1b2 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -18,6 +18,8 @@
  */
 
 #include <envfs.h>
+#include <environment.h>
+#include <bootsource.h>
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
@@ -103,6 +105,19 @@ static int phytec_pfla02_init(void)
 
 	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
 
+	switch (bootsource_get()) {
+	case BOOTSOURCE_MMC:
+		of_device_enable_path("/chosen/environment-sd");
+		break;
+	case BOOTSOURCE_NAND:
+		of_device_enable_path("/chosen/environment-nand");
+		break;
+	default:
+	case BOOTSOURCE_SPI:
+		of_device_enable_path("/chosen/environment-spinor");
+		break;
+	}
+
 	defaultenv_append_directory(defaultenv_phyflex_imx6);
 
 	return 0;
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
