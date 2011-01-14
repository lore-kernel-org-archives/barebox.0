Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdpgX-0006G8-6O
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 19:51:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Jan 2011 20:51:38 +0100
Message-Id: <1295034699-18863-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
References: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/7] ARM i.MX28 tx28: use a fixed framebuffer address
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx28/tx28-stk5.c |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 6de41f7..b4dd65d 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -19,6 +19,8 @@
 #include <errno.h>
 #include <mci.h>
 #include <fec.h>
+#include <sizes.h>
+#include <reloc.h>
 #include <asm/io.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
@@ -181,11 +183,15 @@ static struct fb_videomode tx28evk_vmodes[] = {
 	},
 };
 
+#define MAX_FB_SIZE SZ_2M
+
 static struct imx_fb_videomode imxfb_mode = {
 	.mode_list = tx28evk_vmodes,
 	.mode_cnt = ARRAY_SIZE(tx28evk_vmodes),
 	.dotclk_delay = 0,	/* no adaption required */
 	.ld_intf_width = STMLCDIF_24BIT,	/* full 24 bit */
+	.fixed_screen = (void *)(0x40000000 + SZ_128M - MAX_FB_SIZE),
+	.fixed_screen_size = MAX_FB_SIZE,
 };
 
 static struct device_d ldcif_dev = {
@@ -352,6 +358,12 @@ void base_board_init(void)
 	imx_set_sspclk(0, 100000000, 1);
 
 	register_device(&mci_socket);
+
+	if (imxfb_mode.fixed_screen < (void *)&_end) {
+		printf("Warning: fixed_screen overlaps barebox\n");
+		imxfb_mode.fixed_screen = NULL;
+	}
+
 	register_device(&ldcif_dev);
 
 	imx_enable_enetclk();
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
