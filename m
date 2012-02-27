Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S1w5n-0004Ca-AK
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 08:38:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Feb 2012 09:37:40 +0100
Message-Id: <1330331860-9702-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] cp: fix memory leak
To: barebox@lists.infradead.org

dst is an allocated string, we have to free it also when
copy_file fails.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/cp.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/cp.c b/commands/cp.c
index f78e3de..565eca0 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -77,9 +77,9 @@ static int do_cp(struct command *cmdtp, int argc, char *argv[])
 			char *dst;
 			dst = concat_path_file(argv[argc - 1], basename(argv[i]));
 			ret = copy_file(argv[i], dst, verbose);
+			free(dst);
 			if (ret)
 				goto out;
-			free(dst);
 		} else {
 			ret = copy_file(argv[i], argv[argc - 1], verbose);
 			if (ret)
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
