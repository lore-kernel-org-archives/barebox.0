Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z9RQx-0007wT-3C
 for barebox@lists.infradead.org; Mon, 29 Jun 2015 05:16:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Jun 2015 07:16:21 +0200
Message-Id: <1435554981-30388-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435554981-30388-1-git-send-email-s.hauer@pengutronix.de>
References: <1435554981-30388-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: m25p80: make flash_name const
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/devices/m25p80.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 231d139..794c9db 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -233,7 +233,7 @@ static int m25p_probe(struct device_d *dev)
 	struct m25p			*flash;
 	struct spi_nor			*nor;
 	enum read_mode mode =		SPI_NOR_NORMAL;
-	char				*flash_name = NULL;
+	const char			*flash_name = NULL;
 	int				device_id;
 	int ret;
 
@@ -277,13 +277,10 @@ static int m25p_probe(struct device_d *dev)
 		return ret;
 
 	device_id = DEVICE_ID_SINGLE;
-	if (dev->device_node) {
-		const char *alias = of_alias_get(dev->device_node);
-		if (alias)
-			flash_name = xstrdup(alias);
-	} else if (data && data->name) {
+	if (dev->device_node)
+		flash_name = of_alias_get(dev->device_node);
+	else if (data && data->name)
 		flash_name = data->name;
-	}
 
 	if (!flash_name) {
 		device_id = DEVICE_ID_DYNAMIC;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
