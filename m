Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAv2o-0004Y3-D4
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:33:40 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 63ECF100875B
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 07:33:16 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Jan 2015 07:33:07 +0100
Message-Id: <1421130790-1164-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1421130790-1164-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150113063128.GC30554@ns203013.ovh.net>
 <1421130790-1164-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/6] amba: pl011: add support for regulator
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/amba-pl011.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index fc7723e..4c4067d 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -28,6 +28,7 @@
 #include <init.h>
 #include <malloc.h>
 #include <io.h>
+#include <regulator.h>
 #include <linux/amba/serial.h>
 #include <linux/clk.h>
 #include <linux/err.h>
@@ -181,6 +182,16 @@ static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
 {
 	struct amba_uart_port *uart;
 	struct console_device *cdev;
+	struct regulator *r;
+
+	r = regulator_get(&dev->dev, NULL);
+	if (r) {
+		int ret;
+
+		ret = regulator_enable(r);
+		if (ret)
+			return ret;
+	}
 
 	uart = xzalloc(sizeof(struct amba_uart_port));
 	uart->clk = clk_get(&dev->dev, NULL);
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
