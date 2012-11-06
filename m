Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVow8-00080r-3H
 for barebox@lists.infradead.org; Tue, 06 Nov 2012 19:35:49 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id F07DFFFBD99
 for <barebox@lists.infradead.org>; Tue,  6 Nov 2012 20:46:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  6 Nov 2012 20:33:35 +0100
Message-Id: <1352230416-9396-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/8] atmel_spi: add cs change support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/atmel_spi.c |   24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index ee0c4b4..793933e 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -320,6 +320,7 @@ static int atmel_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 	struct spi_master *master	= spi->master;
 	struct atmel_spi *as		= to_atmel_spi(master);
 	struct spi_transfer *t		= NULL;
+	unsigned int cs_change;
 
 	mesg->actual_length = 0;
 
@@ -335,15 +336,34 @@ static int atmel_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 
 	cs_activate(as, spi);
 
+	cs_change = 0;
+
 	list_for_each_entry(t, &mesg->transfers, transfer_list) {
 
+		if (cs_change) {
+			udelay(1);
+			cs_deactivate(as, spi);
+			udelay(1);
+			cs_activate(as, spi);
+		}
+
+		cs_change = t->cs_change;
+
 		ret = atmel_spi_do_xfer(spi, as, t);
 		if (ret < 0)
-			goto out;
+			goto err;
 		mesg->actual_length += ret;
+
+		if (cs_change)
+			cs_activate(as, spi);
 	}
 
-out:
+	if (!cs_change)
+		cs_deactivate(as, spi);
+
+	return 0;
+
+err:
 	cs_deactivate(as, spi);
 	return ret;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
