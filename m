Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f175.google.com ([209.85.217.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyzzo-00032G-NB
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 07:16:13 +0000
Received: by mail-lb0-f175.google.com with SMTP id n3so1825556lbo.6
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 23:16:08 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 26 Jan 2013 11:28:08 +0400
Message-Id: <1359185288-10372-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] spi: fix compiler warning
To: barebox@lists.infradead.org

Fixes:
 drivers/spi/spi.c:59: warning: no previous prototype for 'spi_new_device'

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/spi/spi.h |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index d6570a4..fa76e9b 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -342,6 +342,8 @@ spi_transfer_del(struct spi_transfer *t)
 
 int spi_sync(struct spi_device *spi, struct spi_message *message);
 
+struct spi_device *spi_new_device(struct spi_master *master,
+				  struct spi_board_info *chip);
 int spi_register_master(struct spi_master *master);
 
 #ifdef CONFIG_SPI
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
