Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89] helo=protonic.nl)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjXh-0007qc-SX
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 09:46:15 +0000
MIME-Version: 1.0
Date: Mon, 03 Jun 2019 11:46:05 +0200
From: Robin van der Gracht <robin@protonic.nl>
Message-ID: <749e45534db70a7fd805d69008113640@protonic.nl>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: simplefb question
To: Andre Heider <a.heider@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

Hello Andre, Sascha,

I'm trying to setup simplefb on my imx6 solo board, and ran into some 
issues and I'm hoping you could
clear things up.

I'm running:
  - Barebox 2018.07.0
  - Linux 4.19

I checked with latest versions but the relevant code seems unchanged.

On Barebox console I ran:

barebox@BOARD:/ of_dump /framebuffer
framebuffer {
         display = <0x5a>;
};

barebox@BOARD:/ fb0.enable=1
imx-ipuv3-crtc imx-ipuv3-crtc0: ipu_crtc_mode_set: mode->xres: 800
imx-ipuv3-crtc imx-ipuv3-crtc0: ipu_crtc_mode_set: mode->yres: 480
WARNING: imx-ipuv3-crtc imx-ipuv3-crtc0: videomode adapted for IPU 
restriction

barebox@BOARD:/ fb0.register_simplefb=1

barebox@BOARD:/ oftree -s dump.dtb
fb0: created r8g8b8 node    (I added that mode)

barebox@BOARD:/ of_dump -f dump.dtb /framebuffer
framebuffer {
         display = <0x5a>;
         compatible = "simple-framebuffer";
         reg = <0x19ca9000 0x177000>;
         width = <0x320>;
         height = <0x1e0>;
         stride = <0xc80>;
         format = "r8g8b8";
         status = "okay";
};

# Side-note: Kernel doc says this device-tree node has to in the /chosen 
section..?

The framebuffer is allocated in 'drivers/video/imx-ipu-v3/ipufb.c' 
ipufb_activate_var() with dma_alloc_writecombine().

This failed with my Barebox version, and found that Sascha fixed that 
upstream, so I applied these:
  - ARM: MMU: fix arch_remap_range() across section boundaries
  - ARM: mmu: fix cache flushing when replacing a section with a PTE
  - ARM: MMU: fix wrong dma_flush_range in arm_create_pte()

# So far so good.

When I boot Linux I get the following WARN()

[    0.071950] ------------[ cut here ]------------
[    0.071974] WARNING: CPU: 0 PID: 1 at arch/arm/mm/ioremap.c:309 
__arm_ioremap_pfn_caller+0x1ec/0x210
[    0.071980] Modules linked in:
[    0.071998] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 
4.19.0-20190401-1-00290-gd141d156c111f-dirty #1023
[    0.072007] Hardware name: Freescale i.MX6 Quad/DualLite (Device 
Tree)
[    0.072036] [<8010ffec>] (unwind_backtrace) from [<8010b8dc>] 
(show_stack+0x10/0x14)
[    0.072053] [<8010b8dc>] (show_stack) from [<8091d5fc>] 
(dump_stack+0x88/0x9c)
[    0.072074] [<8091d5fc>] (dump_stack) from [<8011e5d8>] 
(__warn+0xd4/0xf0)
[    0.072092] [<8011e5d8>] (__warn) from [<8011e634>] 
(warn_slowpath_null+0x40/0x48)
[    0.072109] [<8011e634>] (warn_slowpath_null) from [<80115230>] 
(__arm_ioremap_pfn_caller+0x1ec/0x210)
[    0.072124] [<80115230>] (__arm_ioremap_pfn_caller) from [<80115298>] 
(__arm_ioremap_caller+0x44/0x54)
[    0.072141] [<80115298>] (__arm_ioremap_caller) from [<80407900>] 
(simplefb_probe+0x1fc/0x898)
[    0.072162] [<80407900>] (simplefb_probe) from [<804ade34>] 
(platform_drv_probe+0x48/0x98)
[    0.072179] [<804ade34>] (platform_drv_probe) from [<804ac23c>] 
(really_probe+0x1f4/0x2b8)
[    0.072193] [<804ac23c>] (really_probe) from [<804ac464>] 
(driver_probe_device+0x60/0x164)
[    0.072207] [<804ac464>] (driver_probe_device) from [<804ac644>] 
(__driver_attach+0xdc/0xe0)
[    0.072224] [<804ac644>] (__driver_attach) from [<804aa540>] 
(bus_for_each_dev+0x74/0xb4)
[    0.072242] [<804aa540>] (bus_for_each_dev) from [<804ab6cc>] 
(bus_add_driver+0x1bc/0x200)
[    0.072258] [<804ab6cc>] (bus_add_driver) from [<804acf50>] 
(driver_register+0x7c/0x114)
[    0.072276] [<804acf50>] (driver_register) from [<80e1b1f8>] 
(simplefb_init+0x14/0x8c)
[    0.072293] [<80e1b1f8>] (simplefb_init) from [<80102618>] 
(do_one_initcall+0x7c/0x1a8)
[    0.072313] [<80102618>] (do_one_initcall) from [<80e00e40>] 
(kernel_init_freeable+0x148/0x1dc)
[    0.072334] [<80e00e40>] (kernel_init_freeable) from [<80930c78>] 
(kernel_init+0x8/0x110)
[    0.072349] [<80930c78>] (kernel_init) from [<801010d8>] 
(ret_from_fork+0x14/0x3c)
[    0.072358] Exception stack(0x8b84bfb0 to 0x8b84bff8)
[    0.072369] bfa0:                                     00000000 
00000000 00000000 00000000
[    0.072381] bfc0: 00000000 00000000 00000000 00000000 00000000 
00000000 00000000 00000000
[    0.072391] bfe0: 00000000 00000000 00000000 00000000 00000013 
00000000
[    0.072435] ---[ end trace d197b304a56deeb0 ]---
[    0.072463] simple-framebuffer: probe of 19ca9000.framebuffer failed 
with error -12

If I understand correctly, this is due to the use of ioremap_wc on a RAM 
region. I was hoping you could tell me what I'm doing wrong here, or if 
I'm looking at a bug.

My mtype = MT_DEVICE_WC. (Due to the in kernel use of ioremap_wc())
My pfn = 0x19ca9

In my kernel .config i have:
CONFIG_HAVE_ARCH_PFN_VALID=y

Kind regards,

Robin van der Gracht

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
