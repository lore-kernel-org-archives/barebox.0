Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGUxI-0005Hd-79
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 18:04:08 +0000
Received: by mail-pg0-x244.google.com with SMTP id e9so1667560pgc.1
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2016 10:03:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Dec 2016 10:03:00 -0800
Message-Id: <1481565788-9115-14-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
References: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 13/21] i.MX: iomuxv3: Add low-level pad configuration
 routine
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add low-level pad configuration routine that can be used by early boot
code as well as leveraged by pinmux driver.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/iomux-v3.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index 470f774..0205ec7 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -147,6 +147,23 @@ static inline void iomux_v3_setup_pad(void __iomem *iomux, unsigned int flags,
 		writel(input_val, iomux + input_reg);
 }
 
+static inline void imx_setup_pad(void __iomem *iomux, iomux_v3_cfg_t __pad)
+{
+	union iomux_v3_pad pad = { .raw = __pad };
+	uint32_t pad_ctrl;
+
+	pad_ctrl = (pad.cfg.pad_ctrl & NO_PAD_CTRL) ? 0 : pad.cfg.pad_ctrl,
+
+	iomux_v3_setup_pad(iomux, 0,
+			   pad.cfg.mux_ctrl_ofs,
+			   pad.cfg.pad_ctrl_ofs,
+			   pad.cfg.sel_input_ofs,
+			   pad.cfg.mux_mode,
+			   pad_ctrl,
+			   pad.cfg.sel_inp);
+}
+
+
 
 /*
  * setups a single pad in the iomuxer
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
