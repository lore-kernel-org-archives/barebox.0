Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pdpdg-00062g-4k
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 19:48:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Jan 2011 20:48:44 +0100
Message-Id: <1295034524-18722-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295034524-18722-1-git-send-email-s.hauer@pengutronix.de>
References: <1295034524-18722-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fb: update cdev map_base
To: barebox@lists.infradead.org

Calling fb_activate_var potentially changes the framebuffer address,
so we have to update the fb0 cdev afterwards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index aad0e1f..ba34b9c 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -79,6 +79,8 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
 
 	ret = info->fbops->fb_activate_var(info);
 
+	dev->map_base = (unsigned long)info->screen_base;
+
 	if (ret == 0)
 		dev_param_set_generic(dev, param, val);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
