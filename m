Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khnEN-00053G-Lp
 for barebox@lists.infradead.org; Wed, 25 Nov 2020 05:20:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Nov 2020 06:20:07 +0100
Message-Id: <20201125052011.20660-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 0/4] mtd: nand: Add special fixup kernel partitions for Denali
To: Barebox List <barebox@lists.infradead.org>

In the Denali NAND driver the partitions device node to fixup
for the kernel changed over time. This used to be a direct subnode
of the controller node, but Kernel v5.2 introduced an additional
subnode between the controller node and the partitions node.
Until then the binding complies with the current generic NAND
binding which has subnodes for each NAND chip under the controller
node.
We'll likely see that more often in the future. For now solve this
at driver level, but we might want to solve that in mtd code some
day.

Sascha

Sascha Hauer (4):
  mtd: Remove set but not used of_path
  of: partitions: export of_fixup_partitions
  mtd: Add hook to fix up kernel partitions
  mtd: nand: denali: cope with kernel device trees without chip subnodes

 drivers/mtd/core.c                | 31 +++++++++++++++--
 drivers/mtd/nand/nand_denali_dt.c | 57 +++++++++++++++++++++++++++++++
 drivers/of/partition.c            | 37 +++++++++++---------
 include/linux/mtd/mtd.h           |  3 +-
 include/of.h                      |  6 ++++
 5 files changed, 115 insertions(+), 19 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
