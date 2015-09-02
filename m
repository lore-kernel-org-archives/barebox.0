Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZX38m-0000JW-2j
 for barebox@lists.infradead.org; Wed, 02 Sep 2015 08:11:32 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZX38P-00078q-B3
 for barebox@lists.infradead.org; Wed, 02 Sep 2015 10:11:09 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  2 Sep 2015 10:11:09 +0200
Message-Id: <1441181469-18130-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1441181469-18130-1-git-send-email-l.stach@pengutronix.de>
References: <1441181469-18130-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH resend 2/2] video: imx-hdmi: depend on EDID support
To: barebox@lists.infradead.org

HDMI support is not generally useful without EDID support.

Fixes:
In function `imx_hdmi_ioctl':
undefined reference to `edid_read_i2c'
undefined reference to `edid_to_display_timings'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/imx-ipu-v3/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/imx-ipu-v3/Kconfig b/drivers/video/imx-ipu-v3/Kconfig
index 386ff5bc2ef0..b5ee4efb1566 100644
--- a/drivers/video/imx-ipu-v3/Kconfig
+++ b/drivers/video/imx-ipu-v3/Kconfig
@@ -13,6 +13,7 @@ config DRIVER_VIDEO_IMX_IPUV3_LVDS
 
 config DRIVER_VIDEO_IMX_IPUV3_HDMI
 	bool "IPUv3 HDMI support"
+	depends on DRIVER_VIDEO_EDID
 	select OFDEVICE
 
 endif
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
