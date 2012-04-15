Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQo8-00005k-Tq
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:52:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:51:54 +0200
Message-Id: <1334501517-29478-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334501517-29478-1-git-send-email-s.hauer@pengutronix.de>
References: <1334501517-29478-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] automount: Pass automount pass as environment variable
To: barebox@lists.infradead.org

This makes it possible to pass a command sequence to the automount
command instead of only a script (a command sequence would get confused
by the additional argument)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |   13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 24ef258..64997cc 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -31,6 +31,8 @@
 #include <init.h>
 #include <module.h>
 #include <libbb.h>
+#include <magicvar.h>
+#include <environment.h>
 
 void *read_file(const char *filename, size_t *size)
 {
@@ -289,7 +291,6 @@ static void automount_mount(const char *path, int instat)
 	int ret;
 
 	list_for_each_entry(am, &automount_list, list) {
-		char *cmd;
 		int len_path = strlen(path);
 		int len_am_path = strlen(am->path);
 
@@ -312,9 +313,10 @@ static void automount_mount(const char *path, int instat)
 		if (*(path + len_am_path) != 0 && *(path + len_am_path) != '/')
 			continue;
 
-		cmd = asprintf("%s %s", am->cmd, am->path);
-		ret = run_command(cmd, 0);
-		free(cmd);
+		setenv("automount_path", am->path);
+		export("automount_path");
+		ret = run_command(am->cmd, 0);
+		setenv("automount_path", NULL);
 
 		if (ret)
 			printf("running automount command '%s' failed\n",
@@ -325,6 +327,9 @@ static void automount_mount(const char *path, int instat)
 		return;
 	}
 }
+
+BAREBOX_MAGICVAR(automount_path, "mountpath passed to automount scripts");
+
 #else
 static void automount_mount(const char *path, int instat)
 {
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
