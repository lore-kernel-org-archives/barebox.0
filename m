Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22c.google.com ([2607:f8b0:400e:c02::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YhdE9-000670-V7
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 12:12:34 +0000
Received: by pdea3 with SMTP id a3so105231188pde.3
 for <barebox@lists.infradead.org>; Mon, 13 Apr 2015 05:12:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 13 Apr 2015 05:12:06 -0700
Message-Id: <1428927126-4409-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] spi: i.MX: Respect the value of 'cs_change'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add the code to correctly handle 'cs_change' field in 'struct
spi_transfer'(base on the similar code from altera_spi.c)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/spi/imx_spi.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index a1f19eb..e552d5f 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -29,6 +29,7 @@
 #include <mach/generic.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <clock.h>
 
 #define CSPI_0_0_RXDATA		0x00
 #define CSPI_0_0_TXDATA		0x04
@@ -457,17 +458,34 @@ static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 {
 	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
 	struct spi_transfer *t;
+	unsigned int cs_change;
+	const int nsecs = 50;
 
 	imx->chipselect(spi, 1);
 
+	cs_change = 0;
+
 	mesg->actual_length = 0;
 
 	list_for_each_entry(t, &mesg->transfers, transfer_list) {
+		if (cs_change) {
+			ndelay(nsecs);
+			imx->chipselect(spi, 0);
+			ndelay(nsecs);
+			imx->chipselect(spi, 1);
+		}
+
+		cs_change = t->cs_change;
+
 		imx_spi_do_transfer(spi, t);
 		mesg->actual_length += t->len;
+
+		if (cs_change)
+			imx->chipselect(spi, 1);
 	}
 
-	imx->chipselect(spi, 0);
+	if (!cs_change)
+		imx->chipselect(spi, 0);
 
 	return 0;
 }
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
