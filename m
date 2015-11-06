Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22d.google.com ([2a00:1450:4010:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZuZxC-0003dG-Ma
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 05:52:52 +0000
Received: by lfbf136 with SMTP id f136so67342374lfb.0
 for <barebox@lists.infradead.org>; Thu, 05 Nov 2015 21:52:28 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  6 Nov 2015 08:52:19 +0300
Message-Id: <1446789139-4781-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1446789139-4781-1-git-send-email-antonynpavlov@gmail.com>
References: <1446789139-4781-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] fb: alloc or free shadowfb whether fb enabled or disabled
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

From: Aleksey Kuleshov <rndfax@yandex.ru>

Resolution can't be changed anyway once fb_enable() has been called,
since no corresponding fb_disable() call appears in the code.

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 drivers/video/fb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index bd8bab0..d159d60 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -99,9 +99,9 @@ static int fb_enable_set(struct param_d *param, void *priv)
 	enable = info->p_enable;
 
 	if (enable)
-		info->fbops->fb_enable(info);
+		fb_enable(info);
 	else
-		info->fbops->fb_disable(info);
+		fb_disable(info);
 
 	return 0;
 }
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
