Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIQLk-00007R-TC
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 20:10:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2012 22:10:19 +0200
Message-Id: <1334261421-4194-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334261421-4194-1-git-send-email-s.hauer@pengutronix.de>
References: <1334261421-4194-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM i.MX iomux-v3: one bit more for pad_ctl
To: barebox@lists.infradead.org

i.MX6 needs one bit more for PAD_CTRL, so make one free.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/iomux-v3.h |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index f2f0ccf..2c92342 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -48,8 +48,8 @@
  * PAD_CTRL_OFS:	   12..23 (12)
  * SEL_INPUT_OFS:	   24..35 (12)
  * MUX_MODE + SION:	   36..40  (5)
- * PAD_CTRL + NO_PAD_CTRL: 41..57 (17)
- * SEL_INP:		   58..61  (4)
+ * PAD_CTRL + NO_PAD_CTRL: 41..58 (18)
+ * SEL_INP:		   59..62  (4)
  * reserved:		     63    (1)
 */
 
@@ -65,8 +65,8 @@ typedef u64 iomux_v3_cfg_t;
 #define MUX_MODE_SHIFT		36
 #define MUX_MODE_MASK		((iomux_v3_cfg_t)0x1f << MUX_MODE_SHIFT)
 #define MUX_PAD_CTRL_SHIFT	41
-#define MUX_PAD_CTRL_MASK	((iomux_v3_cfg_t)0x1ffff << MUX_PAD_CTRL_SHIFT)
-#define MUX_SEL_INPUT_SHIFT	58
+#define MUX_PAD_CTRL_MASK	((iomux_v3_cfg_t)0x3ffff << MUX_PAD_CTRL_SHIFT)
+#define MUX_SEL_INPUT_SHIFT	59
 #define MUX_SEL_INPUT_MASK	((iomux_v3_cfg_t)0xf << MUX_SEL_INPUT_SHIFT)
 
 #define MUX_PAD_CTRL(x)		((iomux_v3_cfg_t)(x) << MUX_PAD_CTRL_SHIFT)
@@ -85,7 +85,7 @@ typedef u64 iomux_v3_cfg_t;
  * Use to set PAD control
  */
 
-#define NO_PAD_CTRL			(1 << 16)
+#define NO_PAD_CTRL			(1 << 17)
 #define PAD_CTL_DVS			(1 << 13)
 #define PAD_CTL_HYS			(1 << 8)
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
