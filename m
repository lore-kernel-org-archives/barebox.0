Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.mail.ru ([94.100.176.131])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeIPB-0003yE-UA
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 06:17:38 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 27 Apr 2014 10:17:07 +0400
Message-Id: <1398579427-24306-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1398579427-24306-1-git-send-email-shc_work@mail.ru>
References: <1398579427-24306-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] SPI: i.MX: Remove redundant assignment
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/spi/imx_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 45461bd..7a347f9 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -430,7 +430,7 @@ static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
 static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 {
 	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
-	struct spi_transfer *t = NULL;
+	struct spi_transfer *t;
 
 	imx->chipselect(spi, 1);
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
