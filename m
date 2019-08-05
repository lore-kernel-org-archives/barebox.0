Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubyT-0005ZV-UG
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:20:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Aug 2019 14:20:07 +0200
Message-Id: <20190805122015.19220-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/8] mtd: nand-mxs: Make ecc strength configurable via device
 tree
To: Barebox List <barebox@lists.infradead.org>

This series makes the ecc strength used by the mxs-nand controller
configurable via device tree. This feature can be used to reuse NAND
images on devices with different OOB sizes.

Sascha Hauer (8):
  mtd: nand-mxs: consistently rename struct nand_chip * to "chip"
  mtd: nand-mxs: calculate ecc_strength only once
  mtd: nand-mxs: Make locally used variable static
  mtd: nand-mxs: change API between NAND driver and fcb code
  mtd: nand-mxs: pass mtd_info to mxs_nand_get_mark_offset()
  mtd: nand-mxs: inline only once used function
  mtd: nand: Add function to parse device tree properties
  mtd: nand-mxs: Make ecc strength configurable via device tree

 common/imx-bbu-nand-fcb.c    |  15 +-
 drivers/mtd/nand/nand_base.c |  27 ++++
 drivers/mtd/nand/nand_mxs.c  | 273 ++++++++++++++++++++---------------
 include/linux/mtd/nand.h     |   2 +
 include/linux/mtd/nand_mxs.h |   7 +-
 5 files changed, 196 insertions(+), 128 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
