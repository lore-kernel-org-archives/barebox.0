Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhOhR-0005Lt-Hk
	for barebox@lists.infradead.org; Tue, 16 Feb 2010 14:47:02 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 16 Feb 2010 15:46:20 +0100
Message-Id: <1266331586-11253-6-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1266331586-11253-5-git-send-email-mkl@pengutronix.de>
References: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-2-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-3-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-4-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-5-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 05/11] drivers/video/Makefile: cleanup propper indention
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/video/Makefile |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 1e0d1b9..45ee09e 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -1,3 +1,4 @@
-obj-$(CONFIG_VIDEO)	+= fb.o
-obj-$(CONFIG_DRIVER_VIDEO_IMX)	+= imx.o
-obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU) += imx-ipu-fb.o
+obj-$(CONFIG_VIDEO)			+= fb.o
+
+obj-$(CONFIG_DRIVER_VIDEO_IMX)		+= imx.o
+obj-$(CONFIG_DRIVER_VIDEO_IMX_IPU)	+= imx-ipu-fb.o
-- 
1.6.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
