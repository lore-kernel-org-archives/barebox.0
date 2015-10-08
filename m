Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x233.google.com ([2a00:1450:400c:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkJKp-0001kz-Qh
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 22:06:48 +0000
Received: by wiclk2 with SMTP id lk2so47135959wic.0
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 15:06:26 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  9 Oct 2015 00:06:02 +0200
Message-Id: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 00/17] Armada 370/XP NAND driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

This patch set adds support for the NAND flash controller found
on Marvell Armada 370/XP SoCs. The IP is the same as for PXA3xx
SoCs, so we can also reuse the driver. However, this needs some
rework of the existing driver.

First 4 patches free nand_mrvl_nfc from mach-pxa dependency by
adding common clock support to mach-pxa and rework the driver
to get rid of pxa_get_nandclk().

The next 7 patches comprise cleanup and preparation for the
addition of Armada 370/XP version of the NAND controller IP.

Then there is 5 patches adding features found on Armada XP
NAND controller only.

Finally, the last patch adds optimized timings for the NAND
flash found on Lenovo ix4-300d.

This series is, of course, untested on mach-pxa and needs a
Tested-by. I have tested the new driver on Armada XP based
Lenovo ix4-300d and todays -next.

Sebastian Hesselbarth (17):
  arm: pxa: Prepare for NAND clkdev lookup on PXA3xx
  mtd: nand_mrvl_nfc: Use common clock for core clock
  mtd: nand: Clarify Marvell Orion Kconfig prompt
  arm: pxa: Remove pxa_get_nandclk()
  mtd: nand_mrvl_nfc: Remove keep_config
  mtd: nand_mrvl_nfc: Clear OOB data with 0xff instead of 0x00
  mtd: nand_mrvl_nfc: Use Auto Read Status on program/erase
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
 arch/arm/mach-pxa/Kconfig              |   2 +
 arch/arm/mach-pxa/include/mach/clock.h |   1 -
 arch/arm/mach-pxa/speed-pxa3xx.c       |  18 ++-
 drivers/mtd/nand/Kconfig               |   9 +-
 drivers/mtd/nand/nand_mrvl_nfc.c       | 226 ++++++++++++++++++++++++++++++---
 6 files changed, 229 insertions(+), 28 deletions(-)

---
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
