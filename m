Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAOc6-0005Bx-4V
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 18:51:23 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon,  3 Feb 2014 22:50:49 +0400
Message-Id: <1391453450-20873-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] scripts/kwbimage: Fix resource leak in image_create()
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 scripts/kwbimage.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index cd87456..c085d4d 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -1343,6 +1343,7 @@ static int image_create(const char *input, const char *output,
 	rewind(fcfg);
 
 	ret = image_create_config_parse(fcfg, image_cfg, &cfgn);
+	fclose(fcfg);
 	if (ret) {
 		free(image_cfg);
 		return -1;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
