Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oln040092067041.outbound.protection.outlook.com
 ([40.92.67.41] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGNyK-0007Bm-R3
 for barebox@lists.infradead.org; Mon, 23 Mar 2020 14:22:34 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Mon, 23 Mar 2020 14:22:29 +0000
Message-ID: <DB7PR02MB43323CD77E0507E560475BCAABF00@DB7PR02MB4332.eurprd02.prod.outlook.com>
References: <DB7PR02MB43321CDF6386A16A725DC131ABF40@DB7PR02MB4332.eurprd02.prod.outlook.com>,
 <845b2228ae93d93e331556bb983f19cf67a025b8.camel@pengutronix.de>
In-Reply-To: <845b2228ae93d93e331556bb983f19cf67a025b8.camel@pengutronix.de>
Content-Language: de-DE
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: AW: Barebox for Zedboard
To: Lucas Stach <l.stach@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>



________________________________________
Von: Lucas Stach <l.stach@pengutronix.de>
Gesendet: Donnerstag, 19. M=E4rz 2020 11:53
An: Michael Graichen; barebox@lists.infradead.org
Betreff: Re: Barebox for Zedboard

Hi Michael,

Am Donnerstag, den 19.03.2020, 10:38 +0000 schrieb Michael Graichen:
> Hey,
>
> i have just started working on a Zedboard (http://zedboard.org/product/ze=
dboard) with an Xilinx Zynq XC7Z020 SOC.
> I have seen that Barebox has an defconfig for the zynq
> so i tried
>
> export ARCH=3Darm
> export CROSS_COMPILE=3Darm-cortexa9-linux-gnueabihf-
> export PATH=3D/opt/OSELAS.Toolchain/arm-cortexa9-linux-gnueabihf/bin:$PATH
> make zynq_defconfig
> make -j`nproc`
>
> which compiles me the image
>
> barebox-flash-image -> images/barebox-avnet-zedboard.img
>
> when using u-boot i had to generate a BOOT.bin file with Xilinx's ./bootg=
en tool
>
> dev$ bootgen -image bootimage.bif -o i BOOT.bin
>
> and .bif file was
>
> dev$ cat bootimage.bif
> //arch =3D zynq; split =3D false; format =3D BIN
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

Hey Lucas,

thanks for your reply.

for some reason i had to comment out everything that is in arch/arm/boards/=
avnet-zedboard/zedboard.zynqcfg besides the last line

wm 32 0xffffffff 0x00000000

to get a working Bootloader.

https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TR=
M.pdf tells me that these values are suposed to be set by the BootROM and 0=
xffffffff signals the end of the list but unfortunatly the boot process han=
gs here when the unlock value is written. So i decided to leave this list e=
mpty.

Has anybody seen a similar behaviour?

Best regards
Michael
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
