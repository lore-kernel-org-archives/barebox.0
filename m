Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQbcz-0008Q3-Ta
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 16:49:43 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Wed,  6 Jun 2018 18:49:11 +0200
Message-Id: <20180606164911.5104-1-r.hieber@pengutronix.de>
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
Subject: [PATCH] scripts: gitignore omap3-usb-loader binary
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 scripts/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/.gitignore b/scripts/.gitignore
index 2a9ae6bdcf..5aa2943a71 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -26,3 +26,4 @@ mxsimage
 mxsboot
 mxs-usb-loader
 omap4_usbboot
+omap3-usb-loader
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
