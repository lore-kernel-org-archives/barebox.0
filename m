Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9zkK-0002sq-5R
 for barebox@lists.infradead.org; Sun, 02 Feb 2014 16:18:13 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1W9zjt-0008Gr-Cr
 for barebox@lists.infradead.org; Sun, 02 Feb 2014 17:17:45 +0100
Received: from static-82-85-234-51.clienti.tiscali.it ([82.85.234.51])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Sun, 02 Feb 2014 17:17:45 +0100
Received: from cristiano_dealti by static-82-85-234-51.clienti.tiscali.it with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Sun, 02 Feb 2014 17:17:45 +0100
From: Cristiano De Alti <cristiano_dealti@hotmail.com>
Date: Sun, 2 Feb 2014 16:17:22 +0000 (UTC)
Message-ID: <loom.20140202T170955-777@post.gmane.org>
References: <loom.20140128T004554-598@post.gmane.org>
 <20140128113311.GB16215@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: i.mx21 ads nor flash
To: barebox@lists.infradead.org

Sascha Hauer <s.hauer@...> writes:

> 
> On Mon, Jan 27, 2014 at 11:46:12PM +0000, Cristiano De Alti wrote:
> > Hi,
> >   I'm trying to revive an old i.mx21 ads board.
> > I've flashed barebox-2014.01.0 and the board boots.
> > Ethernet works and I'm able to boot Linux via tftp.
> > Adding CONFIG_NAND=y in the .config enables the 64MB NAND flash (why is it
> > not set in the board defconfig?) and I can erase it.
> 
> Amazing! I think this hasn't been tested for longer, I'm surprised that
> still so many things work :)
> 
> > Nice work, Barebox!
> > My question is about the NOR flash. The board has two banks of 8Mx16bit NOR
> > flash paralleled. So the data bus width is 32 bit and the capacity is 32MB.
> > The NOR is detected by Barebox:
> > 
> > cfi_flash cfi_flash0: found cfi flash at c8000000, size 33554432
> > 
> > and I can see the /dev/nor0 device:
> > 
> > crw-------   33554432 /dev/nor0
> > 
> > I can erase it but only up to 16M. For example, this works:
> > 
> > erase /dev/nor0 10M+6M
> > 
> > Anyway if I try to erase an area above 16M, e.g.:
> > 
> > erase /dev/nor0 16M+1k
> > 
> > or the whole device, e.g.:
> > 
> > erase /dev/nor0
> > 
> > the command fails with:
> > 
> > erase: Invalid argument
> > 
> > I've added printouts and the area I want to delete is past the last
eraseregion.
> > 
> > So I wonder how the units of the erase command are meant. If the unit is
> > byte, the command:
> > 
> > erase /dev/nor0 0+16M
> > 
> > should obviously mean "erase the first half of the whole flash".
> > But then the above commands shouldn't fail.
> > 
> > Alternatively, given that there are 2 16MB banks in parallel it could also
> > mean "erase 16MB in each bank" i.e. the whole flash.
> > 
> > I'm not sure what's happening.
> 
> erase /dev/nor0 0+32M
> or
> erase /dev/nor0
> 
> should both erase the whole flash and should both work for you. erase
> /dev/nor0 0+16M should erase the first half of the flash. You have
> encountered a bug somewhere.
> 
> Could you paste the output of 'devinfo cfi_flash0'? Also you could
> #define DEBUG ontop of drivers/mtd/nor/cfi_flash*.c. Please also use
> 'md -s /dev/nor0' and 'md -s /dev/nor 16M' which show a hexdump of the
> beginning of the flash and at 16MiB into the flash. you can write
> something to the flash using
> 
> memcpy -s /env/config -d /dev/nor0 0 0 1K
> (beginning of flash)
> 
> and
> 
> memcpy -s /env/config -d /dev/nor0 0 16M 1K
> (middle of flash)
> 
> Do these work and show a sane result on the flash?
> There may be a bug in the cfi flash driver, but it could also be
> that the Chipselect is misconfigured, check
> imx21_setup_eimcs(0, 0x00003E00, 0x00000E01);
> 
> I have no idea what's happening exactly, but I can say that the commands
> you used should behave as you expect.
> 
> Sascha
> 


Hi,
  Thanks for the useful information.
The following drivers/mtd/nor/cfi_flash.c patch should fix the NOR flash
issue on the imx21ads.
Basically I think we need to multiply the region erasesize and offset by the
number of NOR flash chips in parallel. It works for me.
The patch for mx21ads_defconfig just enables the NAND flash.

diff --git a/arch/arm/configs/mx21ads_defconfig
b/arch/arm/configs/mx21ads_defconfig
index 13c005b..4ffea76 100644
--- a/arch/arm/configs/mx21ads_defconfig
+++ b/arch/arm/configs/mx21ads_defconfig
@@ -1,7 +1,5 @@
 CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX21=y
 CONFIG_MACH_IMX21ADS=y
-CONFIG_IMX_CLKO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0xc3000000
 CONFIG_MALLOC_SIZE=0x2000000
@@ -13,14 +11,12 @@
CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/imx21ads/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
@@ -32,11 +28,13 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_CS8900=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_INTEL is not set
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_NAND=y
+CONFIG_NAND_IMX=y
+CONFIG_NAND_IMX_BBM=y
+CONFIG_FS_TFTP=y
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 71dd3c8..514eab5 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -404,9 +404,9 @@ static ulong flash_get_size (struct flash_info *info)
                                erase_region_count, erase_region_size);
 
                        region->offset = cur_offset;
-                       region->erasesize = erase_region_size;
+                       region->erasesize = erase_region_size * size_ratio;
                        region->numblocks = erase_region_count;
-                       cur_offset += erase_region_size * erase_region_count;
+                       cur_offset += erase_region_size * size_ratio *
erase_region_count;
 
                        /* increase the space malloced for the sector start
addresses */
                        info->start = xrealloc(info->start, sizeof(ulong) *
(erase_region_count + sect_cnt));



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
