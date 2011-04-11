Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Hwy-000668-O0
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:18:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:18:41 +0200
Message-Id: <1302531521-7439-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] cp command: handle directories as last argument
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/cp.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/commands/cp.c b/commands/cp.c
index ae8719b..3428105 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -31,6 +31,7 @@
 #include <libbb.h>
 #include <fs.h>
 #include <malloc.h>
+#include <libgen.h>
 
 /**
  * @param[in] cmdtp FIXME
@@ -60,7 +61,7 @@ static int do_cp(struct command *cmdtp, int argc, char *argv[])
 	for (i = 1; i < argc - 1; i++) {
 		if (last_is_dir) {
 			char *dst;
-			dst = concat_path_file(argv[argc - 1], argv[i]);
+			dst = concat_path_file(argv[argc - 1], basename(argv[i]));
 			ret = copy_file(argv[i], dst);
 			if (ret)
 				goto out;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
