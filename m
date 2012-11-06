Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVow6-0007zK-7J
 for barebox@lists.infradead.org; Tue, 06 Nov 2012 19:35:47 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 88A8AFFBD8D
 for <barebox@lists.infradead.org>; Tue,  6 Nov 2012 20:46:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  6 Nov 2012 20:33:32 +0100
Message-Id: <1352230416-9396-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/8] atmel_spi: add sanity check in setup
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/atmel_spi.c |   14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index dbf6af8..17b91eb 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -87,6 +87,20 @@ static int atmel_spi_setup(struct spi_device *spi)
 	unsigned int		bits = spi->bits_per_word;
 	unsigned long		bus_hz;
 
+	if (spi->chip_select > spi->master->num_chipselect) {
+		dev_dbg(&spi->dev,
+				"setup: invalid chipselect %u (%u defined)\n",
+				spi->chip_select, spi->master->num_chipselect);
+		return -EINVAL;
+	}
+
+	if (bits < 8 || bits > 16) {
+		dev_dbg(&spi->dev,
+				"setup: invalid bits_per_word %u (8 to 16)\n",
+				bits);
+		return -EINVAL;
+	}
+
 	if (spi->controller_data) {
 		csr = (u32)spi->controller_data;
 		spi_writel(as, CSR0, csr);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
