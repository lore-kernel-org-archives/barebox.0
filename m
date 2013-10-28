Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ValWG-0003ZH-Ta
 for barebox@lists.infradead.org; Mon, 28 Oct 2013 12:02:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2013 13:01:35 +0100
Message-Id: <1382961700-8833-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] spi: support dynamic bus ids
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de

When probing spi bus masters from devicetree they got a bus_num
of -1. This works with a single bus master only since all bus masters
had the same bus_num. Detect this and dynamically assign a valid
bus_num.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/spi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index d273050..f035cc2 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -214,6 +214,7 @@ static LIST_HEAD(spi_master_list);
  */
 int spi_register_master(struct spi_master *master)
 {
+	static int dyn_bus_id = (1 << 15) - 1;
 	int			status = -ENODEV;
 
 	debug("%s: %s:%d\n", __func__, master->dev->name, master->dev->id);
@@ -224,6 +225,10 @@ int spi_register_master(struct spi_master *master)
 	if (master->num_chipselect == 0)
 		return -EINVAL;
 
+	/* convention:  dynamically assigned bus IDs count down from the max */
+	if (master->bus_num < 0)
+		master->bus_num = dyn_bus_id--;
+
 	list_add_tail(&master->list, &spi_master_list);
 
 	spi_of_register_slaves(master);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
