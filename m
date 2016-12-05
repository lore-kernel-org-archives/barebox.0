Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDug0-0005Z4-GM
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 14:55:34 +0000
Received: by mail-pg0-x244.google.com with SMTP id 3so16684826pgd.0
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 06:55:14 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Dec 2016 06:54:36 -0800
Message-Id: <1480949684-18520-9-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
References: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/16] i.MX: iomuxv3: Add helper type to deconstruct
 iomux_v3_cfg_t values
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/iomux-v3.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index 3bf457f..470f774 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -78,6 +78,22 @@ typedef u64 iomux_v3_cfg_t;
 		((iomux_v3_cfg_t)(_sel_input_ofs) << MUX_SEL_INPUT_OFS_SHIFT) | \
 		((iomux_v3_cfg_t)(_sel_input) << MUX_SEL_INPUT_SHIFT))
 
+
+struct iomux_v3_pad_configuration {
+	u64 mux_ctrl_ofs  : 12;
+	u64 pad_ctrl_ofs  : 12;
+	u64 sel_input_ofs : 12;
+	u64 mux_mode      : 5;
+	u64 pad_ctrl      : 18;
+	u64 sel_inp       : 4;
+	u64 reserved      : 1;
+} __packed;
+
+union iomux_v3_pad {
+	iomux_v3_cfg_t raw;
+	struct iomux_v3_pad_configuration cfg;
+};
+
 #define NEW_PAD_CTRL(cfg, pad)	(((cfg) & ~MUX_PAD_CTRL_MASK) | MUX_PAD_CTRL(pad))
 /*
  * Use to set PAD control
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
