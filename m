Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4hAv-0006Ei-NL
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 07:22:44 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 15 Mar 2019 10:22:28 +0300
Message-Id: <20190315072228.19826-1-shc_work@mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] drivers: video: Fix parsing oftree timings
To: barebox@lists.infradead.org

This patch fixes the parsing of the display timings options if
the range is specified (min/typ/max). Also fixed the double
release of memory in case of failure.

barebox 2018.12.0-00341-g23b28d33a-dirty #6 Fri Mar 15 09:20:25 MSK 2019

Board: Mega-Milas Informer i.MX6
detected i.MX6 Quad revision 1.2
i.MX reset reason POR (SRSR: 0x00000001)
mdio_bus: miibus0: probed
eth0: got preset MAC address: 50:2d:f4:07:71:0b
nand: NAND device: Manufacturer ID: 0xec, Chip ID: 0xd3 (Samsung NAND 1GiB 3,3V 8-bit), 1024MiB, page size: 2048, OOB size: 64
Bad block table found at page 524224, version 0x01
Bad block table found at page 524160, version 0x01
m25p80 flash@00: n25q128a13 (16384 Kbytes)
imx-usb 2184000.usb@2184000: USB EHCI 1.00
imx-usb 2184200.usb@2184200: USB EHCI 1.00
imx-esdhc 2198000.usdhc@2198000: registered as mmc2
imx-ipuv3 2400000.ipu@2400000: IPUv3H probed
ERROR: /ldb/lvds-channel@0/display-timings/PH320240T: illegal timing specification in clock-frequency
ERROR: /ldb/lvds-channel@0/display-timings/PH320240T: error reading timing properties
ERROR: /ldb/lvds-channel@0: error in timing 1
ERROR: unable to handle NULL pointer dereference at address 0x00000013
pc : [<4fe05742>]    lr : [<4fe05849>]
sp : 4ffefa80  ip : ffffffff  fp : 2fefe84c
r10: 2ff656e8  r9 : 0000002c  r8 : 2ff19630
r7 : 00000000  r6 : 0000004c  r5 : 2ff65960  r4 : 00000007
r3 : 00000013  r2 : 00000000  r1 : 4fe87584  r0 : 2fefb460
Flags: nzcv  IRQs off  FIQs off  Mode SVC_32
[<4fe05742>] (remove_free_block+0xe/0x3e) from [<4fe05849>] (block_locate_free+0x7f/0x88)
[<4fe05849>] (block_locate_free+0x7f/0x88) from [<4fe0599b>] (tlsf_malloc+0x17/0x32)
[<4fe0599b>] (tlsf_malloc+0x17/0x32) from [<4fe0559b>] (malloc+0x13/0x24)
[<4fe0559b>] (malloc+0x13/0x24) from [<4fe3a1f3>] (strdup+0x11/0x22)
[<4fe3a1f3>] (strdup+0x11/0x22) from [<4fe006f3>] (pr_puts+0x33/0x84)
[<4fe006f3>] (pr_puts+0x33/0x84) from [<4fe00803>] (dev_printf+0x6f/0x8c)
[<4fe00803>] (dev_printf+0x6f/0x8c) from [<00000000>] (0x0)

[<4fe54715>] (unwind_backtrace+0x1/0x60) from [<4fe00de1>] (panic+0x1d/0x34)
[<4fe00de1>] (panic+0x1d/0x34) from [<4fe5285d>] (do_exception+0xd/0x10)
[<4fe5285d>] (do_exception+0xd/0x10) from [<4fe528bd>] (do_data_abort+0x21/0x2c)
[<4fe528bd>] (do_data_abort+0x21/0x2c) from [<4fe524d4>] (do_abort_6+0x48/0x54)
 ### ERROR ### Please RESET the board ###

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/video/of_display_timing.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
index 20f9354a1..17d8823c4 100644
--- a/drivers/video/of_display_timing.c
+++ b/drivers/video/of_display_timing.c
@@ -14,7 +14,8 @@
 
 void display_timings_release(struct display_timings *disp)
 {
-	free(disp->modes);
+	if (disp->modes)
+		free(disp->modes);
 	free(disp);
 }
 EXPORT_SYMBOL_GPL(display_timings_release);
@@ -43,7 +44,7 @@ static int parse_timing_property(const struct device_node *np, const char *name,
 	}
 
 	cells = length / sizeof(u32);
-	if (cells == 1) {
+	if ((cells == 1) || (cells == 3)) {
 		ret = of_property_read_u32(np, name, res);
 	} else {
 		pr_err("%s: illegal timing specification in %s\n",
@@ -129,7 +130,7 @@ struct display_timings *of_get_display_timings(struct device_node *np)
 	if (!entry) {
 		pr_err("%s: no timing specifications given\n",
 			np->full_name);
-		goto entryfail;
+		goto fail;
 	}
 
 	pr_debug("%s: using %s as default timing\n",
@@ -141,7 +142,7 @@ struct display_timings *of_get_display_timings(struct device_node *np)
 	if (disp->num_modes == 0) {
 		/* should never happen, as entry was already found above */
 		pr_err("%s: no timings specified\n", np->full_name);
-		goto entryfail;
+		goto fail;
 	}
 
 	disp->modes = xzalloc(sizeof(struct fb_videomode) * disp->num_modes);
@@ -163,7 +164,7 @@ struct display_timings *of_get_display_timings(struct device_node *np)
 			 */
 			pr_err("%s: error in timing %d\n",
 				np->full_name, disp->num_modes + 1);
-			goto timingfail;
+			goto fail;
 		}
 
 		mode->name = xstrdup(entry->name);
@@ -180,10 +181,8 @@ struct display_timings *of_get_display_timings(struct device_node *np)
 
 	return disp;
 
-timingfail:
+fail:
 	display_timings_release(disp);
-entryfail:
-	free(disp);
 
 	return NULL;
 }
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
