Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYmJG-0002xe-Vy
	for barebox@lists.infradead.org; Mon, 20 Jun 2011 21:47:12 +0000
Received: by fxm14 with SMTP id 14so881030fxm.36
	for <barebox@lists.infradead.org>; Mon, 20 Jun 2011 14:47:00 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Mon, 20 Jun 2011 23:46:32 +0200
Message-Id: <1308606394-7510-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [RFC PATCH 1/3] spi: add platform_data pointer to spi_board_info
To: barebox@lists.infradead.org

In the spi layer this pointer will be assigned to the
platform_data pointer of the new spi device, thus it can
be accessed in the drivers 'probe' handler.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/spi/spi.c |    1 +
 include/spi/spi.h |    4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 4560259..588c263 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -75,6 +75,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
 	proxy->chip_select = chip->chip_select;
 	proxy->max_speed_hz = chip->max_speed_hz;
 	proxy->mode = chip->mode;
+	proxy->dev.platform_data = chip->platform_data;
 	strcpy(proxy->dev.name, chip->name);
 	proxy->dev.type_data = proxy;
 	status = register_device(&proxy->dev);
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 8dce8db..c76f3b7 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -14,8 +14,8 @@ struct spi_board_info {
 	/* mode becomes spi_device.mode, and is essential for chips
 	 * where the default of SPI_CS_HIGH = 0 is wrong.
 	 */
-	u8		mode;
-
+	u8	mode;
+	void	*platform_data;
 };
 
 /**
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
