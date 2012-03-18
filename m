Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9H4b-0006Pm-2p
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 14:27:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 18 Mar 2012 15:26:41 +0100
Message-Id: <1332080804-13132-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
References: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] hush source: expand $PATH
To: barebox@lists.infradead.org

The behaviour of other shells suggest that with source or '.'
the path should be resolved using the PATH environment variable. Do
the same in barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |   17 ++++++++++++++++-
 1 files changed, 16 insertions(+), 1 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 1dae0e8..053d9a5 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1678,10 +1678,25 @@ BAREBOX_CMD_END
 
 static int do_source(int argc, char *argv[])
 {
+	char *path;
+	int ret;
+
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	return source_script(argv[1], argc - 1, argv + 1);
+	if (strchr(argv[1], '/')) {
+		path = xstrdup(argv[1]);
+	} else {
+		path = find_execable(argv[1]);
+		if (!path)
+			return 1;
+	}
+
+	ret = source_script(path, argc - 1, argv + 1);
+
+	free(path);
+
+	return ret;
 }
 
 static const char *source_aliases[] = { ".", NULL};
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
