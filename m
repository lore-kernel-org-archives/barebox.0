Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp45.i.mail.ru ([94.100.177.105])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThEHt-0004Lr-Jx
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 06:53:26 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat,  8 Dec 2012 10:51:26 +0400
Message-Id: <1354949486-12917-8-git-send-email-shc_work@mail.ru>
In-Reply-To: <1354949486-12917-1-git-send-email-shc_work@mail.ru>
References: <1354949486-12917-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 8/8] Fix wrong Kconfig reference to ARCH_IMX31
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/video/Kconfig |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index f09ffdf..354e68b 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -15,14 +15,14 @@ config IMXFB_DRIVER_VIDEO_IMX_OVERLAY
 
 config DRIVER_VIDEO_IMX_IPU
 	bool "i.MX31/35 framebuffer driver"
-	depends on ARCH_IMX35 || ARCH_IMX_31
+	depends on ARCH_IMX35 || ARCH_IMX31
 	help
 	  Add support for the IPU framebuffer device found on
 	  i.MX31 and i.MX35 CPUs.
 
 config DRIVER_VIDEO_IMX_IPU_OVERLAY
 	bool "i.MX31/35 framebuffer overlay support"
-	depends on DRIVER_VIDEO_IMX_IPU && (ARCH_IMX35 || ARCH_IMX_31)
+	depends on DRIVER_VIDEO_IMX_IPU && (ARCH_IMX35 || ARCH_IMX31)
 
 config DRIVER_VIDEO_STM
 	bool "i.MX23/28 framebuffer driver"
-- 
1.7.8.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
