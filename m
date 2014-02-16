Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEtXa-0004b9-M3
 for barebox@lists.infradead.org; Sun, 16 Feb 2014 04:41:21 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Feb 2014 08:40:47 +0400
Message-Id: <1392525650-5551-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1392525650-5551-1-git-send-email-shc_work@mail.ru>
References: <1392525650-5551-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 4/7] spi: altera_spi: Remove redundant assignment
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/spi/altera_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
index 60e124f..8803d9e 100644
--- a/drivers/spi/altera_spi.c
+++ b/drivers/spi/altera_spi.c
@@ -112,7 +112,7 @@ static void altera_spi_cs_inactive(struct spi_device *spi)
 static unsigned altera_spi_do_xfer(struct spi_device *spi, struct spi_transfer *t)
 {
 	struct altera_spi *altera_spi = container_of(spi->master, struct altera_spi, master);
-	int word_len = spi->bits_per_word;
+	int word_len;
 	unsigned retval = 0;
 	u32 txval;
 	u32 rxval;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
