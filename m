Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xu1mk-0002An-SU
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 16:19:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2014 17:15:27 +0100
Message-Id: <1417104932-13960-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417104932-13960-1-git-send-email-s.hauer@pengutronix.de>
References: <1417104932-13960-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] video: EDID: depends on I2C
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 34177b3..f096a54 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -87,6 +87,7 @@ config DRIVER_VIDEO_SIMPLEFB
 	  based on the active barebox framebuffer.
 
 config DRIVER_VIDEO_EDID
+	depends on I2C
 	bool "Add EDID support"
 	help
 	  This enabled support for reading and parsing EDID data from an attached
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
