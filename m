Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUXj9-0001oa-0U
 for barebox@lists.infradead.org; Mon, 31 Mar 2014 08:37:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Mar 2014 10:37:31 +0200
Message-Id: <1396255051-13989-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1396255051-13989-1-git-send-email-s.hauer@pengutronix.de>
References: <1396255051-13989-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX6 Phytec phyFLEX: Add Nand update support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index e9bd168..c90f378 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -21,6 +21,7 @@
 #include <gpio.h>
 #include <init.h>
 #include <of.h>
+#include <mach/bbu.h>
 
 #include <mach/imx6.h>
 
@@ -43,6 +44,8 @@ static int phytec_pfla02_init(void)
 
 	eth_phy_reset();
 
+	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+
 	return 0;
 }
 device_initcall(phytec_pfla02_init);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
