Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PujTN-0002dY-4l
	for barebox@lists.infradead.org; Wed, 02 Mar 2011 10:40:02 +0000
Date: Wed, 2 Mar 2011 12:39:49 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110302103949.GA28548@jasper.tkos.co.il>
References: <4D665867.4010404@telemotive.de>
	<20110224160440.GQ7381@pengutronix.de>
	<4D677315.5090600@telemotive.de>
	<20110225150657.GC29521@pengutronix.de>
	<4D67D3EA.9000106@telemotive.de>
	<20110228074053.GF29521@pengutronix.de>
	<20110228080923.GF2667@jasper.tkos.co.il>
	<20110228081925.GG2667@jasper.tkos.co.il>
	<4D6E1949.3050603@telemotive.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D6E1949.3050603@telemotive.de>
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
Subject: Re: Install barebox on target
To: Thomas Mayer <thomas.mayer@telemotive.de>
Cc: barebox@lists.infradead.org

Hi Thomas,

On Wed, Mar 02, 2011 at 11:17:45AM +0100, Thomas Mayer wrote:
> good know, I will try that.

Further investigation shows that the Linux kernel doesn't read (or write) the 
OOB area correctly. This is not a problem if all you do is program the barebox 
image into the NAND flash. However, since the kernel uses the OOB area to 
identify the BBT (bad block table), the BBT gets corrupted. When that happens, 
the mxc_nand .probe fails at nand_scan_tail().

I suspect that the nandv2_hw_eccoob_largepage is wrong for 4K+218B. I'm still 
investigating.

baruch

> Am 28.02.2011 09:19, schrieb Baruch Siach:
> > Hi Sascha, Thomas,
> >
> > On Mon, Feb 28, 2011 at 10:09:23AM +0200, Baruch Siach wrote:
> >   
> >> On Mon, Feb 28, 2011 at 08:40:53AM +0100, Sascha Hauer wrote:
> >>     
> >>> On Fri, Feb 25, 2011 at 05:08:10PM +0100, Thomas Mayer wrote:
> >>>       
> >>>> thanks, I will try that.
> >>>> Today I got our real hardware. It consists of the freescale cpu board, a
> >>>> custom baseboard with a different display.
> >>>> With that I was able to start barebox completely. Network works fine,
> >>>> but I can't access the nand memory, because barebox doesn't find it at
> >>>> startup. I added all possible nand drivers to barebox, but it still
> >>>> doesn't work.
> >>>>
> >>>> Any idea?
> >>>>
> >>>> --------------------------------------- u-boot output
> >>>> -----------------------------------------
> >>>> U-Boot 2009.08 (Jan 13 2010 -
> >>>>
> >>>> Page Geometry     :
> >>>> 4096+218
> >>>>         
> >>> This will cause problems. I never had a nand with 4k block size and I
> >>> doubt it will work out of the box. I don't know if that's the reason
> >>> barebox does not find no nand device at all though.
> >>>       
> >> I'm also seeing problems with a 4k page size (+218 OOB) SLC NAND flash of 
> >> Micron on i.MX25. Barebox does identify the flash chip, but can't read it 
> >> correctly.  I'm investigating the issue. So far I've found that the OOB area 
> >> is read as 0x00s instead of 0xffs, even for good blocks. This makes Barebox to 
> >> mark the whole flash as bad blocks.
> >>
> >> The Linux kernel, however, seems to work correctly with this flash when 
> >> applying a small fix to use the correct(?) nand_ecclayout.
> >>     
> > I should also add the booting from this NAND with Barebox works perfectly. I 
> > used the kernel to program Barebox into the flash.
> >
> > baruch
> >
> >   
> >>>> --------------------------------------- barebox output
> >>>> ------------------------------------------
> >>>> barebox 2011.02.0 (Feb 25 2011 - 16:35:47)
> >>>>
> >>>> Board: Freescale MX35 3Stack
> >>>> No NAND device found!!!
> >>>> cfi_probe: cfi_flash base: 0xa0000000 size: 0x04000000
> >>>> mc13892-i2c@mc13892-i2c0: PMIC ID: 0x000045d0 [Rev: 2.0a]
> >>>> smc911x: no smc911x found on 0xb6000000 (byte_test=0x00f000f0)
> >>>> imx-ipu-fb@imx-ipu-fb0: i.MX Framebuffer driver
> >>>> mc13892-i2c@mc13892-i2c0: revision: 0x45d0
> >>>> i.MX35 PDK CPU board version 1.
> >>>> Malloc space: 0x86f00000 -> 0x87f00000 (size 16 MB)
> >>>> Stack space : 0x86ef8000 -> 0x86f00000 (size 32 kB)
> >>>> Open /dev/env0 No such file or directory
> >>>> no valid environment found on /dev/env0. Using default environment
> >>>> running /env/bin/init...
> >>>>
> >>>>
> >>>>
> >>>> regards
> >>>> Thomas
> >>>>
> >>>>
> >>>>
> >>>> Am 25.02.2011 16:06, schrieb Sascha Hauer:
> >>>>         
> >>>>> On Fri, Feb 25, 2011 at 10:15:01AM +0100, Thomas Mayer wrote:
> >>>>>   
> >>>>>           
> >>>>>> Hi Sascha,
> >>>>>>
> >>>>>> That's not quite correct. When you use the debug + personality board you
> >>>>>> can boot directly from a mmc-card which contains bootloader, kernel and
> >>>>>> rootfs without modifications. Only if you use the single personality
> >>>>>> board, you have to modify die board a little bit.
> >>>>>>     
> >>>>>>             
> >>>>> Ah, ok. I didn't know that.
> >>>>>
> >>>>>   
> >>>>>           
> >>>>>> Thanks for your short introduction. I tried to run the barebox image
> >>>>>> with u-boot and it seems to work. But after I get the following output
> >>>>>> barebox stops and do nothing.
> >>>>>>     
> >>>>>>             
> >>>>> That's a bug in the support for multiple network devices. Please pull
> >>>>> the -next branch again, then it should work.
> >>>>>
> >>>>> Sascha
> >>>>>           

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
