Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grHxs-0001zr-Kp
 for barebox@lists.infradead.org; Wed, 06 Feb 2019 07:49:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Feb 2019 08:49:18 +0100
Message-Id: <20190206074921.11115-6-s.hauer@pengutronix.de>
In-Reply-To: <20190206074921.11115-1-s.hauer@pengutronix.de>
References: <20190206074921.11115-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/8] mci: imx-esdhc: remove unnecessary include
To: Barebox List <barebox@lists.infradead.org>

Drop inclusion of unnecessary include from mach-imx/include/mach.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 06fc69f405..9ccc34fbd5 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -32,7 +32,6 @@
 #include <io.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <mach/generic.h>
 #include <platform_data/mmc-esdhc-imx.h>
 #include <gpio.h>
 #include <of_device.h>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
