Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkPm7-0006XD-Q1
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 06:03:56 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Thu, 15 Sep 2016 08:03:26 +0200
Message-Id: <1473919406-19038-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH] mtd: make sure address-cells/size-cells are set when adding
 partition nodes
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

address-cells/size-cells can either be set to 1 or 2 for 32 or 63 bit
addresses respectively. Barebox currently writes 32 bit addresses.
This makes sure that address-cells/size-cells are both set and have the
correct value.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---

Hi,

this is just a minor fix. What is really needed it support for 64 bit
addressing. Also, the bindings documentation says that all partitions
should be in a 'partitions' sub node. The main question here is probably
which kernel version introduced these features and what should be supported
by barebox.

Michael

 drivers/mtd/core.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 6d04b8855387..8d0e83415ae7 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -575,6 +575,14 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 		of_delete_node(part);
 	}
 
+	ret = of_property_write_u32(np, "#address-cells", 1);
+	if (ret)
+		return ret;
+
+	ret = of_property_write_u32(np, "#size-cells", 1);
+	if (ret)
+		return ret;
+
 	list_for_each_entry(partmtd, &mtd->partitions, partitions_entry) {
 		int na, ns, len = 0;
 		char *name = basprintf("partition@%0llx",
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
