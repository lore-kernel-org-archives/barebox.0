Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEsns-0000Oi-MM
 for barebox@lists.infradead.org; Thu, 19 Mar 2020 10:53:34 +0000
Message-ID: <845b2228ae93d93e331556bb983f19cf67a025b8.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 19 Mar 2020 11:53:27 +0100
In-Reply-To: <DB7PR02MB43321CDF6386A16A725DC131ABF40@DB7PR02MB4332.eurprd02.prod.outlook.com>
References: <DB7PR02MB43321CDF6386A16A725DC131ABF40@DB7PR02MB4332.eurprd02.prod.outlook.com>
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
Subject: Re: Barebox for Zedboard
To: Michael Graichen <michael.graichen@hotmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Michael,

Am Donnerstag, den 19.03.2020, 10:38 +0000 schrieb Michael Graichen:
> Hey,
> 
> i have just started working on a Zedboard (http://zedboard.org/product/zedboard) with an Xilinx Zynq XC7Z020 SOC.
> I have seen that Barebox has an defconfig for the zynq
> so i tried
> 
> export ARCH=arm
> export CROSS_COMPILE=arm-cortexa9-linux-gnueabihf-
> export PATH=/opt/OSELAS.Toolchain/arm-cortexa9-linux-gnueabihf/bin:$PATH
> make zynq_defconfig
> make -j`nproc`
> 
> which compiles me the image
> 
> barebox-flash-image -> images/barebox-avnet-zedboard.img
> 
> when using u-boot i had to generate a BOOT.bin file with Xilinx's ./bootgen tool
> 
> dev$ bootgen -image bootimage.bif -o i BOOT.bin
> 
> and .bif file was
> 
> dev$ cat bootimage.bif
> //arch = zynq; split = false; format = BIN
> the_ROM_image:
> {
>      [bootloader]FSBL.elf
>      design_1_wrapper.bit
>      u-boot.elf
> }
> 
> 
> that i copied onto an SD-Card and powed up the board. 
> 
> But since i want to use Barebox how do i produce the BOOT.bin file? 

The barebox-avnet-zedboard.img already is the BOOT.bin image, just copy
it to the SD card with this name and you are done.

> and how is the programming of the FPGA Logic done?

Barebox currently doesn't support loading the FPGA bitstream. We are
still lacking a driver for the DevC PCAP interface. Zynq support in
Barebox is only a spare time (and thus toy) project at this time. It
works okay for booting Linux on the PS part of the system, but almost
fully lacks support for the PL part.

That said I wouldn't mind helping with getting the missing bits added
by reviewing/testing patches. :)

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
