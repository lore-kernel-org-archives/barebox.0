Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THHhZ-0005A2-Uh
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 17:16:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Sep 2012 19:16:39 +0200
Message-Id: <1348766199-19802-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM i.MX: add debug for iomux-v3
To: barebox@lists.infradead.org

iomux setup often is the source of great fun. Add some debug printf
for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iomux-v3.c |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/iomux-v3.c b/arch/arm/mach-imx/iomux-v3.c
index 680d260..5d7a244 100644
--- a/arch/arm/mach-imx/iomux-v3.c
+++ b/arch/arm/mach-imx/iomux-v3.c
@@ -37,6 +37,10 @@ int mxc_iomux_v3_setup_pad(iomux_v3_cfg_t pad)
 	u32 pad_ctrl_ofs = (pad & MUX_PAD_CTRL_OFS_MASK) >> MUX_PAD_CTRL_OFS_SHIFT;
 	u32 pad_ctrl = (pad & MUX_PAD_CTRL_MASK) >> MUX_PAD_CTRL_SHIFT;
 
+	debug("%s: mux 0x%08x -> 0x%04x pad: 0x%08x -> 0x%04x sel_inp: 0x%08x -> 0x%04x\n",
+			__func__, mux_mode, mux_ctrl_ofs, pad_ctrl, pad_ctrl_ofs, sel_input,
+			sel_input_ofs);
+
 	if (mux_ctrl_ofs)
 		__raw_writel(mux_mode, base + mux_ctrl_ofs);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
