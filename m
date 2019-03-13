Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40ky-0005C6-6R
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 10:05:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id y124so1017438pfy.7
 for <barebox@lists.infradead.org>; Wed, 13 Mar 2019 03:05:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 Mar 2019 00:25:19 -0700
Message-Id: <20190313072519.25873-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2] usb: dwc3: Toggle GCTL.CORESOFTRESET as a first step
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Toggle GCTL.CORESOFTRESET before trying to access any of the block's
registers. Without this additional step, first read of DWC3_GHWPARAMS*
that follows results in assertion of GSTS.CSRTIMEOUT and IP block
stuck in a non-functional state.

Note that all above has only been observerd on i.MX8MQ (ZII Zest
board) for USB1 controller. USB2 doesn't seem to be affected by this.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Changes since [v1]:

    - Dropped 100 ms delay
    
[v1] http://lists.infradead.org/pipermail/barebox/2019-March/037501.html

 drivers/usb/dwc3/core.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 2e7031a34..60fd6318d 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -663,6 +663,25 @@ static void dwc3_check_params(struct dwc3 *dwc)
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
+	/*
+	 * Similar reset sequence in U-Boot has a 100ms delay here. In
+	 * practice reset sequence seem to work as expected even
+	 * without a delay.
+	 */
+
+	reg = dwc3_readl(dwc->regs, DWC3_GCTL);
+	reg &= ~DWC3_GCTL_CORESOFTRESET;
+	dwc3_writel(dwc->regs, DWC3_GCTL, reg);
+}
+
 static int dwc3_probe(struct device_d *dev)
 {
 	struct dwc3		*dwc;
@@ -695,6 +714,8 @@ static int dwc3_probe(struct device_d *dev)
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
