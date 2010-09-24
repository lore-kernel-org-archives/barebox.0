Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz63F-0002q2-N5
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 11:02:50 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Sep 2010 13:01:17 +0200
Message-Id: <1285326078-13582-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285326078-13582-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285326078-13582-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] imx-ipu-fb: set default bits per pixel at 16 for mx3
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/video/imx-ipu-fb.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index f6ac26f..94b99f2 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -748,6 +748,7 @@ static int mx3fb_set_par(struct fb_info *info)
 		rgb = &def_rgb_24;
 		break;
 	case 16:
+	default:
 		rgb = &def_rgb_16;
 		break;
 	}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
