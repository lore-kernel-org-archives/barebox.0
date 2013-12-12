Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vr1Fx-0004pg-QW
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 08:04:27 +0000
Date: Thu, 12 Dec 2013 09:04:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131212080359.GE24559@pengutronix.de>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Michael Burkey <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 11, 2013 at 12:07:17PM -0500, Michael Burkey wrote:
> I figured I'd just throw this out to everyone..
> 
> Is there any really good source of information or directions on the
> correct steps involved in getting a devicetree based barebox image
> built and then correctly programmed onto an SD Card? I feel like I am
> missing something somewhere.

I'm afraid there's not apart from the mail I have written to the list :/

> 
> I have been involved in getting barebox working on a Variscite i.MX6
> SOM with the intent to send it to Sascha, et al. for inclusion in the
> tree (once I get it actually working....).
> 
> Back in August, I managed to get the Variscite board booting with an
> earlier version of barebox and my additions using the "old-style"
> methodology in the arch/arm/boards file and the older style DCD header
> info. Unfortunately, this version was prior to the inclusion of GPMI
> NAND support and other features we needed.
> 
> So...I have now been attempting to migrate things to the most current
> barebox releases and transfer everything I have done into the newer
> style formats aimed at devicetree -- and I haven't been able to get it
> to work yet.
> 
> So far, I started from the imx_v7_defconfig,  created what I think are
> appropriate dts/dtsi files that describe my baseboard and SOM, updated
> my board.c and lowlevel.c files (hopefully correctly -- there just
> isn't much code in these files anymore with devicetree), created a
> flash-header-variscite.imxcfg file using the DCD information I had
> already verified worked in the old format (based on the u-Boot DCD
> info from Variscite), updated the appropriate Makefiles to build the
> new modules, added the appropriate entry to images/Makefile.imx, etc.
> 
> I then built it and programmed the resulting .img file into an SD Card
> but I get nothing apparent in terms of a response (no serial console,
> no blinking LED, etc).

What I did for various boards is to setup an UART early to have serial
output. For i.MX6 this is something along these lines (taken from
arch/arm/boards/phytec-pfla02/lowlevel.c):

static inline void setup_uart(void)
{
	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
	void __iomem *uartbase = (void *)MX6_UART4_BASE_ADDR;
	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;

	writel(0x4, iomuxbase + 0x01f8);

	writel(0xffffffff, ccmbase + 0x68);
	writel(0xffffffff, ccmbase + 0x6c);
	writel(0xffffffff, ccmbase + 0x70);
	writel(0xffffffff, ccmbase + 0x74);
	writel(0xffffffff, ccmbase + 0x78);
	writel(0xffffffff, ccmbase + 0x7c);
	writel(0xffffffff, ccmbase + 0x80);

	writel(0x00000000, uartbase + 0x80);
	writel(0x00004027, uartbase + 0x84);
	writel(0x00000704, uartbase + 0x88);
	writel(0x00000a81, uartbase + 0x90);
	writel(0x0000002b, uartbase + 0x9c);
	writel(0x00013880, uartbase + 0xb0);
	writel(0x0000047f, uartbase + 0xa4);
	writel(0x0000c34f, uartbase + 0xa8);
	writel(0x00000001, uartbase + 0x80);

	putc_ll('>');
}

(Enable CONFIG_DEBUG_LL, CONFIG_DEBUG_IMX6Q_UART and set
CONFIG_DEBUG_IMX_UART_PORT to the number of your UART, '4' in this
example).

> 
> I do NOT have an env partition at the moment but have it set to build
> a default environment into barebox itself (which tends to be how we
> prefer to have it for our current SD card boot mechanism -- which is
> aimed primarily at recovery and upgrade anyway).

This shouldn't be a problem at this stage.

> 
> Are there any steps I'm missing or anything major I'm doing wrong? Do
> I need to be manually specifying a dtb file to include?

The important thing is that you have your own entry function. For the
pfla02 this is:

| extern char __dtb_imx6q_phytec_pbab01_start[];
| 
| ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
| {
| 	uint32_t fdt;
| 
| 	arm_cpu_lowlevel_init();
| 
| 	arm_setup_stack(0x00920000 - 8);
| 
| 	if (IS_ENABLED(CONFIG_DEBUG_LL))
| 		setup_uart();
| 
| 	fdt = (uint32_t)__dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
| 
| 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
| }
| 

(replace __dtb_imx6q_phytec_pbab01_start with your devicetree and
start_phytec_pbab01_1gib with your boardname)

To generate an image with the entry point above you need this in images/Makefile.imx:

| pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_1gib
| CFG_start_phytec_pbab01_1gib.pblx.imximg = $(board)/phytec-pfla02/flash-header-phytec-pfla02-1gib.imxcfg
| FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblx.imximg
| image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-1gib.img

If you have this and don't get link errors then you have the correct
devicetree compiled in.

Be sure to pass the correct memory size (SZ_1G in this example). Try to
generate an disassembly file:

make images/start_phytec_pbab01_1gib.pbl.s

It should look like:

| 
| images/start_phytec_pbab01_1gib.pbl:     file format elf32-littlearm
| 
| 
| Disassembly of section .text:
| 
| 00000000 <start_phytec_pbab01_1gib>:
|    0:   e28f9001        add     r9, pc, #1
|    4:   e12fff19        bx      r9
|    8:   f000 f822       bl      50 <start_phytec_pbab01_1gib+0x50>
|    c:   e7fe            b.n     c <start_phytec_pbab01_1gib+0xc>
|    e:   e7fe            b.n     e <start_phytec_pbab01_1gib+0xe>
|   10:   e7fe            b.n     10 <start_phytec_pbab01_1gib+0x10>
|   12:   e7fe            b.n     12 <start_phytec_pbab01_1gib+0x12>
|   14:   e7fe            b.n     14 <start_phytec_pbab01_1gib+0x14>
|   16:   e7fe            b.n     16 <start_phytec_pbab01_1gib+0x16>
|   18:   e7fe            b.n     18 <start_phytec_pbab01_1gib+0x18>
|   1a:   e7fe            b.n     1a <start_phytec_pbab01_1gib+0x1a>
|   1c:   e7fe            b.n     1c <start_phytec_pbab01_1gib+0x1c>
|   1e:   e7fe            b.n     1e <start_phytec_pbab01_1gib+0x1e>
|   20:   65726162        .word   0x65726162
|   24:   00786f62        .word   0x00786f62
|         ...
|   30:   55555555        .word   0x55555555
|   34:   55555555        .word   0x55555555
|   38:   55555555        .word   0x55555555
|   3c:   55555555        .word   0x55555555
|   40:   55555555        .word   0x55555555
|   44:   55555555        .word   0x55555555
|   48:   55555555        .word   0x55555555
|   4c:   55555555        .word   0x55555555
|   50:   f000 f84c       bl      ec <__start_phytec_pbab01_1gib>

The important thing about this is that it must start with the function
you have specified as ENTRY_FUNCTION.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
