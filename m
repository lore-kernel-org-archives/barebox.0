Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4as9-0008K8-Mf
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 20:20:46 +0000
Received: by lbbwc1 with SMTP id wc1so8789253lbb.2
 for <barebox@lists.infradead.org>; Mon, 15 Jun 2015 13:20:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 15 Jun 2015 23:22:37 +0300
Message-Id: <1434399757-19360-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] mtd: m25p80: add Spansion S25FL204K support
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Spansion S25FL204K is a 4-Mbit 3.0V Serial Flash Memory
with Uniform 4 kB Sectors.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/mtd/devices/m25p80.c  | 2 +-
 drivers/mtd/spi-nor/spi-nor.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index c941767..fb727bb 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -193,7 +193,7 @@ static const struct platform_device_id m25p_ids[] = {
 	{"s25fl512s"},  {"s70fl01gs"},  {"s25sl12800"}, {"s25sl12801"},
 	{"s25fl129p0"}, {"s25fl129p1"}, {"s25sl004a"},  {"s25sl008a"},
 	{"s25sl016a"},  {"s25sl032a"},  {"s25sl064a"},  {"s25fl008k"},
-	{"s25fl016k"},  {"s25fl064k"},  {"s25fl132k"},
+	{"s25fl016k"},  {"s25fl064k"},  {"s25fl132k"},	{"s25fl204k"},
 	{"sst25vf040b"},{"sst25vf080b"},{"sst25vf016b"},{"sst25vf032b"},
 	{"sst25vf064c"},{"sst25wf512"}, {"sst25wf010"}, {"sst25wf020"},
 	{"sst25wf040"},
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index c85ed34..db347a5 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -596,6 +596,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "s25fl016k",  INFO(0xef4015,      0,  64 * 1024,  32, SECT_4K) },
 	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128, SECT_4K) },
 	{ "s25fl132k",  INFO(0x014016,      0,  64 * 1024,  64, 0) },
+	{ "s25fl204k",  INFO(0x014013,      0,  64 * 1024,   8, SECT_4K) },
 
 	/* SST -- large erase sizes are "overlays", "sectors" are 4K */
 	{ "sst25vf040b", INFO(0xbf258d, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) },
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
