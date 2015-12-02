Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a47mU-0001N0-OK
 for barebox@lists.infradead.org; Wed, 02 Dec 2015 13:49:17 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed,  2 Dec 2015 14:48:43 +0100
Message-Id: <1449064131-12659-2-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
References: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 1/9] arm: boards: karo-tx6x remove definition of DIV_ROUND_UP
To: barebox@lists.infradead.org

DIV_ROUND_UP is defined in include/linux/kernel.h. Use that instead.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 arch/arm/boards/karo-tx6x/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-tx6x/board.c
index 6d9dd9a505f0..a921541bfc7f 100644
--- a/arch/arm/boards/karo-tx6x/board.c
+++ b/arch/arm/boards/karo-tx6x/board.c
@@ -21,6 +21,7 @@
 #include <init.h>
 #include <i2c/i2c.h>
 #include <linux/clk.h>
+#include <linux/kernel.h>
 #include <environment.h>
 #include <mach/bbu.h>
 #include <mach/imx6.h>
@@ -29,7 +30,6 @@
 #define ETH_PHY_RST	IMX_GPIO_NR(7, 6)
 #define ETH_PHY_PWR	IMX_GPIO_NR(3, 20)
 #define ETH_PHY_INT	IMX_GPIO_NR(7, 1)
-#define DIV_ROUND_UP(n,d)      (((n) + (d) - 1) / (d))
 #define DIV_ROUND(n,d)         (((n) + ((d)/2)) / (d))
 
 #define LTC3676_BUCK1		0x01
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
