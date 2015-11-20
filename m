Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x230.google.com ([2a00:1450:400c:c09::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzrUA-0003yb-KI
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:49 +0000
Received: by wmww144 with SMTP id w144so33994998wmw.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:20 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:35:53 +0100
Message-Id: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 00/19] Armada 370/XP NAND driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

This is v2 of the patch set that adds support for the NAND flash
controller found on Marvell Armada 370/XP SoCs. The IP is the same
as for PXA3xx SoCs, so we can also reuse the driver. However, this
needs some rework of the existing driver.

Patch 1 imports some mtd OF helpers from Linux for ECC propery
parsing.

Patch 2 clarifies Marvell Orion NAND Kconfig entry to distinguish
it from Armada 370/XP NAND support in PXA3xx NAND.

Patches 3-6 free nand_mrvl_nfc from mach-pxa dependency by
adding common clock support to mach-pxa and rework the driver
to get rid of pxa_get_nandclk().

Patches 7-13 comprise cleanup and preparation for the
addition of Armada 370/XP version of the NAND controller IP.

Patches 14-18 add features found on Armada XP NAND controller
only.

Finally, Patch 19 adds optimized timings for the NAND flash
found on Lenovo ix4-300d.

The series is based on today's next with Robert's patiently
confirmed Tested-by on mach-pxa. I have tested this on IX4.

Sebastian Hesselbarth (19):
  of: mtd: Import of_get_nand_ecc_{step_size,strength} from Linux
  mtd: nand: Clarify Marvell Orion Kconfig prompt
  arm: pxa: Prepare for NAND clkdev lookup on PXA3xx
  arm: pxa: Add clock for Zylonite NFC
  mtd: nand_mrvl_nfc: Use common clock for core clock
  arm: pxa: Remove pxa_get_nandclk()
  mtd: nand_mrvl_nfc: Clear OOB data with 0xff instead of 0x00
  mtd: nand_mrvl_nfc: Use Auto Read Status on program/erase
  mtd: nand_mrvl_nfc: Protect mrvl_nand_probe_dt
  mtd: nand_mrvl_nfc: Fix num-cs property parsing
  mtd: nand_mrvl_nfc: Get ecc parameters from DT
  mtd: nand_mrvl_nfc: Prepare for different HW ECC strengths
  mtd: nand_mrvl_nfc: Add hwflags to distinguish different HW versions
  mtd: nand_mrvl_nfc: Add support for 4bit BCH HW ECC
  mtd: nand_mrvl_nfc: Add support for 8bit BCH HW ECC
  mtd: nand_mrvl_nfc: Add support for HW BCH ECC
  mtd: nand_mrvl_nfc: Add support for NDCB3 register
  mtd: nand_mrvl_nfc: Add support for Marvell Armada 370/XP
  mtd: nand_mrvl_nfc: Add optimized timings for Samsung K9K8G08U

 arch/arm/Kconfig                       |   1 +
 arch/arm/boards/zylonite/board.c       |   7 +
 arch/arm/mach-pxa/Kconfig              |   2 +
 arch/arm/mach-pxa/include/mach/clock.h |   1 -
 arch/arm/mach-pxa/speed-pxa3xx.c       |  20 ++-
 drivers/mtd/nand/Kconfig               |   9 +-
 drivers/mtd/nand/nand_mrvl_nfc.c       | 236 +++++++++++++++++++++++++++++++--
 drivers/of/of_mtd.c                    |  34 +++++
 include/of_mtd.h                       |   2 +
 9 files changed, 289 insertions(+), 23 deletions(-)

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
