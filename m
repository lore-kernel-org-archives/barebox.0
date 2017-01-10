Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy3o-0001I6-ER
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:08 +0000
Received: by mail-pf0-x244.google.com with SMTP id y143so8292558pfb.1
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:09:04 -0800
Message-Id: <20170110150913.31416-12-andrew.smirnov@gmail.com>
In-Reply-To: <20170110150913.31416-1-andrew.smirnov@gmail.com>
References: <20170110150913.31416-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 11/20] i.MX: iomuxv3: Add helper macros to deconstruct
 iomux_v3_cfg_t values
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/iomux-v3.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index 3bf457f..1ecd11b 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -78,6 +78,14 @@ typedef u64 iomux_v3_cfg_t;
 		((iomux_v3_cfg_t)(_sel_input_ofs) << MUX_SEL_INPUT_OFS_SHIFT) | \
 		((iomux_v3_cfg_t)(_sel_input) << MUX_SEL_INPUT_SHIFT))
 
+#define IOMUX_PAD_FIELD(name, pad) 	(((pad) & name##_MASK) >> name##_SHIFT)
+#define IOMUX_CTRL_OFS(pad)		IOMUX_PAD_FIELD(MUX_CTRL_OFS, pad)
+#define IOMUX_MODE(pad)			IOMUX_PAD_FIELD(MUX_MODE, pad)
+#define IOMUX_SEL_INPUT_OFS(pad)	IOMUX_PAD_FIELD(MUX_SEL_INPUT_OFS, pad)
+#define IOMUX_SEL_INPUT(pad)		IOMUX_PAD_FIELD(MUX_SEL_INPUT, pad)
+#define IOMUX_PAD_CTRL_OFS(pad)		IOMUX_PAD_FIELD(MUX_PAD_CTRL_OFS, pad)
+#define IOMUX_PAD_CTRL(pad)		IOMUX_PAD_FIELD(MUX_PAD_CTRL, pad)
+
 #define NEW_PAD_CTRL(cfg, pad)	(((cfg) & ~MUX_PAD_CTRL_MASK) | MUX_PAD_CTRL(pad))
 /*
  * Use to set PAD control
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
