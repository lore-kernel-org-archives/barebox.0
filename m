Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gMEzV-00023q-3l
 for barebox@lists.infradead.org; Mon, 12 Nov 2018 16:23:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gMEzJ-0003bY-OL
 for barebox@lists.infradead.org; Mon, 12 Nov 2018 17:22:57 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 12 Nov 2018 17:22:57 +0100
Message-Id: <20181112162257.2209-2-l.stach@pengutronix.de>
In-Reply-To: <20181112162257.2209-1-l.stach@pengutronix.de>
References: <20181112162257.2209-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] video: ipuv3: use non-fractional clock for parallel
 display
To: barebox@lists.infradead.org

There is no need to keep DI and parent clock in sync for the parallel
display interface, but some displays really don't like the jitter
introduced by using a fractional clock.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-pd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/imx-ipu-v3/imx-pd.c b/drivers/video/imx-ipu-v3/imx-pd.c
index 09d8a3ae2a84..601be35880ac 100644
--- a/drivers/video/imx-ipu-v3/imx-pd.c
+++ b/drivers/video/imx-ipu-v3/imx-pd.c
@@ -45,7 +45,7 @@ static int imx_pd_ioctl(struct vpl *vpl, unsigned int port,
 	case IMX_IPU_VPL_DI_MODE:
 		mode = data;
 
-		mode->di_clkflags = IPU_DI_CLKMODE_SYNC;
+		mode->di_clkflags = IPU_DI_CLKMODE_NON_FRACTIONAL;
 		mode->bus_format = imx_pd->bus_format;
 		return 0;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
