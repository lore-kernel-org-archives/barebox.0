Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh82e-0003yW-Ep
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:13:00 +0000
Received: by mail-pl1-x644.google.com with SMTP id u18so3166574plq.7
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 23:12:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 23:12:00 -0800
Message-Id: <20190109071210.18896-12-andrew.smirnov@gmail.com>
In-Reply-To: <20190109071210.18896-1-andrew.smirnov@gmail.com>
References: <20190109071210.18896-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/21] soc: imx: gpcv2: correct PGC offset
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 3637f12faf507b0a4b8ac1e7115fc99583ab1db3

  Correct MIPI/PCIe/USB_HSIC's PGC offset based on
  design RTL, the values in the Reference Manual
  (Rev. 1, 01/2018 and the older ones) are incorrect.

  The correct offset values should be as below:

  0x800 ~ 0x83F: PGC for core0 of A7 platform;
  0x840 ~ 0x87F: PGC for core1 of A7 platform;
  0x880 ~ 0x8BF: PGC for SCU of A7 platform;
  0xA00 ~ 0xA3F: PGC for fastmix/megamix;
  0xC00 ~ 0xC3F: PGC for MIPI PHY;
  0xC40 ~ 0xC7F: PGC for PCIe_PHY;
  0xC80 ~ 0xCBF: PGC for USB OTG1 PHY;
  0xCC0 ~ 0xCFF: PGC for USB OTG2 PHY;
  0xD00 ~ 0xD3F: PGC for USB HSIC PHY;

  Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
  Fixes: 03aa12629fc4 ("soc: imx: Add GPCv2 power gating driver")
  Acked-by: Andrey Smirnov <andrew.smirnov@gmail.com>
  Reviewed-by: Fabio Estevam <fabio.estevam@nxp.com>
  Signed-off-by: Shawn Guo <shawnguo@kernel.org>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/soc/imx/gpcv2.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index f16598e97..158bfc02d 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -45,10 +45,15 @@
 
 #define GPC_M4_PU_PDN_FLG		0x1bc
 
-
-#define PGC_MIPI			4
-#define PGC_PCIE			5
-#define PGC_USB_HSIC			8
+/*
+ * The PGC offset values in Reference Manual
+ * (Rev. 1, 01/2018 and the older ones) GPC chapter's
+ * GPC_PGC memory map are incorrect, below offset
+ * values are from design RTL.
+ */
+#define PGC_MIPI                       16
+#define PGC_PCIE                       17
+#define PGC_USB_HSIC                   20
 #define GPC_PGC_CTRL(n)			(0x800 + (n) * 0x40)
 #define GPC_PGC_SR(n)			(GPC_PGC_CTRL(n) + 0xc)
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
