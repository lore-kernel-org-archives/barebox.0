Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.39])
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYwJV-0002E3-C6
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 13:50:43 +0000
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <56CF068C.4060901@eurek.it>
Date: Thu, 25 Feb 2016 14:50:04 +0100
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------030205020904080706030509"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: iMX6Q First boot
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------030205020904080706030509
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello list,
I am trying to bootup my custom designed board (actually a rev.0, but I 
know it will need a rev.1 ASAP ;-).

I started with the latest (2016.02) barebox version, adding my board to 
the Kconfig & Makefile stuff, copying the udoo stuff to the 
arch/arm/boards/eurek-ek360 (as the board name is EK360) and cut-off any 
unneeded initialization.

I am using imx_v7_defconfig as a starting point for configuration.

I kept the device tree file as short as possible, keeping only the 
model, memory, gpio-pinmux for uart (debug) and the uart3 configurator.

In attachment there are the board.c, the lowlevel.c and the device-tree 
file.

Well, I am using the imx-usb-loader to upload barebox to the iMX6.

When I am DO NOT USING the CONFIG_LL debug option, NOTHING is printed on 
the serial port, meanwhile if I config CONFIG_LL option, it writes:

> imx-ipuv3 2400000.ipu: IPUv3H probed
> imx-ipuv3 2800000.ipu: IPUv3H probed
> netconsole: registered as netconsole-1
> malloc space: 0x2ff7c7e0 -> 0x4fef8fbf (size 511.5 MiB)
> environment load /dev/env0: No such file or directory
> Maybe you have to create the partition.
> running /env/bin/init...
>
> Hit m for menu or any other key to stop autoboot:  1
> blspec: blspec_scan_directory: net loader/entries
> ifup: Cannot find device eth0
> ifup: No such file or directory
> running automount command 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp' failed
> ifup: Cannot find device eth0
> ifup: No such file or directory
> running automount command 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp' failed
> ifup: Cannot find device eth0
> ifup: No such file or directory
> running automount command 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp' failed
> could not open /mnt/tftp/none-linux-ek360: No such file or directory
> Booting net failed: No such file or directory
> booting net failed: No such file or directory
> boot: No such file or directory
>
> type exit to get to the menu
>                             barebox@EK360 Eurek i.MX6 Quad:/

and the console is not working...

Where I am wrong???

-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

--------------030205020904080706030509
Content-Type: text/x-csrc;
 name="board.c"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
 filename="board.c"

/*
 * Copyright (C) 2016 Gianluca Renzi, Eurek Elettronica S.R.L.
 * Copyright (C) 2014 Rapha��l Poggi
 * Copyright (C) 2012 Steffen Trumtrar, Pengutronix
 *
 * based on arch/arm/boards/freescale-mx6-arm2/board.c
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
 */

#include <common.h>
#include <init.h>
#include <environment.h>
#include <mach/imx6-regs.h>
#include <fec.h>
#include <gpio.h>
#include <mach/bbu.h>
#include <asm/armlinux.h>
#include <generated/mach-types.h>
#include <partition.h>
#include <linux/phy.h>
#include <asm/io.h>
#include <asm/mmu.h>
#include <mach/generic.h>
#include <linux/sizes.h>
#include <net.h>
#include <linux/micrel_phy.h>
#include <mach/imx6.h>
#include <mach/devices-imx6.h>
#include <mach/iomux-mx6.h>
#include <spi/spi.h>
#include <mach/spi.h>
#include <mach/usb.h>

static iomux_v3_cfg_t ek360_led[] = {
	MX6Q_PAD_DISP0_DAT17__GPIO_5_11 | MUX_PAD_CTRL(NO_PAD_CTRL),
};

static int ek360_led_setup(void)
{
	mxc_iomux_v3_setup_multiple_pads(ek360_led, ARRAY_SIZE(ek360_led));
	gpio_direction_output(IMX_GPIO_NR(5, 11) , 0); /* Led On */
	return 0;
}
fs_initcall(ek360_led_setup);

static void ek360_epit_init(void)
{
	writel(0x0000000, MX6_EPIT1_BASE_ADDR);
	writel(0x142000F, MX6_EPIT1_BASE_ADDR);
	writel(0x30000, MX6_EPIT1_BASE_ADDR + 0x8);
	writel(0x0, MX6_EPIT1_BASE_ADDR + 0xC);
}

static int ek360_devices_init(void)
{
	if (!of_machine_is_compatible("eurek,ek360"))
		return 0;

	ek360_epit_init();

	armlinux_set_bootparams((void *)0x10000100);
	barebox_set_hostname("ek360");

	gpio_set_value(IMX_GPIO_NR(5, 11), 1); /* Led Off */
	return 0;
}
device_initcall(ek360_devices_init);

static int ek360_coredevices_init(void)
{
	if (!of_machine_is_compatible("eurek,ek360"))
		return 0;

	return 0;
}
coredevice_initcall(ek360_coredevices_init);

--------------030205020904080706030509
Content-Type: text/plain; charset=UTF-8;
 name="flash-header-mx6-eurek-ek360.imxcfg"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="flash-header-mx6-eurek-ek360.imxcfg"

c29jIGlteDYKbG9hZGFkZHIgMHgyMDAwMDAwMApkY2RvZnMgMHg0MDAKCgovKiBNWDZfSU9N
X0RSQU1fU0RRUzAgLT4gTVg2X0lPTV9EUkFNX1NEUVM3ICovCndtIDMyIDB4MDIwZTA1YTgg
MHgwMDAwMDAzMAp3bSAzMiAweDAyMGUwNWIwIDB4MDAwMDAwMzAKd20gMzIgMHgwMjBlMDUy
NCAweDAwMDAwMDMwCndtIDMyIDB4MDIwZTA1MWMgMHgwMDAwMDAzMAp3bSAzMiAweDAyMGUw
NTE4IDB4MDAwMDAwMzAKd20gMzIgMHgwMjBlMDUwYyAweDAwMDAwMDMwCndtIDMyIDB4MDIw
ZTA1YjggMHgwMDAwMDAzMAp3bSAzMiAweDAyMGUwNWMwIDB4MDAwMDAwMzAKLyoqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKLyogTVg2X0lPTV9EUkFN
X0RRTTAgLT4gTVg2X0lPTV9EUkFNX0RRTTcgKi8Kd20gMzIgMHgwMjBlMDVhYyAweDAwMDIw
MDMwCndtIDMyIDB4MDIwZTA1YjQgMHgwMDAyMDAzMAp3bSAzMiAweDAyMGUwNTI4IDB4MDAw
MjAwMzAKd20gMzIgMHgwMjBlMDUyMCAweDAwMDIwMDMwCndtIDMyIDB4MDIwZTA1MTQgMHgw
MDAyMDAzMAp3bSAzMiAweDAyMGUwNTEwIDB4MDAwMjAwMzAKd20gMzIgMHgwMjBlMDViYyAw
eDAwMDIwMDMwCndtIDMyIDB4MDIwZTA1YzQgMHgwMDAyMDAzMAovKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKd20gMzIgMHgwMjBlMDU2YyAweDAwMDIw
MDMwIC8qIE1YNl9JT01fRFJBTV9DQVMgKi8Kd20gMzIgMHgwMjBlMDU3OCAweDAwMDIwMDMw
IC8qIE1YNl9JT01fRFJBTV9SQVMgKi8Kd20gMzIgMHgwMjBlMDU4OCAweDAwMDIwMDMwIC8q
IE1YNl9JT01fRFJBTV9TRENMS18wICovCndtIDMyIDB4MDIwZTA1OTQgMHgwMDAyMDAzMCAg
ICAvKiBNWDZfSU9NX0RSQU1fU0RDTEtfMSAqLwp3bSAzMiAweDAyMGUwNTdjIDB4MDAwMjAw
MzAgLyogTVg2X0lPTV9EUkFNX1JFU0VUICovCndtIDMyIDB4MDIwZTA1OTAgMHgwMDAwMzAw
MAp3bSAzMiAweDAyMGUwNTk4IDB4MDAwMDMwMDAKd20gMzIgMHgwMjBlMDU4YyAweDAwMDAw
MDAwCndtIDMyIDB4MDIwZTA1OWMgMHgwMDAwMzAzMAp3bSAzMiAweDAyMGUwNWEwIDB4MDAw
MDMwMzAKCi8qIE1YNl9JT01fR1JQX0IwRFMgLT4gTVg2X0lPTV9HUlBfQjdEUyAqLwp3bSAz
MiAweDAyMGUwNzg0IDB4MDAwMDAwMzAKd20gMzIgMHgwMjBlMDc4OCAweDAwMDAwMDMwCndt
IDMyIDB4MDIwZTA3OTQgMHgwMDAwMDAzMAp3bSAzMiAweDAyMGUwNzljIDB4MDAwMDAwMzAK
d20gMzIgMHgwMjBlMDdhMCAweDAwMDAwMDMwCndtIDMyIDB4MDIwZTA3YTQgMHgwMDAwMDAz
MAp3bSAzMiAweDAyMGUwN2E4IDB4MDAwMDAwMzAKd20gMzIgMHgwMjBlMDc0OCAweDAwMDAw
MDMwCi8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCgp3bSAzMiAw
eDAyMGUwNzRjIDB4MDAwMDAwMzAgLyogTVg2X0lPTV9HUlBfQURERFMgKi8Kd20gMzIgMHgw
MjBlMDc1MCAweDAwMDIwMDAwCndtIDMyIDB4MDIwZTA3NTggMHgwMDAwMDAwMAp3bSAzMiAw
eDAyMGUwNzc0IDB4MDAwMjAwMDAKd20gMzIgMHgwMjBlMDc4YyAweDAwMDAwMDMwIC8qIE1Y
Nl9JT01fR1JQX0NUTERTICovCndtIDMyIDB4MDIwZTA3OTggMHgwMDBjMDAwMAp3bSAzMiAw
eDAyMWIwODFjIDB4MzMzMzMzMzMKd20gMzIgMHgwMjFiMDgyMCAweDMzMzMzMzMzCndtIDMy
IDB4MDIxYjA4MjQgMHgzMzMzMzMzMwp3bSAzMiAweDAyMWIwODI4IDB4MzMzMzMzMzMKd20g
MzIgMHgwMjFiNDgxYyAweDMzMzMzMzMzCndtIDMyIDB4MDIxYjQ4MjAgMHgzMzMzMzMzMwp3
bSAzMiAweDAyMWI0ODI0IDB4MzMzMzMzMzMKd20gMzIgMHgwMjFiNDgyOCAweDMzMzMzMzMz
CgoKd20gMzIgMHgwMjFiMDAwNCAweDAwMDIwMDM2CndtIDMyIDB4MDIxYjAwMDggMHgwOTQ0
NDA0MAp3bSAzMiAweDAyMWIwMDBjIDB4NTQ1OTc5NTUKd20gMzIgMHgwMjFiMDAxMCAweEZG
MzI4RjY0CndtIDMyIDB4MDIxYjAwMTQgMHgwMUZGMDBEQgp3bSAzMiAweDAyMWIwMDE4IDB4
MDAwMDE3NDAKd20gMzIgMHgwMjFiMDAxYyAweDAwMDA4MDAwCndtIDMyIDB4MDIxYjAwMmMg
MHgwMDAwMjZEMgp3bSAzMiAweDAyMWIwMDMwIDB4MDA1OTEwMjMKd20gMzIgMHgwMjFiMDA0
MCAweDAwMDAwMDI3CndtIDMyIDB4MDIxYjAwMDAgMHg4MzFBMDAwMAp3bSAzMiAweDAyMWIw
MDFjIDB4MDQwODgwMzIKd20gMzIgMHgwMjFiMDAxYyAweDAwMDA4MDMzCndtIDMyIDB4MDIx
YjAwMWMgMHgwMDA0ODAzMQp3bSAzMiAweDAyMWIwMDFjIDB4MDk0MDgwMzAKd20gMzIgMHgw
MjFiMDAxYyAweDA0MDA4MDQwCndtIDMyIDB4MDIxYjA4MDAgMHhBMTM4MDAwMwp3bSAzMiAw
eDAyMWI0ODAwIDB4QTEzODAwMDMKd20gMzIgMHgwMjFiMDAyMCAweDAwMDA1ODAwCndtIDMy
IDB4MDIxYjA4MTggMHgwMDAxMTExNwp3bSAzMiAweDAyMWI0ODE4IDB4MDAwMTExMTcKd20g
MzIgMHgwMjFiMDgzYyAweDQzNTEwMzYwCndtIDMyIDB4MDIxYjA4NDAgMHgwMzQyMDMzRgp3
bSAzMiAweDAyMWI0ODNjIDB4MDMzRjAzM0YKd20gMzIgMHgwMjFiNDg0MCAweDAzMjkwMjY2
CndtIDMyIDB4MDIxYjA4NDggMHg0QjNFNDE0MQp3bSAzMiAweDAyMWI0ODQ4IDB4NDc0MTNC
NEEKd20gMzIgMHgwMjFiMDg1MCAweDQyNDA0ODQzCndtIDMyIDB4MDIxYjQ4NTAgMHg0QzNG
NEM0NQp3bSAzMiAweDAyMWIwODBjIDB4MDAzNTAwMzUKd20gMzIgMHgwMjFiMDgxMCAweDAw
MUYwMDFGCndtIDMyIDB4MDIxYjQ4MGMgMHgwMDAxMDAwMQp3bSAzMiAweDAyMWI0ODEwIDB4
MDAwMTAwMDEKd20gMzIgMHgwMjFiMDhiOCAweDAwMDAwODAwCndtIDMyIDB4MDIxYjQ4Yjgg
MHgwMDAwMDgwMAp3bSAzMiAweDAyMWIwMDA0IDB4MDAwMjU1NzYKd20gMzIgMHgwMjFiMDQw
NCAweDAwMDExMDA2CndtIDMyIDB4MDIxYjAwMWMgMHgwMDAwMDAwMAoK
--------------030205020904080706030509
Content-Type: text/x-csrc;
 name="lowlevel.c"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="lowlevel.c"

#include <common.h>
#include <linux/sizes.h>
#include <mach/generic.h>
#include <asm/barebox-arm-head.h>
#include <asm/barebox-arm.h>

extern char __dtb_imx6q_eurek_ek360_start[];

ENTRY_FUNCTION(start_imx6_eurek_ek360, r0, r1, r2)
{
	void *fdt;

	imx6_cpu_lowlevel_init();

	fdt = __dtb_imx6q_eurek_ek360_start - get_runtime_offset();

	barebox_arm_entry(0x10000000, SZ_1G, fdt);
}

--------------030205020904080706030509
Content-Type: text/plain; charset=UTF-8;
 name="imx6q-eurek-ek360.dtsi"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="imx6q-eurek-ek360.dtsi"

LyoKICogQ29weXJpZ2h0IDIwMTYgR2lhbmx1Y2EgUmVuemksIEV1cmVrIEVsZXR0cm9uaWNh
IFMuUi5MLgogKiBDb3B5cmlnaHQgMjAxNCBSYXBoYcOrbCBQb2dnaQogKiBDb3B5cmlnaHQg
MjAxMSBGcmVlc2NhbGUgU2VtaWNvbmR1Y3RvciwgSW5jLgogKiBDb3B5cmlnaHQgMjAxMSBM
aW5hcm8gTHRkLgogKgogKiBUaGUgY29kZSBjb250YWluZWQgaGVyZWluIGlzIGxpY2Vuc2Vk
IHVuZGVyIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMKICogTGljZW5zZS4gWW91IG1heSBvYnRh
aW4gYSBjb3B5IG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZQogKiBWZXJzaW9u
IDIgb3IgbGF0ZXIgYXQgdGhlIGZvbGxvd2luZyBsb2NhdGlvbnM6CiAqCiAqIGh0dHA6Ly93
d3cub3BlbnNvdXJjZS5vcmcvbGljZW5zZXMvZ3BsLWxpY2Vuc2UuaHRtbAogKiBodHRwOi8v
d3d3LmdudS5vcmcvY29weWxlZnQvZ3BsLmh0bWwKICovCgojaW5jbHVkZSA8ZHQtYmluZGlu
Z3MvZ3Bpby9ncGlvLmg+CiNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnB1dC9pbnB1dC5oPgoK
LyB7Cgltb2RlbCA9ICJFSzM2MCBFdXJlayBpLk1YNiBRdWFkIjsKCWNvbXBhdGlibGUgPSAi
ZXVyZWssZWszNjAiLCAiZnNsLGlteDZxIjsKCgltZW1vcnkgewoJCXJlZyA9IDwweDEwMDAw
MDAwIDB4NDAwMDAwMDA+OwoJfTsKCglyZWd1bGF0b3JzIHsKCQljb21wYXRpYmxlID0gInNp
bXBsZS1idXMiOwoJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwoJCSNzaXplLWNlbGxzID0gPDA+
OwoKCQlyZWdfMnA1djogcmVndWxhdG9yQDAgewoJCQljb21wYXRpYmxlID0gInJlZ3VsYXRv
ci1maXhlZCI7CgkJCXJlZyA9IDwwPjsKCQkJcmVndWxhdG9yLW5hbWUgPSAiMlA1ViI7CgkJ
CXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDI1MDAwMDA+OwoJCQlyZWd1bGF0b3ItbWF4
LW1pY3Jvdm9sdCA9IDwyNTAwMDAwPjsKCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKCQl9OwoK
CQlyZWdfM3AzdjogcmVndWxhdG9yQDEgewoJCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1m
aXhlZCI7CgkJCXJlZyA9IDwxPjsKCQkJcmVndWxhdG9yLW5hbWUgPSAiM1AzViI7CgkJCXJl
Z3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+OwoJCQlyZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdCA9IDwzMzAwMDAwPjsKCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKCQl9OwoJfTsK
fTsKCiZpb211eGMgewoJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKCXBpbmN0cmwtMCA9
IDwmcGluY3RybF91YXJ0Mz47CglpbXg2cS1lazM4MCB7CgkJcGluY3RybF91YXJ0MzogdWFy
dDNncnAgewoJCQkvKiBkZWJ1ZyBwb3J0LCBzZXJpYWwgY29uc29sZSAqLwoJCQlmc2wscGlu
cyA9IDwKCQkJCU1YNlFETF9QQURfRUlNX0QyNF9fVUFSVDNfVFhfREFUQSAweDFiMGIxCgkJ
CQlNWDZRRExfUEFEX0VJTV9EMjVfX1VBUlQzX1JYX0RBVEEgMHgxYjBiMQoJCQk+OwoJCX07
Cgl9Owp9OwoKJnVhcnQzIHsKCS8qIERlYnVnIHBvcnQgLyBjb25zb2xlICovCglwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOwoJcGluY3RybC0wID0gPCZwaW5jdHJsX3VhcnQzPjsKCXN0
YXR1cyA9ICJva2F5IjsKfTsK
--------------030205020904080706030509
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------030205020904080706030509--
