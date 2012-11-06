Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVow6-0007zD-7K
 for barebox@lists.infradead.org; Tue, 06 Nov 2012 19:35:47 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id F16ABFFBD14
 for <barebox@lists.infradead.org>; Tue,  6 Nov 2012 20:46:05 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  6 Nov 2012 20:33:29 +0100
Message-Id: <1352230416-9396-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121106193010.GE25679@game.jcrosoft.org>
References: <20121106193010.GE25679@game.jcrosoft.org>
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
Subject: [PATCH 1/8] atmel_spi: use device id as bus num
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/atmel_spi.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 43aec8e..3375f81 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -265,6 +265,7 @@ static int atmel_spi_probe(struct device_d *dev)
 
 	master = &as->master;
 	master->dev = dev;
+	master->bus_num = dev->id;
 
 	as->clk = clk_get(dev, "spi_clk");
 	if (IS_ERR(as->clk)) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
