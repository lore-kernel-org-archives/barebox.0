Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMLF-0001nw-K5
 for barebox@lists.infradead.org; Mon, 24 Jun 2019 10:36:54 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 24 Jun 2019 12:36:42 +0200
Message-Id: <20190624103642.19184-1-rhi@pengutronix.de>
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
Subject: [PATCH] images: ignore i.MX signed (USB) images and outputs of
 imx-csf tool
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

Fixes: efd400504cdf4ae56224 ("images: imx: Add targets for signed images and signed usb images")
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 images/.gitignore | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/images/.gitignore b/images/.gitignore
index 7a7493781471..662ff6fd6d7b 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -5,6 +5,12 @@
 *.imximg.prep
 *.imximg.signed
 *.imx-sram-img
+*.simximg
+*.simximg.csfbin
+*.uimximg
+*.uimximg.csfbin
+*.usimximg
+*.usimximg.csfbin
 *.map
 *.src
 *.kwbimg
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
