Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfTFf-0005S7-ML
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:27:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Dec 2012 11:27:45 +0100
Message-Id: <1354530468-25823-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354530468-25823-1-git-send-email-s.hauer@pengutronix.de>
References: <1354530468-25823-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ls command: call stat() only when necessary
To: barebox@lists.infradead.org

When calling ls in short mode we do not have to call stat()
for additional informations because we do not use them. This
speeds up ls on filesystems on which stat() is expensive
because the barebox filesystem support always has to iterate
over the directory tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ls.c |    9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/commands/ls.c b/commands/ls.c
index 1fdb244..f2d9903 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -73,12 +73,13 @@ int ls(const char *path, ulong flags)
 
 	while ((d = readdir(dir))) {
 		sprintf(tmp, "%s/%s", path, d->d_name);
-		if (lstat(tmp, &s))
-			goto out;
-		if (flags & LS_COLUMN)
+		if (flags & LS_COLUMN) {
 			string_list_add_sorted(&sl, d->d_name);
-		else
+		} else {
+			if (lstat(tmp, &s))
+				goto out;
 			ls_one(d->d_name, tmp, &s);
+		}
 	}
 
 	closedir(dir);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
