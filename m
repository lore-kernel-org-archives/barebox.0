Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ueh9b-0002QT-Ti
 for barebox@lists.infradead.org; Tue, 21 May 2013 07:38:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 May 2013 09:38:12 +0200
Message-Id: <1369121895-11282-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369121895-11282-1-git-send-email-s.hauer@pengutronix.de>
References: <1369121895-11282-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] spi: improve devicetree support
To: barebox@lists.infradead.org

- zero spi_board_info structure to not accidently pass
  unitilialized fields
- parse spi-max-frequency property from devicetree
- parse mode flags from devicetree

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/spi.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index d58b664..f460a7a 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -108,9 +108,20 @@ void spi_of_register_slaves(struct spi_master *master, struct device_node *node)
 	struct property *reg;
 
 	device_node_for_nach_child(node, n) {
-		chip.name = n->name;
+		memset(&chip, 0, sizeof(chip));
+		chip.name = xstrdup(n->name);
 		chip.bus_num = master->bus_num;
-		chip.max_speed_hz = 300000; /* FIXME */
+		/* Mode (clock phase/polarity/etc.) */
+		if (of_find_property(n, "spi-cpha"))
+			chip.mode |= SPI_CPHA;
+		if (of_find_property(n, "spi-cpol"))
+			chip.mode |= SPI_CPOL;
+		if (of_find_property(n, "spi-cs-high"))
+			chip.mode |= SPI_CS_HIGH;
+		if (of_find_property(n, "spi-3wire"))
+			chip.mode |= SPI_3WIRE;
+		of_property_read_u32(n, "spi-max-frequency",
+				&chip.max_speed_hz);
 		reg = of_find_property(n, "reg");
 		if (!reg)
 			continue;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
