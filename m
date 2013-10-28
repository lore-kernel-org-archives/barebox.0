Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ValWG-0003ZM-Td
 for barebox@lists.infradead.org; Mon, 28 Oct 2013 12:02:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2013 13:01:40 +0100
Message-Id: <1382961700-8833-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1382961700-8833-1-git-send-email-s.hauer@pengutronix.de>
References: <1382961700-8833-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] mtd: m25p80: Allow to specify devicename via devicetree
 alias
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/devices/m25p80.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 429ddf6..1e3bc93 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -808,6 +808,8 @@ static int m25p_probe(struct device_d *dev)
 	struct flash_info		*info = NULL;
 	unsigned			i;
 	unsigned			do_jdec_probe = 1;
+	char				*flashname = NULL;
+	int				device_id;
 
 	/* Platform data helps sort out which chip type we have, as
 	 * well as how this board partitions it.  If we don't have
@@ -876,10 +878,19 @@ static int m25p_probe(struct device_d *dev)
 		write_sr(flash, 0);
 	}
 
-	if (data && data->name)
-		flash->mtd.name = data->name;
-	else
-		flash->mtd.name = "m25p";
+	device_id = DEVICE_ID_SINGLE;
+	if (dev->device_node) {
+		const char *alias = of_alias_get(dev->device_node);
+		if (alias)
+			flashname = xstrdup(alias);
+	} else if (data && data->name) {
+		flashname = data->name;
+	}
+
+	if (!flashname) {
+		device_id = DEVICE_ID_DYNAMIC;
+		flashname = "m25p";
+	}
 
 	flash->mtd.type = MTD_NORFLASH;
 	flash->mtd.writesize = 1;
@@ -942,7 +953,7 @@ static int m25p_probe(struct device_d *dev)
 				flash->mtd.eraseregions[i].erasesize / 1024,
 				flash->mtd.eraseregions[i].numblocks);
 
-	return add_mtd_device(&flash->mtd, flash->mtd.name, DEVICE_ID_DYNAMIC);
+	return add_mtd_device(&flash->mtd, flashname, device_id);
 }
 
 static __maybe_unused struct of_device_id m25p80_dt_ids[] = {
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
