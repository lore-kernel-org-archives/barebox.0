Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QyHIn-0005TM-20
	for barebox@lists.infradead.org; Tue, 30 Aug 2011 05:56:02 +0000
Received: by bke17 with SMTP id 17so5532860bke.36
	for <barebox@lists.infradead.org>; Mon, 29 Aug 2011 22:55:59 -0700 (PDT)
Message-Id: <adfb6d53873eef4cb092b80728c7afed13224d08.1314683390.git.fercerpav@gmail.com>
In-Reply-To: <3c2cf8578f00f7200d39dc396856cb8a63e48d4d.1314683390.git.fercerpav@gmail.com>
References: <3c2cf8578f00f7200d39dc396856cb8a63e48d4d.1314683390.git.fercerpav@gmail.com>
From: Paul Fertser <fercerpav@gmail.com>
Date: Mon, 29 Aug 2011 16:39:53 +0400
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
Subject: [RFC][PATCH 2/3] spi: enfore default bits_per_word value
To: barebox@lists.infradead.org

Documentation says it should default to 8 when not specified
explicitly by the device data.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 drivers/spi/spi.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 82393ea..7a8aed4 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -75,7 +75,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
 	proxy->chip_select = chip->chip_select;
 	proxy->max_speed_hz = chip->max_speed_hz;
 	proxy->mode = chip->mode;
-	proxy->bits_per_word = chip->bits_per_word;
+	proxy->bits_per_word = chip->bits_per_word ? chip->bits_per_word : 8;
 	proxy->dev.platform_data = chip->platform_data;
 	strcpy(proxy->dev.name, chip->name);
 	proxy->dev.type_data = proxy;
-- 
1.5.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
