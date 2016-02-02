Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aQcGE-0006tf-W5
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:48:16 +0100
Message-Id: <1454424497-7157-34-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 33/34] scripts: imx-usb-loader: Do not zero out boot_data_ptr
To: Barebox List <barebox@lists.infradead.org>

This shouldn't be necessary. So far it didn't hurt either, but now
this invalidates the signature of the image, so keep the image
unmodified.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 24cfe05..ed27831 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -941,8 +941,6 @@ static int get_dl_start(unsigned char *p, unsigned char *file_start,
 		*plugin = ((struct imx_boot_data *)bd)->plugin;
 		((struct imx_boot_data *)bd)->plugin = 0;
 
-		hdr->boot_data_ptr = 0;
-
 		break;
 	}
 	}
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
