Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBjzO-0006T6-VJ
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 11:52:59 +0000
Message-ID: <1391773939.5116.6.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 07 Feb 2014 12:52:19 +0100
In-Reply-To: <1391762000-19451-1-git-send-email-s.hauer@pengutronix.de>
References: <1391762000-19451-1-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: match of_modaliases
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Freitag, den 07.02.2014, 09:33 +0100 schrieb Sascha Hauer:
> Right now barebox does not match the "vendor,device" compatible entries
> in the devicetree. Implement this and also let the m25p80 driver match
> to the different flash types, not only "m25p80".
> 
This needs the attached minor tweak in the m25p80 driver to actually
work for the non-jedec compatible devices.

Otherwise
Tested-by: Lucas Stach <l.stach@pengutronix.de>

This removes the need for "spi: m25p80: detect non-jedec chips by using
DT compatible"

--------------------------------->8---------------------------------
From 53121d1eae60dbef3515f36c15a415cf736480d7 Mon Sep 17 00:00:00 2001
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 7 Feb 2014 12:45:21 +0100
Subject: [PATCH] spi: m25p80: make DT probing work

Just use the previously matched id_entry.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mtd/devices/m25p80.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index e6d8c05e904b..3efdd359a824 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -825,6 +825,7 @@ static int m25p_probe(struct device_d *dev)
 	unsigned			i;
 	unsigned			do_jdec_probe = 1;
 	char				*flashname = NULL;
+	const char			*typename = NULL;
 	int				device_id;
 
 	/* Platform data helps sort out which chip type we have, as
@@ -833,12 +834,17 @@ static int m25p_probe(struct device_d *dev)
 	 * newer chips, even if we don't recognize the particular chip.
 	 */
 	data = dev->platform_data;
-	if (data && data->type) {
+	if (data && data->type)
+		typename = data->type;
+	else if (dev->id_entry)
+		typename = dev->id_entry->name;
+
+	if (typename) {
 		const struct platform_device_id *plat_id;
 
 		for (i = 0; i < ARRAY_SIZE(m25p_ids) - 1; i++) {
 			plat_id = &m25p_ids[i];
-			if (strcmp(data->type, plat_id->name))
+			if (strcmp(typename, plat_id->name))
 				continue;
 			break;
 		}
@@ -851,7 +857,7 @@ static int m25p_probe(struct device_d *dev)
 			if (!info->jedec_id)
 				do_jdec_probe = 0;
 		} else
-			dev_warn(&spi->dev, "unrecognized id %s\n", data->type);
+			dev_warn(&spi->dev, "unrecognized id %s\n", typename);
 	}
 
 	if (do_jdec_probe) {
-- 
1.8.5.3

-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
