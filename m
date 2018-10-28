Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsTh-0002IP-OK
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:20:11 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbeJ1VTwPbQWF (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:19:52 +0100
Date: Sun, 28 Oct 2018 22:19:47 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028211947.GA14788@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 00/16] NAND update (1st step)
To: barebox@lists.infradead.org

The ultimate goal we are still quite far away is to update MTD subsystem
to something more recent. As it is rather hard to accomplish by simply
importing core files from linux-4.19 as there are many NAND drivers
not even present in mainline kernel in current (barebox) form, let's
choose incremental updating.

This patchset is rather selfish (and I'm sorry for that); its sole
purpose is being able to use Toshiba NAND (needing 8bit ECC) on
AT91SAM9G20 based board. This is also the only board I was able to
do runtime testing. To do this "mtd: atmel_nand: Add per board ECC
setup" patch is introduced. This shall be considered temporary
solution. As MTD core will be updated, we can import rewritten
Atmel NAND driver.

There more in queue, most notably mtd_ooblayout_ops conversion,
but let's focus on this serie first :)

Special thanks goes to Boris Brezillon for guiding me though pitfalls
of NAND devices while debugging Toshiba NAND support in Barebox.

Comments (or even help with fixes) very welcome, this will be likely
a bit painfull update.

Ladislav Michl (16):
  mtd: nand: refactor chip->block_markbad interface
  mtd: nand: remove multiplied-by-2 block logic
  mtd: nand: hide in-memory BBT implementation details
  mtd: nand: remove NAND_BBT_SCANEMPTY
  mtd: nand: Request strength instead of bytes for soft BCH
  mtd: atmel_nand: Add per board ECC setup
  mtd: nand: simplify nand_bch_init() usage
  mtd: nand_bbt: kill NAND_BBT_SCANALLPAGES
  mtd: nand_bbt: handle error case for nand_create_badblock_pattern()
  mtd: nand_bbt: make nand_scan_bbt() static
  mtd: nand_bbt: unify/fix error handling in nand_scan_bbt()
  mtd: nand_bbt: Move BBT block selection logic out of write_bbt()
  mtd: nand_bbt: scan for next free bbt block if writing bbt fails
  mtd: nand: Kill the chip->scan_bbt() hook
  mtd: nand: Kill cellinfo
  mtd: nand: detect OOB size for Toshiba 24nm raw SLC

 arch/arm/mach-at91/include/mach/board.h |   2 +
 drivers/mtd/nand/atmel_nand.c           |   3 +
 drivers/mtd/nand/nand_base.c            | 274 +++++++++--------
 drivers/mtd/nand/nand_bbt.c             | 385 ++++++++++++++----------
 drivers/mtd/nand/nand_bch.c             |  27 +-
 drivers/mtd/nand/nand_imx_bbm.c         |   2 +-
 drivers/mtd/nand/nand_mxs.c             |  27 +-
 drivers/mtd/nand/nand_omap_gpmc.c       |   1 -
 include/linux/mtd/bbm.h                 |   4 -
 include/linux/mtd/nand.h                |  13 +-
 include/linux/mtd/nand_bch.h            |   8 +-
 11 files changed, 415 insertions(+), 331 deletions(-)

-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
