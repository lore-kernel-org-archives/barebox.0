Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4VWo-0005Ff-Ro
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 16:15:13 +0000
Received: by mail-pf0-x243.google.com with SMTP id y68so786485pfb.1
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 08:14:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Nov 2016 08:14:02 -0800
Message-Id: <1478708056-7875-15-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 14/28] i.MX: clk: Port imx_clk_mux_flags from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port imx_clk_mux_flags from Linux, to simplify clock code porting.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/clk.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index fd43fc2..970f65c 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -30,6 +30,14 @@ static inline struct clk *imx_clk_fixed_factor(const char *name,
 	return clk_fixed_factor(name, parent, mult, div, CLK_SET_RATE_PARENT);
 }
 
+static inline struct clk *imx_clk_mux_flags(const char *name, void __iomem *reg,
+					    u8 shift, u8 width,
+					    const char **parents, u8 num_parents,
+					    unsigned long flags)
+{
+	return clk_mux(name, reg, shift, width, parents, num_parents, flags);
+}
+
 static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents)
 {
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
