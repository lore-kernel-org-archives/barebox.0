Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy40-0002m6-0W
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:17 +0000
Received: by mail-pf0-x243.google.com with SMTP id b22so13009435pfd.3
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:09:12 -0800
Message-Id: <20170110150913.31416-20-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 19/20] i.MX: imx-usb-misc: Add Vybrid support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to do usbmisc initialization on VF610 family of SoCs. Based on
analogous code from Linux kernel.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/imx/imx-usb-misc.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 7c18ca2..9cae440 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -422,6 +422,28 @@ static __maybe_unused struct imx_usb_misc_data mx6_data = {
 	.post_init = mx6_post_init,
 };
 
+#define VF610_OVER_CUR_DIS		BIT(7)
+
+static __maybe_unused int vf610_initialize_usb_hw(void __iomem *base, int port,
+		unsigned int flags)
+{
+	u32 reg;
+
+	if (port >= 1)
+		return -EINVAL;
+
+	if (flags & MXC_EHCI_DISABLE_OVERCURRENT) {
+		reg = readl(base);
+		writel(reg | VF610_OVER_CUR_DIS, base);
+	}
+
+	return 0;
+}
+
+static __maybe_unused struct imx_usb_misc_data vf610_data = {
+	.init = vf610_initialize_usb_hw,
+};
+
 static struct platform_device_id imx_usbmisc_ids[] = {
 #ifdef CONFIG_ARCH_IMX25
 	{
@@ -519,6 +541,12 @@ static __maybe_unused struct of_device_id imx_usbmisc_dt_ids[] = {
 		.data = &mx6_data,
 	},
 #endif
+#ifdef CONFIG_ARCH_VF610
+	{
+		.compatible = "fsl,vf610-usbmisc",
+		.data = &vf610_data,
+	},
+#endif
 	{
 		/* sentinel */
 	},
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
