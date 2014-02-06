Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBR1C-0002jt-4O
 for barebox@lists.infradead.org; Thu, 06 Feb 2014 15:37:35 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1WBR0o-0004Nv-VE
 for barebox@lists.infradead.org; Thu, 06 Feb 2014 16:37:10 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  6 Feb 2014 16:37:10 +0100
Message-Id: <1391701030-18395-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1391701030-18395-1-git-send-email-l.stach@pengutronix.de>
References: <1391701030-18395-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] spi: m25p80: detect non-jedec chips by using DT compatible
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mtd/devices/m25p80.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 2275a232c4f9..8a5ac494831f 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -29,6 +29,9 @@
 #include <linux/mtd/cfi.h>
 #include <linux/mtd/mtd.h>
 
+/* driver data flags */
+#define FLAG_PROBE_DT	0x01
+
 /* Flash opcodes. */
 #define	OPCODE_WREN		0x06	/* Write enable */
 #define	OPCODE_RDSR		0x05	/* Read status register */
@@ -859,6 +862,24 @@ static int m25p_probe(struct device_d *dev)
 			dev_warn(&spi->dev, "unrecognized id %s\n", data->type);
 	}
 
+	/*
+	 * Some non-jedec conformant chips can only be recognized by their
+	 * DT compatible string.
+	 */
+	if (dev->of_id_entry && dev->of_id_entry->data == FLAG_PROBE_DT) {
+		for (i = 0; i < ARRAY_SIZE(m25p_ids) - 1; i++) {
+			if (strcmp(dev->of_id_entry->compatible, m25p_ids[i].name))
+				continue;
+
+			id = &m25p_ids[i];
+			info = (void *)id->driver_data;
+
+			if (!info->jedec_id)
+				do_jdec_probe = 0;
+			break;
+		}
+	}
+
 	if (do_jdec_probe) {
 		const struct spi_device_id *jid;
 
@@ -981,6 +1002,10 @@ static __maybe_unused struct of_device_id m25p80_dt_ids[] = {
 	{
 		.compatible = "m25p80",
 	}, {
+		.compatible = "mr25h10", .data = FLAG_PROBE_DT,
+	}, {
+		.compatible = "mr25h256", .data = FLAG_PROBE_DT,
+	}, {
 		/* sentinel */
 	}
 };
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
