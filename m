Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YmfHI-0002ei-RA
 for barebox@lists.infradead.org; Mon, 27 Apr 2015 09:24:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Apr 2015 11:24:10 +0200
Message-Id: <1430126650-6382-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: partition: Fix OF partition fixup
To: Barebox List <barebox@lists.infradead.org>
Cc: ukl@pengutronix.de

To get the number of address cells and size cells we have to use
the newly created partition node, not the parent device node. The
parent device node returns the address/size cells of the controller
node, not the partition node.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 63b1e4a..431114b 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -520,8 +520,8 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 		if (!p)
 			return -ENOMEM;
 
-		na = of_n_addr_cells(np);
-		ns = of_n_size_cells(np);
+		na = of_n_addr_cells(part);
+		ns = of_n_size_cells(part);
 
 		of_write_number(tmp + len, partmtd->master_offset, na);
 		len += na * 4;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
