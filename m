Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tun2c-0007FK-0o
 for barebox@lists.infradead.org; Mon, 14 Jan 2013 16:37:45 +0000
Received: from mail439.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 3E1ACFF9329
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2013 17:47:13 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 14 Jan 2013 17:36:11 +0100
Message-Id: <1358181372-24547-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358181372-24547-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130114163253.GD22953@game.jcrosoft.org>
 <1358181372-24547-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/5] atmel_spi: fix spi cs gpio request loop
To: barebox@lists.infradead.org

it's 0 to num_cs - 1

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/atmel_spi.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 08cb416..478f5d3 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -400,7 +400,7 @@ static int atmel_spi_probe(struct device_d *dev)
 	as->cs_pins = pdata->chipselect;
 	as->regs = dev_request_mem_region(dev, 0);
 
-	for (i = 0; i <= master->num_chipselect; i++) {
+	for (i = 0; i < master->num_chipselect; i++) {
 		ret = gpio_request(as->cs_pins[i], dev_name(dev));
 		if (ret)
 			goto out_gpio;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
