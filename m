Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oln040092075071.outbound.protection.outlook.com
 ([40.92.75.71] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEsZY-0003SO-O5
 for barebox@lists.infradead.org; Thu, 19 Mar 2020 10:38:46 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 19 Mar 2020 10:38:41 +0000
Message-ID: <DB7PR02MB43321CDF6386A16A725DC131ABF40@DB7PR02MB4332.eurprd02.prod.outlook.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Barebox for Zedboard
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hey,

i have just started working on a Zedboard (http://zedboard.org/product/zedboard) with an Xilinx Zynq XC7Z020 SOC.
I have seen that Barebox has an defconfig for the zynq
so i tried

export ARCH=arm
export CROSS_COMPILE=arm-cortexa9-linux-gnueabihf-
export PATH=/opt/OSELAS.Toolchain/arm-cortexa9-linux-gnueabihf/bin:$PATH
make zynq_defconfig
make -j`nproc`

which compiles me the image

barebox-flash-image -> images/barebox-avnet-zedboard.img

when using u-boot i had to generate a BOOT.bin file with Xilinx's ./bootgen tool

dev$ bootgen -image bootimage.bif -o i BOOT.bin

and .bif file was

dev$ cat bootimage.bif
//arch = zynq; split = false; format = BIN
the_ROM_image:
{
     [bootloader]FSBL.elf
     design_1_wrapper.bit
     u-boot.elf
}


that i copied onto an SD-Card and powed up the board. 

But since i want to use Barebox how do i produce the BOOT.bin file? 
and how is the programming of the FPGA Logic done?

Best Regards 
Michael


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
