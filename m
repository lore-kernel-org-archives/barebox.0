Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U87q2-0002KR-GA
 for barebox@lists.infradead.org; Wed, 20 Feb 2013 11:27:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Feb 2013 12:27:48 +0100
Message-Id: <1361359668-3331-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ubiformat: open flash image readonly
To: barebox@lists.infradead.org

ubiformat only needs readonly access to the image to flash, so
open it readonly. Opening r/w may fail for example on tftp servers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubiformat.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 3bb2c9a..efe1fde 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -233,7 +233,7 @@ static int open_file(off_t *sz)
 		return sys_errmsg("cannot open \"%s\"", args.image);
 
 	*sz = st.st_size;
-	fd  = open(args.image, O_RDWR);
+	fd  = open(args.image, O_RDONLY);
 	if (fd < 0)
 		return sys_errmsg("cannot open \"%s\"", args.image);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
