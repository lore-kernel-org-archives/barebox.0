Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out203-205-251-82.mail.qq.com ([203.205.251.82] helo=qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJuoo-0005Tr-Ix
 for barebox@lists.infradead.org; Thu, 02 Apr 2020 08:03:20 +0000
From: you xiaojie <84640926@qq.com>
Date: Thu, 02 Apr 2020 16:02:57 +0800
Message-ID: <52873740.qfR1zLsytf@allan-home>
In-Reply-To: <20200402074154.GF27288@pengutronix.de>
References: <1833400.Y7EmvgfLYE@allan-home> <2790507.TRZ85U3XWg@allan-home>
 <20200402074154.GF27288@pengutronix.de>
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
Subject: Re: bug report: fail to boot barebox in marvell 6281 board
To: barebox@lists.infradead.org

On Thursday, April 2, 2020 3:41:54 PM CST Sascha Hauer wrote:
> On Thu, Apr 02, 2020 at 03:03:41PM +0800, you xiaojie wrote:
> > the debugging message.
> > 
> > allan@allan-home:/media/allan/c6293bbf-6fa1-49ca-9b01-24855a810e0e/barebox
> > -
> > test/barebox$ ./scripts/kwboot -b ./images/barebox-huanshuo-hs50a.img -n
> > 15 -B 115200 -t /dev/ttyUSB0
> > Sending boot message. Please reboot the target...
> > Got expected NAKs
> > Sending boot image...
> > 
> >  86 %
> >  [......................................................................]
> >  89 %
> >  [......................................................................]
> >  91 %
> >  [......................................................................]
> >  93 %
> >  [......................................................................]
> >  96 %
> >  [......................................................................]
> >  98 % [.............................................]
> > 
> > [Type Ctrl-\ + c to quit]
> > uncompress.c: memory at 0x00000000, size 0x20000000
> > uncompress.c: enabling MMU, ttb @ 0x1ffe4000
> > uncompress.c: uncompressing barebox binary at 0x010053e0 (size 0x00057dfe)
> > to 0x1fe00000 (uncompressed size: 0x000a4ee0)
> > uncompress.c: jumping to uncompressed image at 0x1fe00000
> > start.c: memory at 0x00000000, size 0x20000000
> > start.c: found DTB in boarddata, copying to 0x1fdfcc40
> > start.c: initializing malloc pool at 0x0fefe620 (size 0x0fefe620)
> > start.c: starting barebox...
> > initcall-> globalvar_init+0x0/0x48
> 
> This looks all perfectly fine until here. I have no idea what goes wrong
> here. You need a binary.0 file for this board, right? Are you sure that
> works? Did you extract it from some working U-Boot?
> It might also be a toolchain related issue. Which toolchain are you
> using?
> 
> Sascha
binary.0? no I don't think so.for armada 370, need. for kirkwood,kwbimage.cfg 
complete such memory initialisation work. so there is no need binary.0 file. 
that is to see in images/Makefile. 
this is kwbimage from uboot setting registry  for mem init. also in 6281 
datasheet (publicly available on internet)
# SPDX-License-Identifier: GPL-2.0+
#
# (C) Copyright 2009
# Marvell Semiconductor <www.marvell.com>
# Written-by: Siddarth Gore <gores@marvell.com>
# Refer doc/README.kwbimage for more details about how-to configure
# and create kirkwood boot image
#

# Boot Media configurations
BOOT_FROM	nand
NAND_ECC_MODE	default
NAND_PAGE_SIZE	0x0800

# SOC registers configuration using bootrom header extension
# Maximum KWBIMAGE_MAX_CONFIG configurations allowed

# Configure RGMII-0/1 interface pad voltage to 1.8V
DATA 0xFFD100e0 0x1b1b9b9b

#Dram initalization for SINGLE x16 CL=5 @ 400MHz
DATA 0xFFD01400 0x43000c30	# DDR Configuration register
# bit13-0:  0xc30 (3120 DDR2 clks refresh rate)
# bit23-14: zero
# bit24: 1= enable exit self refresh mode on DDR access
# bit25: 1 required
# bit29-26: zero
# bit31-30: 01

DATA 0xFFD01404 0x37543000	# DDR Controller Control Low
# bit 4:    0=addr/cmd in smame cycle
# bit 5:    0=clk is driven during self refresh, we don't care for APX
# bit 6:    0=use recommended falling edge of clk for addr/cmd
# bit14:    0=input buffer always powered up
# bit18:    1=cpu lock transaction enabled
# bit23-20: 5=recommended value for CL=5 and STARTBURST_DEL disabled bit31=0
# bit27-24: 7= CL+2, STARTBURST sample stages, for freqs 400MHz, unbuffered 
DIMM
# bit30-28: 3 required
# bit31:    0=no additional STARTBURST delay

DATA 0xFFD01408 0x22125451	# DDR Timing (Low) (active cycles value +1)
# bit3-0:   TRAS lsbs
# bit7-4:   TRCD
# bit11- 8: TRP
# bit15-12: TWR
# bit19-16: TWTR
# bit20:    TRAS msb
# bit23-21: 0x0
# bit27-24: TRRD
# bit31-28: TRTP

DATA 0xFFD0140C 0x00000a33	#  DDR Timing (High)
# bit6-0:   TRFC
# bit8-7:   TR2R
# bit10-9:  TR2W
# bit12-11: TW2W
# bit31-13: zero required

DATA 0xFFD01410 0x000000cc	#  DDR Address Control
# bit1-0:   01, Cs0width=x8
# bit3-2:   10, Cs0size=1Gb
# bit5-4:   01, Cs1width=x8
# bit7-6:   10, Cs1size=1Gb
# bit9-8:   00, Cs2width=nonexistent
# bit11-10: 00, Cs2size =nonexistent
# bit13-12: 00, Cs3width=nonexistent
# bit15-14: 00, Cs3size =nonexistent
# bit16:    0,  Cs0AddrSel
# bit17:    0,  Cs1AddrSel
# bit18:    0,  Cs2AddrSel
# bit19:    0,  Cs3AddrSel
# bit31-20: 0 required

DATA 0xFFD01414 0x00000000	#  DDR Open Pages Control
# bit0:    0,  OpenPage enabled
# bit31-1: 0 required

DATA 0xFFD01418 0x00000000	#  DDR Operation
# bit3-0:   0x0, DDR cmd
# bit31-4:  0 required

DATA 0xFFD0141C 0x00000C52	#  DDR Mode
# bit2-0:   2, BurstLen=2 required
# bit3:     0, BurstType=0 required
# bit6-4:   4, CL=5
# bit7:     0, TestMode=0 normal
# bit8:     0, DLL reset=0 normal
# bit11-9:  6, auto-precharge write recovery ????????????
# bit12:    0, PD must be zero
# bit31-13: 0 required

DATA 0xFFD01420 0x00000040	#  DDR Extended Mode
# bit0:    0,  DDR DLL enabled
# bit1:    0,  DDR drive strenght normal
# bit2:    0,  DDR ODT control lsd (disabled)
# bit5-3:  000, required
# bit6:    1,  DDR ODT control msb, (disabled)
# bit9-7:  000, required
# bit10:   0,  differential DQS enabled
# bit11:   0, required
# bit12:   0, DDR output buffer enabled
# bit31-13: 0 required

DATA 0xFFD01424 0x0000F17F	#  DDR Controller Control High
# bit2-0:  111, required
# bit3  :  1  , MBUS Burst Chop disabled
# bit6-4:  111, required
# bit7  :  0
# bit8  :  1  , add writepath sample stage, must be 1 for DDR freq >= 300MHz
# bit9  :  0  , no half clock cycle addition to dataout
# bit10 :  0  , 1/4 clock cycle skew enabled for addr/ctl signals
# bit11 :  0  , 1/4 clock cycle skew disabled for write mesh
# bit15-12: 1111 required
# bit31-16: 0    required

DATA 0xFFD01428 0x00085520	# DDR2 ODT Read Timing (default values)
DATA 0xFFD0147C 0x00008552	# DDR2 ODT Write Timing (default values)

DATA 0xFFD01500 0x00000000	# CS[0]n Base address to 0x0
DATA 0xFFD01504 0x0FFFFFF1	# CS[0]n Size
# bit0:    1,  Window enabled
# bit1:    0,  Write Protect disabled
# bit3-2:  00, CS0 hit selected
# bit23-4: ones, required
# bit31-24: 0x0F, Size (i.e. 256MB)

DATA 0xFFD01508 0x10000000	# CS[1]n Base address to 256Mb
DATA 0xFFD0150C 0x0FFFFFF5	# CS[1]n Size 256Mb Window enabled for CS1

DATA 0xFFD01514 0x00000000	# CS[2]n Size, window disabled
DATA 0xFFD0151C 0x00000000	# CS[3]n Size, window disabled

DATA 0xFFD01494 0x00030000	#  DDR ODT Control (Low)
DATA 0xFFD01498 0x00000000	#  DDR ODT Control (High)
# bit1-0:  00, ODT0 controlled by ODT Control (low) register above
# bit3-2:  01, ODT1 active NEVER!
# bit31-4: zero, required

DATA 0xFFD0149C 0x0000E803	# CPU ODT Control
DATA 0xFFD01480 0x00000001	# DDR Initialization Control
#bit0=1, enable DDR init upon this register write


what is the register's base mem address for uboot or barebox?
where to define 0xffd00000 base address?



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
