Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNlJY-0007Ln-4e
 for barebox@lists.infradead.org; Tue, 08 Nov 2011 13:02:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2011 14:01:43 +0100
Message-Id: <1320757313-12568-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] OMAP gpmc nand
To: barebox@lists.infradead.org

The following series contains several improvements to the OMAP gpmc
nand driver. The goal was to implement the reading of data in the
omap4 romcode ecc mode, but this series also contains some general
fixes to the driver found along the way.

Sascha

Sascha Hauer (10):
      mtd nand omap: use blocknum calculation to where it's used
      mtd nand omap: factor out bch correct function
      mtd nand omap: factor out hamming correct function
      mtd nand omap: call ecc calculate function outside omap_correct_bch
      mtd nand omap: fail on bch decode failure
      mtd nand omap: use register defines for ecc registers
      mtd nand omap: make debugging output more useful
      mtd nand omap: factor out an internal __omap_calculate_ecc function
      mtd nand omap: add read function for the OMAP4 romcode ecc mode
      mtd nand omap: use NAND_OWN_BUFFERS option

 drivers/mtd/nand/nand_omap_gpmc.c |  396 +++++++++++++++++++++++++------------
 1 files changed, 267 insertions(+), 129 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
