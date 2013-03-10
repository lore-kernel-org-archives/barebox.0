Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEdLs-0004RW-9J
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 10:19:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 10 Mar 2013 11:19:19 +0100
Message-Id: <1362910761-1732-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362910761-1732-1-git-send-email-s.hauer@pengutronix.de>
References: <1362910761-1732-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] MMC i.MX: remove unnecessary mach include
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 1210a1d..3d9bd0d 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -27,7 +27,6 @@
 #include <driver.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <mach/clock.h>
 #include <io.h>
 
 #define DRIVER_NAME "imx-mmc"
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
