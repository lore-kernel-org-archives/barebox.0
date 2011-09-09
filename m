Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R1zXs-0008WR-5c
	for barebox@lists.infradead.org; Fri, 09 Sep 2011 11:46:56 +0000
Received: by fxd20 with SMTP id 20so2907784fxd.36
	for <barebox@lists.infradead.org>; Fri, 09 Sep 2011 04:46:55 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri,  9 Sep 2011 13:46:47 +0200
Message-Id: <1315568809-17776-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 2/4] macb: handle clk_get error
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/net/macb.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 9e5ce8b..ebe3bd4 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -49,6 +49,7 @@
 #include <asm/io.h>
 #include <mach/board.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 
 #include "macb.h"
 
@@ -454,6 +455,11 @@ static int macb_probe(struct device_d *dev)
 	 */
 #if defined(CONFIG_ARCH_AT91)
 	pclk = clk_get(dev, "macb_clk");
+	if (IS_ERR(pclk)) {
+		dev_err(dev, "no macb_clk\n");
+		return PTR_ERR(pclk);
+	}
+
 	clk_enable(pclk);
 	macb_hz = clk_get_rate(pclk);
 #else
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
