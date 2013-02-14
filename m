Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5umx-00052v-2u
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:07:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Feb 2013 10:07:24 +0100
Message-Id: <1360832847-22414-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360832847-22414-1-git-send-email-s.hauer@pengutronix.de>
References: <1360832847-22414-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] USB chipidea i.MX: Fix PTS mask for HSIC
To: barebox@lists.infradead.org

bit25 is part of the PTS bits, so mask it out before rewriting it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c |    2 +-
 include/usb/chipidea-imx.h     |    1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 5b4c081..64bb866 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -20,7 +20,7 @@
 #include <usb/chipidea-imx.h>
 #include <usb/ulpi.h>
 
-#define MXC_EHCI_PORTSC_MASK (0xf << 28)
+#define MXC_EHCI_PORTSC_MASK ((0xf << 28) | (1 << 25))
 
 static int imx_chipidea_probe(struct device_d *dev)
 {
diff --git a/include/usb/chipidea-imx.h b/include/usb/chipidea-imx.h
index e98cc89..252d488 100644
--- a/include/usb/chipidea-imx.h
+++ b/include/usb/chipidea-imx.h
@@ -9,6 +9,7 @@
 #define MXC_EHCI_MODE_UTMI_16_BIT	((0 << 30) | (1 << 28))
 #define MXC_EHCI_MODE_PHILIPS		(1 << 30)
 #define MXC_EHCI_MODE_ULPI		(2 << 30)
+#define MXC_EHCI_MODE_HSIC		(1 << 25)
 #define MXC_EHCI_MODE_SERIAL		(3 << 30)
 
 /*
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
