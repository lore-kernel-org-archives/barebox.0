Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDug3-0005lm-Pk
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 14:55:37 +0000
Received: by mail-pg0-x242.google.com with SMTP id e9so16634854pgc.1
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 06:55:19 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Dec 2016 06:54:44 -0800
Message-Id: <1480949684-18520-17-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/16] i.MX: imx-usb-misc: Add Vybrid support
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
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
