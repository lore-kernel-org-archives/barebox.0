Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui0Tt-0004Qm-4c
 for barebox@lists.infradead.org; Thu, 30 May 2013 10:53:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 12:52:48 +0200
Message-Id: <1369911168-15654-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369911168-15654-1-git-send-email-s.hauer@pengutronix.de>
References: <1369911168-15654-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] usb: i.MX chipidea: Add overcurrent disable flag for i.MX6
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c |  3 +++
 drivers/usb/imx/imx-usb-misc.c | 10 +++++++++-
 include/usb/chipidea-imx.h     |  2 ++
 3 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 508dbd8..928ebf3 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -108,6 +108,9 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 		return -EINVAL;
 	}
 
+	if (of_find_property(ci->dev->device_node, "disable-over-current"))
+		ci->flags |= MXC_EHCI_DISABLE_OVERCURRENT;
+
 	return 0;
 }
 
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 2729684..f2cec4f 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -347,6 +347,9 @@ static __maybe_unused struct imx_usb_misc_data mx5_data = {
 	.init = mx5_initialize_usb_hw,
 };
 
+#define MX6_USB_CTRL(n)			((n) * 4)
+#define MX6_USB_CTRL_OVER_CUR_DIS	(1 << 7)
+
 static void mx6_hsic_pullup(unsigned long reg, int on)
 {
 	u32 val;
@@ -364,10 +367,15 @@ static void mx6_hsic_pullup(unsigned long reg, int on)
 static __maybe_unused int mx6_initialize_usb_hw(void __iomem *base, int port,
 		unsigned int flags)
 {
+	u32 val;
+
 	switch (port) {
 	case 0:
-		break;
 	case 1:
+		val = readl(base + MX6_USB_CTRL(port));
+		if (flags & MXC_EHCI_DISABLE_OVERCURRENT)
+			val |= MX6_USB_CTRL_OVER_CUR_DIS;
+		writel(val, base + MX6_USB_CTRL(port));
 		break;
 	case 2: /* HSIC port */
 		mx6_hsic_pullup(0x388, 0);
diff --git a/include/usb/chipidea-imx.h b/include/usb/chipidea-imx.h
index 3f9f61e..5801cf1 100644
--- a/include/usb/chipidea-imx.h
+++ b/include/usb/chipidea-imx.h
@@ -32,6 +32,8 @@
 #define MXC_EHCI_WAKEUP_ENABLED		(1 << 12)
 #define MXC_EHCI_ITC_NO_THRESHOLD	(1 << 13)
 
+#define MXC_EHCI_DISABLE_OVERCURRENT	(1 << 14)
+
 enum imx_usb_mode {
 	IMX_USB_MODE_HOST,
 	IMX_USB_MODE_DEVICE,
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
