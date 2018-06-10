Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([185.138.26.202]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRuOg-0002cR-DV
 for barebox@lists.infradead.org; Sun, 10 Jun 2018 07:04:24 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 10 Jun 2018 07:04:08 +0000
Message-Id: <20180610070408.1088-1-akurz@blala.de>
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
Subject: [PATCH] i.MX: iomuxv3: restore NO_PAD_CTRL semantic
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Alexander Kurz <akurz@blala.de>

A NO_PAD_CTRL flag used to keep a pad configuration untouched.
With commit 094820a63bfd ("i.MX: iomuxv3: Use helper functions in iomux-v3.h")
the NO_PAD_CTRL semantic changed to set a pad configurations to zero, which
breaks non-DT boards, where NO_PAD_CTRL is freqently used to keep a boot-up
default pad configuration, which often is non zero.

Restore the old semantic, dont write PAD_CTRL when NO_PAD_CTRL is set.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/include/mach/iomux-v3.h | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index 994c15c04..d1a72a2cf 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -159,14 +159,16 @@ static inline void iomux_v3_setup_pad(void __iomem *iomux, unsigned int flags,
 
 static inline void imx_setup_pad(void __iomem *iomux, iomux_v3_cfg_t pad)
 {
-	uint32_t pad_ctrl;
+	uint32_t conf_reg, pad_ctrl;
 
+	/* dont write PAD_CTRL when NO_PAD_CTRL is set */
 	pad_ctrl = IOMUX_PAD_CTRL(pad);
-	pad_ctrl = (pad_ctrl & NO_PAD_CTRL) ? 0 : pad_ctrl,
+	conf_reg = IOMUX_PAD_CTRL_OFS(pad);
+	conf_reg = (pad_ctrl & NO_PAD_CTRL) ? 0 : conf_reg,
 
 	iomux_v3_setup_pad(iomux, 0,
 			   IOMUX_CTRL_OFS(pad),
-			   IOMUX_PAD_CTRL_OFS(pad),
+			   conf_reg,
 			   IOMUX_SEL_INPUT_OFS(pad),
 			   IOMUX_MODE(pad),
 			   pad_ctrl,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
