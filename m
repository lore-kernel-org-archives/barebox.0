Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUhIi-0003Ei-Gr
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 15:05:25 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0000U7-BK
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PUhIZ-0003xV-8V
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 16:05:15 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 20 Dec 2010 16:05:04 +0100
Message-Id: <1292857509-13881-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
References: <1292857509-13881-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 05/10] Fix default framebuffer 'enable' set
To: barebox@lists.infradead.org

To setup the default 'enable' setting the "dev_set_param(dev, "enable", "0");"
does not work as expected. After the call the parameter is still "<NULL>".
This is due to any change of the setting is rejected, if the same setting
is already active.
This patch also let the default setting be successfull, but only calls the
graphics backend if a change happens.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/video/fb.c |    9 ++++-----
 1 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index ab2c5eb..bef4147 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -39,14 +39,13 @@ static int fb_enable_set(struct device_d *dev, struct param_d *param,
 
 	enable = simple_strtoul(val, NULL, 0);
 
-	if (info->enabled == !!enable)
-		return 0;
-
 	if (enable) {
-		info->fbops->fb_enable(info);
+		if (!info->enabled)
+			info->fbops->fb_enable(info);
 		new = "1";
 	} else {
-		info->fbops->fb_disable(info);
+		if (info->enabled)
+			info->fbops->fb_disable(info);
 		new = "0";
 	}
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
