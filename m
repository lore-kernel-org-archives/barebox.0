Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0kdM-0002ZX-5N
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 08:06:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Apr 2017 10:06:11 +0200
Message-Id: <20170419080612.19797-2-s.hauer@pengutronix.de>
In-Reply-To: <20170419080612.19797-1-s.hauer@pengutronix.de>
References: <20170419080612.19797-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] cp: Use posix_basename() on source argument
To: Barebox List <barebox@lists.infradead.org>

The GNU basename version does not work with strings which have a
trailing slash. Use posix_basename instead. With this cp -r
can properly work on source arguments which have a trailing slash,
i.e. "cp /dir1/ dst".

Reported-by: Peter Mamonov <pmamonov@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/cp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/cp.c b/commands/cp.c
index 4f1c068dd6..54934dd64f 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -76,7 +76,8 @@ static int do_cp(int argc, char *argv[])
 
 	for (i = optind; i < argc - 1; i++) {
 		char *dst;
-		dst = concat_path_file(argv[argc - 1], basename(argv[i]));
+
+		dst = concat_path_file(argv[argc - 1], posix_basename(argv[i]));
 
 		if (recursive)
 			ret = copy_recursive(argv[i], dst);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
