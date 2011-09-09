Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R1zXw-0008WR-Di
	for barebox@lists.infradead.org; Fri, 09 Sep 2011 11:47:00 +0000
Received: by mail-fx0-f49.google.com with SMTP id 20so2907784fxd.36
	for <barebox@lists.infradead.org>; Fri, 09 Sep 2011 04:47:00 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri,  9 Sep 2011 13:46:48 +0200
Message-Id: <1315568809-17776-2-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1315568809-17776-1-git-send-email-h.feurstein@gmail.com>
References: <1315568809-17776-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 3/4] atmel_mci: handle clk_get error correctly
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/mci/atmel_mci.c |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index b4489dd..943ab34 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -23,6 +23,7 @@
 #include <asm/io.h>
 #include <mach/board.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 
 #include "at91_mci.h"
 
@@ -460,9 +461,9 @@ static int mci_probe(struct device_d *hw_dev)
 	host->hw_dev = hw_dev;
 	hw_dev->priv = host;
 	host->clk = clk_get(hw_dev, "mci_clk");
-	if (host->clk == NULL) {
+	if (IS_ERR(host->clk)) {
 		dev_err(hw_dev, "no mci_clk\n");
-		return -EINVAL;
+		return PTR_ERR(host->clk);
 	}
 
 	clk_rate = clk_get_rate(host->clk);
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
