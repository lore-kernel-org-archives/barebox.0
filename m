Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SeLqi-0003RV-5j
 for barebox@lists.infradead.org; Tue, 12 Jun 2012 07:49:12 +0000
Received: by ggcs5 with SMTP id s5so3502167ggc.36
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2012 00:49:09 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 12 Jun 2012 09:49:09 +0200
Message-ID: <CAD9ZU8D0tcHKiqrgPf0oyhJjDsMDV3yNiRJM+NjiUf6AzHLaFQ@mail.gmail.com>
From: Gabriel Tisan <gabriel.tisan@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: UnCorrectable RS-ECC Error
To: barebox@lists.infradead.org

Hi !

I try to support a new flash from Micron(MT29F4G08ABAEA) with 4k page size,
64 pages per block and 224 oob on a custom board based on
freescale-mx35-3-stack.

I managed to run the barebox from RAM, flash is right detected, bbts are found,
but I get some errors "UnCorrectable RS-ECC Error" when I read from flash.
Do you have any suggestions ?

Here is the log together with some debug messages:
-------------------------------------------------------------------------------
barebox 2012.04.0-test-00050-gc9641e4-dirty (Jun 11 2012 - 17:38:08)
Board: mx35custom
found uid: 0x3277d9f2786b0022ff00ff00ff00ff00
mtd->writesize:4096, mtd->oobsize:224, mtd->erasesize:262144
NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron NAND 512MiB
3,3V 8-bit)
host->eccsize:8 NFC_V1_V2_CONFIG1:0xA08
CCM_RCSR: 0x1AC00B00
NFC_V2_SPAS:0x6D
mtd->oobavail: 2547255511 chip->ecc.steps: 8 chip->ecc.total: 0

Bad block table found at page 131008, version 0x01
Bad block table found at page 130944, version 0x01

imx-ipu-fb@imx-ipu-fb0: i.MX Framebuffer driver

Malloc space: 0x86f00000 -> 0x87efffff (size 16 MB)
Stack space : 0x86ef8000 -> 0x86f00000 (size 32 kB)

UnCorrectable RS-ECC Error
...
UnCorrectable RS-ECC Error (comes 8 times in total)
mtd->ecc_stats.failed: 8, mtd->ecc_stats.corrected: 0
err -74

UnCorrectable RS-ECC Error
...
UnCorrectable RS-ECC Error (comes 136 times in total)
mtd->ecc_stats.failed: 144, mtd->ecc_stats.corrected: 0
err -74

wrong crc on env

no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
unable to read /env/splash.bmp

Hit any key to stop autoboot:  3 2 1 0
unable to read /env/splash.bmp
Unknown OS filetype (try -f)

uboot:/ cat /dev/env0

UnCorrectable RS-ECC Error
...
UnCorrectable RS-ECC Error (comes 8 times in total)
mtd->ecc_stats.failed: 152, mtd->ecc_stats.corrected: 0
err -74

uboot:/
-------------------------------------------------------------------------------

Thanks,
Gabriel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
