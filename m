Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mta1.parkeon.com ([91.121.43.66])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RBSSF-0001ND-Kd
	for barebox@lists.infradead.org; Wed, 05 Oct 2011 14:28:17 +0000
Received: from [81.80.172.220] (helo=mta2.parkeon.com)
	by mta1.parkeon.com with esmtp (Exim 4.71)
	(envelope-from <pschirrer@besancon.parkeon.com>) id 1RBRmI-00072d-Av
	for barebox@lists.infradead.org; Wed, 05 Oct 2011 15:44:54 +0200
Received: from mail1.parkeon.com ([192.168.76.23]
	helo=mail.besancon.parkeon.com)
	by mta2.parkeon.com with esmtp (Exim 4.69)
	(envelope-from <pschirrer@besancon.parkeon.com>) id 1RBRmE-00040x-Pg
	for barebox@lists.infradead.org; Wed, 05 Oct 2011 15:44:50 +0200
Received: from [10.32.51.148]
	by mail.besancon.parkeon.com with esmtp (Exim 4.71)
	(envelope-from <pschirrer@besancon.parkeon.com>) id 1RBRmI-0000SG-2J
	for barebox@lists.infradead.org; Wed, 05 Oct 2011 15:44:54 +0200
Message-ID: <4E8C5F56.50104@besancon.parkeon.com>
Date: Wed, 05 Oct 2011 15:44:54 +0200
From: Pierre Schirrer <pschirrer@besancon.parkeon.com>
MIME-Version: 1.0
References: <20110210121003.GT9041@pengutronix.de>
In-Reply-To: <20110210121003.GT9041@pengutronix.de>
Content-Type: multipart/mixed; boundary="------------020605040205050700020009"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Re: barebox startup
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------020605040205050700020009
Content-Type: multipart/alternative;
 boundary="------------070308070501050000040808"


--------------070308070501050000040808
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello Sascha,

>/
/>/
/>/  For the moment, I don't have any activity on my Ethernet ports (no
/>/  leds on or blinking), although I added the fec device. When I execute
/>/  the dhcp command, I get :
/>/
/>/  barebox:/ dhcp
/>/  warning: No MAC address set. Using random address 8E:A2:E8:DD:E2:73
/>/  phy0: Link is up - 100/Full
/>/  transmission timeout
/>/  T transmission timeout
/>/  T transmission timeout
/>/
/>/  But, whether I connect the cable or not, it always shows "phy0:Link is up - 100/Full".
/
Have a look at the output of md -s /dev/phy0. You should see valid phy
registers, not 0xffffffff.


I have exactly the same problem on an i.MX21 board (proprietary design). 
I have used the imx21ads to start from.

md -s /dev/phy0 returns 0xffffffff. Any ideas how to correct this (the 
smc91c111 base address is 0xd2c80000) ?

Here is the devinfo output :

barebox:/ devinfo
devices:
|----imx_serial0
|----cs0
|----ramfs0
|----devfs0
|----mem0 (defaultenv)
|----mem1 (mem)
|----cfi_flash0 (nor0, self0, env0)
|----cfi_flash1 (nor1)
|----mem2 (ram0)
|----smc91c1110
|----miidev0 (phy0)
|----eth0
|----imxfb0

drivers:
imx_serial
      ramfs
      devfs
    smc911x
  smc91c111
     miidev
  cfi_flash
        mem
barebox:/ devinfo miidev0
base  : 0x00000000
size  : 0x00000000
driver: miidev

no info available for miidev0
no parameters available
barebox:/ devinfo smc91c1110
base  : 0xd2c80000
size  : 0x00000000
driver: smc91c111

no info available for smc91c1110
no parameters available
barebox:/  devinfo phy0
no such device: phy0
barebox:/ devinfo eth0
base  : 0x00000000
size  : 0x00000000
driver: none

Parameters:
           ipaddr = 10.32.50.10
          ethaddr = 00:1A:09:20:00:17
          gateway = 10.32.51.148
          netmask = 255.255.252.0
         serverip = 10.32.51.148
barebox:/



--------------070308070501050000040808
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    Hello Sascha,<br>
    <br>
    <pre>&gt;<i> 
</i>&gt;<i> 
</i>&gt;<i> For the moment, I don't have any activity on my Ethernet ports (no
</i>&gt;<i> leds on or blinking), although I added the fec device. When I execute
</i>&gt;<i> the dhcp command, I get :
</i>&gt;<i> 
</i>&gt;<i> barebox:/ dhcp
</i>&gt;<i> warning: No MAC address set. Using random address 8E:A2:E8:DD:E2:73
</i>&gt;<i> phy0: Link is up - 100/Full
</i>&gt;<i> transmission timeout
</i>&gt;<i> T transmission timeout
</i>&gt;<i> T transmission timeout
</i>&gt;<i> 
</i>&gt;<i> But, whether I connect the cable or not, it always shows "phy0:Link is up - 100/Full".
</i>
Have a look at the output of md -s /dev/phy0. You should see valid phy
registers, not 0xffffffff.
</pre>
    <br>
    I have exactly the same problem on an i.MX21 board (proprietary
    design). I have used the imx21ads to start from.<br>
    <br>
    md -s /dev/phy0 returns 0xffffffff. Any ideas how to correct this
    (the smc91c111 base address is 0xd2c80000) ?<br>
    <br>
    Here is the devinfo output :<br>
    <br>
    barebox:/ devinfo<br>
    devices:<br>
    |----imx_serial0<br>
    |----cs0<br>
    |----ramfs0<br>
    |----devfs0<br>
    |----mem0 (defaultenv)<br>
    |----mem1 (mem)<br>
    |----cfi_flash0 (nor0, self0, env0)<br>
    |----cfi_flash1 (nor1)<br>
    |----mem2 (ram0)<br>
    |----smc91c1110<br>
    |----miidev0 (phy0)<br>
    |----eth0<br>
    |----imxfb0<br>
    <br>
    drivers:<br>
    imx_serial<br>
    &nbsp;&nbsp;&nbsp;&nbsp; ramfs<br>
    &nbsp;&nbsp;&nbsp;&nbsp; devfs<br>
    &nbsp;&nbsp; smc911x<br>
    &nbsp;smc91c111<br>
    &nbsp;&nbsp;&nbsp; miidev<br>
    &nbsp;cfi_flash<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mem<br>
    barebox:/ devinfo miidev0<br>
    base&nbsp; : 0x00000000<br>
    size&nbsp; : 0x00000000<br>
    driver: miidev<br>
    <br>
    no info available for miidev0<br>
    no parameters available<br>
    barebox:/ devinfo smc91c1110<br>
    base&nbsp; : 0xd2c80000<br>
    size&nbsp; : 0x00000000<br>
    driver: smc91c111<br>
    <br>
    no info available for smc91c1110<br>
    no parameters available<br>
    barebox:/&nbsp; devinfo phy0<br>
    no such device: phy0<br>
    barebox:/ devinfo eth0<br>
    base&nbsp; : 0x00000000<br>
    size&nbsp; : 0x00000000<br>
    driver: none<br>
    <br>
    Parameters:<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ipaddr = 10.32.50.10<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ethaddr = 00:1A:09:20:00:17<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gateway = 10.32.51.148<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; netmask = 255.255.252.0<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; serverip = 10.32.51.148<br>
    barebox:/<br>
    <br>
    <br>
  </body>
</html>

--------------070308070501050000040808--

--------------020605040205050700020009
Content-Type: text/x-csrc;
 name="platfaxio.c"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="platfaxio.c"

/*
 * Copyright (C) 2010 Pierre Schirrer
 *
 * Based on imx21ads.c
 *   Copyright (C) 2009 Ivo Clarysse
 * 
 * Based on imx27ads.c,
 *   Copyright (C) 2007 Sascha Hauer, Pengutronix 
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 * MA 02111-1307 USA
 *
 */

#include <common.h>
#include <net.h>
#include <init.h>
#include <environment.h>
#include <mach/imx-regs.h>
#include <asm/armlinux.h>
#include <asm/io.h>
#include <mach/gpio.h>
#include <partition.h>
#include <fs.h>
#include <fcntl.h>
#include <generated/mach-types.h>
#include <mach/imx-nand.h>
#include <mach/imxfb.h>
#include <mach/iomux-mx21.h>
#include <mach/devices-imx21.h>

#define	REG_LEDS	((volatile u32 *)IMX_CS5_BASE)
#define LED_RED		1
#define	LED_YELLOW	2
#define	LED_GREEN	4

#define	PLATFAXIO_LAN_IO  ((volatile u32 *)(IMX_CS4_BASE + 0xC80000))

static struct device_d cfi_dev = {
	.id	  = -1,
	.name     = "cfi_flash",
	.map_base = IMX_CS0_BASE,
	.size     = 64 * 1024 * 1024,
};

static struct device_d cfi_dev1 = {
	.id	  = -1,
	.name     = "cfi_flash",
	.map_base = IMX_CS1_BASE,
	.size     = 64 * 1024 * 1024,
};

static struct memory_platform_data ram_pdata = {
	.name = "ram0",
	.flags = DEVFS_RDWR,
};

static struct device_d sdram_dev = {
	.id	  = -1,
	.name     = "mem",
	.map_base = 0xc0000000,
	.size     = 128 * 1024 * 1024,
	.platform_data = &ram_pdata,
};

static struct device_d lan91111_dev = {
	.id	  = -1,
	.name     = "smc91c111",
	.map_base = PLATFAXIO_LAN_IO,
	// IRQ is connected to PC28
};

#ifdef CONFIG_MMU
static void platfaxio_mmu_init(void)
{
	mmu_init();

	arm_create_section(0xC0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
	arm_create_section(0xC4000000, 0xa0000000, 128, PMD_SECT_DEF_UNCACHED);

	setup_dma_coherent(0x10000000);

#if TEXT_BASE & (0x100000 - 1)
#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
#else
	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
#endif
	mmu_enable();
}
#else
static void platfaxio_mmu_init(void)
{
}
#endif

/* Ampire AM640408 VGA display */
static struct imx_fb_videomode imx_fb_modedata = {
        .mode = {
		.name           = "Ampire-AM640480",
		.refresh        = 60,
		.xres           = 640,
		.yres           = 480,
		.pixclock       = 39722,
		.left_margin    = 6,
		.right_margin   = 16,
		.upper_margin   = 8,
		.lower_margin   = 10,
		.hsync_len      = 2,
		.vsync_len      = 1,
		.sync           = 0,
		.vmode          = FB_VMODE_NONINTERLACED,
		.flag           = 0,
	},
        .pcr            = 0xfb108bc7,
        .bpp            = 16,
};

static struct imx_fb_platform_data imx_fb_data = {
	.mode           = &imx_fb_modedata,
	.cmap_greyscale = 0,
	.cmap_inverse   = 0,
	.cmap_static    = 0,
	.pwmr           = 0x00a903ff,
	.lscr1          = 0x00120300,
	.dmacr          = 0x00020008,
};

static struct device_d imxfb_dev = {
	.name           = "imxfb",
	.map_base       = 0x10021000,
	.size           = 0x1000,
	.platform_data  = &imx_fb_data,
};

static int platfaxio_timing_init(void)
{
	u32 temp;

#if 1
	/* Configure External Interface Module */
	/* CS0: burst flash */
	CS0U = 0x00000A00;
	CS0L = 0x20220E01;

	/* CS1: burst flash */
	CS1U = 0x00000A00;
	CS1L = 0x20220E01;

	/* SDRAM bank 1 <= SDRAM bank 0 */
	SDCTL1 = SDCTL0;
	FMCR  |= 0x00000002;

	/* CS2: disable (not available, since CSD0 in use) */
	CS2U = 0x0;
	CS2L = 0x0;

	/* CS3: disable (not available, since CSD1 in use) */
	CS3U = 0x00000E00;
	CS3L = 0x11110601;

	/* CS4: disable */
	CS4U = 0x00050A04;
	CS4L = 0x26443541;

	/* CS5: LEDS, BACKLIGHT and NIOS access */
	CS5U = 0x04050E00;
	CS5L = 0x44443301;

#endif /* 0 */
	temp = PCDR0;
	temp &= ~0xF000;
	temp |= 0xA000;  /* Set NFC divider; 0xA yields 24.18MHz */
	PCDR0 = temp;

	return 0;
}

core_initcall(platfaxio_timing_init);

static int platfaxio_devices_init(void)
{
	char *envdev = "no";
	int i;

	unsigned int mode[] = {
		/* Chip selects */
		(GPIO_PORTF | GPIO_PF | 21),
		(GPIO_PORTF | GPIO_PF | 22),

		/* LAN91C111 */
		(GPIO_PORTC | GPIO_GPIO | GPIO_IN | 28),
	
		/* UART1 */
		PE12_PF_UART1_TXD,
		PE13_PF_UART1_RXD,
		PE14_PF_UART1_CTS,
		PE15_PF_UART1_RTS,

		/* UART2 */
		PE6_PF_UART2_TXD,
		PE7_PF_UART2_RXD,
		PE3_PF_UART2_CTS,
		PE4_PF_UART2_RTS,
	
		/* UART3 (IrDA) - only TXD and RXD */
		PE8_PF_UART3_TXD,
		PE9_PF_UART3_RXD,

		/* UART4 */
		PB26_AF_UART4_RTS,
		PB28_AF_UART4_TXD,
		PB29_AF_UART4_CTS,
		PB31_AF_UART4_RXD,

		/* LCDC */
		PA5_PF_LSCLK,
		PA6_PF_LD0,
		PA7_PF_LD1,
		PA8_PF_LD2,
		PA9_PF_LD3,
		PA10_PF_LD4,
		PA11_PF_LD5,
		PA12_PF_LD6,
		PA13_PF_LD7,
		PA14_PF_LD8,
		PA15_PF_LD9,
		PA16_PF_LD10,
		PA17_PF_LD11,
		PA18_PF_LD12,
		PA19_PF_LD13,
		PA20_PF_LD14,
		PA21_PF_LD15,
		PA22_PF_LD16,
		PA24_PF_REV,     /* Sharp panel dedicated signal */
		PA25_PF_CLS,     /* Sharp panel dedicated signal */
		PA26_PF_PS,      /* Sharp panel dedicated signal */
		PA27_PF_SPL_SPR, /* Sharp panel dedicated signal */
		PA28_PF_HSYNC,
		PA29_PF_VSYNC,
		PA30_PF_CONTRAST,
		PA31_PF_OE_ACD,

		/* MMC/SDHC */
		(GPIO_PORTB | GPIO_GPIO | GPIO_IN | 29),
		(GPIO_PORTB | GPIO_GPIO | GPIO_IN | 31),
		PE18_PF_SD1_D0,
		PE19_PF_SD1_D1,
		PE20_PF_SD1_D2,
		PE21_PF_SD1_D3,
		PE22_PF_SD1_CMD,
		PE23_PF_SD1_CLK,
	
		/* RTC chip */
		(GPIO_PORTC | GPIO_GPIO | GPIO_IN | 16),
	
		/* Compact Flash */
	
		/* NIOS */
		(GPIO_PORTB | GPIO_GPIO | GPIO_IN | 27),
		(GPIO_PORTB | GPIO_GPIO | GPIO_IN | 28),

		/* Misc. */
		/* Power fail */
		(GPIO_PORTB | GPIO_GPIO | GPIO_IN | 30),
		/* Relay driver */
		(GPIO_PORTC | GPIO_GPIO | GPIO_OUT | 14),
	};

	/* Initialize MMU */
	platfaxio_mmu_init();

	/* initizalize gpios */
	for (i = 0; i < ARRAY_SIZE(mode); i++)
		imx_gpio_mode(mode[i]);

	register_device(&cfi_dev);
	register_device(&cfi_dev1);

	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
	protect_file("/dev/env0", 1);
	envdev = "NOR";

	printf("Using environment in %s Flash\n", envdev);

	register_device(&sdram_dev);
	register_device(&lan91111_dev);
//	imx21_add_fb(&imx_fb_data);
	register_device(&imxfb_dev);

	armlinux_add_dram(&sdram_dev);
	armlinux_set_bootparams((void *)0xc0100000);
	armlinux_set_architecture(MACH_TYPE_PLATFAXIO);

	return 0;
}

device_initcall(platfaxio_devices_init);

/*
static int platfaxio_enable_display(void)
{
	u16 tmp;

	tmp = readw(MX21ADS_IO_REG);
	tmp |= MX21ADS_IO_LCDON;
	writew(tmp, MX21ADS_IO_REG);
	return 0;
}

late_initcall(mx21ads_enable_display);
*/

static int platfaxio_console_init(void)
{
	imx21_add_uart0();
	return 0;
}

console_initcall(platfaxio_console_init);

#ifdef CONFIG_NAND_IMX_BOOT
void __bare_init nand_boot(void)
{
	PCCR0 |= PCCR0_NFC_EN;
	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
}
#endif


--------------020605040205050700020009
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------020605040205050700020009--
