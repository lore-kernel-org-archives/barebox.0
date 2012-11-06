Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVow8-00080q-2z
 for barebox@lists.infradead.org; Tue, 06 Nov 2012 19:35:49 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id D2616FFBD97
 for <barebox@lists.infradead.org>; Tue,  6 Nov 2012 20:46:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  6 Nov 2012 20:33:34 +0100
Message-Id: <1352230416-9396-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1352230416-9396-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121106193010.GE25679@game.jcrosoft.org>
 <1352230416-9396-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/8] atmel_spi: drop setup during transfer
To: barebox@lists.infradead.org

this need to be handle at framework and driver level

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/atmel_spi.c |    5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index ba1e467..ee0c4b4 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -322,11 +322,6 @@ static int atmel_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 	struct spi_transfer *t		= NULL;
 
 	mesg->actual_length = 0;
-	ret = master->setup(spi);
-	if (ret < 0) {
-		dev_dbg(master->dev, "transfer: master setup failed\n");
-		return ret;
-	}
 
 	dev_dbg(master->dev, "  csr0: %08x\n", spi_readl(as, CSR0));
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
