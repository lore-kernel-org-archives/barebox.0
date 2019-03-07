Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nlX-0004kb-00
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:48:32 +0000
Received: by mail-pf1-x442.google.com with SMTP id g6so10796925pfh.13
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:48:30 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:48:13 -0800
Message-Id: <20190307074813.19664-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] usb: dwc3: Toggle GCTL.CORESOFTRESET as a first step
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Toggle GCTL.CORESOFTRESET before trying to access any of the block's
registers. Without this additional step, first read of DWC3_GHWPARAMS*
that follows results in assertion of GSTS.CSRTIMEOUT and IP block
stuck in a non-functional state.

Note that all above has only been observed on i.MX8MQ (ZII Zest board)
for USB1 controller. USB2 doesn't seem to be affected by this.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/dwc3/core.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 2e7031a34..1fc24a441 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -663,6 +663,21 @@ static void dwc3_check_params(struct dwc3 *dwc)
 	}
 }
 
+static void dwc3_coresoft_reset(struct dwc3 *dwc)
+{
+	u32 reg;
+
+	reg = dwc3_readl(dwc->regs, DWC3_GCTL);
+	reg |= DWC3_GCTL_CORESOFTRESET;
+	dwc3_writel(dwc->regs, DWC3_GCTL, reg);
+
+	mdelay(100);
+
+	reg = dwc3_readl(dwc->regs, DWC3_GCTL);
+	reg &= ~DWC3_GCTL_CORESOFTRESET;
+	dwc3_writel(dwc->regs, DWC3_GCTL, reg);
+}
+
 static int dwc3_probe(struct device_d *dev)
 {
 	struct dwc3		*dwc;
@@ -695,6 +710,8 @@ static int dwc3_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
+	dwc3_coresoft_reset(dwc);
+
 	dwc3_cache_hwparams(dwc);
 
 	ret = dwc3_core_init(dwc);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
