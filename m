Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ezQDQ-0008Gi-8n
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 17:10:57 +0000
Received: by mail-lf0-x242.google.com with SMTP id j68-v6so19324676lfg.13
 for <barebox@lists.infradead.org>; Fri, 23 Mar 2018 10:10:40 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Fri, 23 Mar 2018 20:12:23 +0300
Message-Id: <1521825143-9979-1-git-send-email-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH] video: tc358767: set num_modes=0 if no valid mode found
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com, cphealy@gmail.com

Since commit f986661 "video: ipu: register framebuffer,
even when no modes are found" value returned from
VPL_GET_VIDEOMODES ioctl is ignored. So set valid num_modes
in error case to avoid crash in register_framebuffer.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/video/tc358767.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index 5ad5cb4..d4749b1 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -1258,6 +1258,7 @@ static int tc_filter_videomodes(struct tc_data *tc, struct display_timings *timi
 	} while (1);
 
 	free(timings->modes);
+	timings->num_modes = 0;
 	timings->modes = NULL;
 
 	if (!num_modes) {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
