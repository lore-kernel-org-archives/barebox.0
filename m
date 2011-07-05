Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QeEJf-0003uB-V9
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 22:42:04 +0000
Received: by wyf23 with SMTP id 23so5450514wyf.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 15:41:58 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Wed,  6 Jul 2011 00:14:48 +0200
Message-Id: <1309904090-9100-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] spi: add bits_per_word to proxy structure
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

During the creation of a new spi device, we need to
have the possiblility to give the bits_per_word value
to master->setup.

As a matter of fact, spi master could check the spi
device bits_per_word and compare this value against its
capabilities.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/spi/spi.c |    1 +
 include/spi/spi.h |    1 +
 2 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 6456897..5f3272b 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -75,6 +75,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
 	proxy->chip_select = chip->chip_select;
 	proxy->max_speed_hz = chip->max_speed_hz;
 	proxy->mode = chip->mode;
+	proxy->bits_per_word = chip->bits_per_word;
 	proxy->dev.platform_data = chip->platform_data;
 	strcpy(proxy->dev.name, chip->name);
 	proxy->dev.type_data = proxy;
diff --git a/include/spi/spi.h b/include/spi/spi.h
index ac2013a..948e050 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -15,6 +15,7 @@ struct spi_board_info {
 	 * where the default of SPI_CS_HIGH = 0 is wrong.
 	 */
 	u8	mode;
+	u8	bits_per_word;
 	void	*platform_data;
 };
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
