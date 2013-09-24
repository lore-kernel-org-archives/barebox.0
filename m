Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOMkD-00050k-M4
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 07:09:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Sep 2013 09:08:46 +0200
Message-Id: <1380006527-2599-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
References: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] command: Let builtin command take precedence
To: barebox@lists.infradead.org

In theory we can overwrite a builtin command with a script. However,
I don't know a single case where this has been done. Scripts are
often more unflexible than commands so it's unlikely that a script
can extend the functionality of a builtin command. Moreover, the
internal command is no longer accessible once it's overwritten by
a script.

Invert this logic so that a builtin command can overwrite an existing
script. This will help when the 'boot' script is converted to a
builting command. Then with old environments the builtin command will
be used instead of the script.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/binfmt.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/binfmt.c b/common/binfmt.c
index 7dcf5d7..f2ff624 100644
--- a/common/binfmt.c
+++ b/common/binfmt.c
@@ -60,6 +60,9 @@ int execute_binfmt(int argc, char **argv)
 	if (strchr(argv[0], '/'))
 		return binfmt_run(argv[0], argc, argv);
 
+	if (find_cmd(argv[0]))
+		return execute_command(argc, &argv[0]);
+
 	path = find_execable(argv[0]);
 	if (path) {
 		ret = binfmt_run(path, argc, argv);
@@ -67,7 +70,7 @@ int execute_binfmt(int argc, char **argv)
 		return ret;
 	}
 
-	return execute_command(argc, &argv[0]);
+	return -ENOENT;
 }
 
 int binfmt_register(struct binfmt_hook *b)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
