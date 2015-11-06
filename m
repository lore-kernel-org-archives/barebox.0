Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZuZxA-0003cs-R2
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 05:52:49 +0000
Received: by lfs39 with SMTP id 39so37458058lfs.3
 for <barebox@lists.infradead.org>; Thu, 05 Nov 2015 21:52:27 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  6 Nov 2015 08:52:17 +0300
Message-Id: <1446789139-4781-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] fbconsole: no need to copy extra line
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

From: Aleksey Kuleshov <rndfax@yandex.ru>

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 drivers/video/fbconsole.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index b10503e..c38d13c 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -192,8 +192,9 @@ static void printchar(struct fbc_priv *priv, int c)
 
 		buf = gui_screen_render_buffer(priv->sc);
 
-		memcpy(buf, buf + line_height, line_height * (priv->rows + 1));
+		memcpy(buf, buf + line_height, line_height * priv->rows);
 		memset(buf + line_height * priv->rows, 0, line_height);
+
 		gu_screen_blit(priv->sc);
 		priv->y = priv->rows;
 	}
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
