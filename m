Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jXQ-00025p-KS
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:09:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:09:43 +0200
Message-Id: <1301922585-8144-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922585-8144-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922585-8144-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] fs: errno should be set correctly before the end of
	functions
To: barebox@lists.infradead.org

Otherwise we end up with errno not being set correctly
if a filesystem driver uses the standard open/close/read/write
functions to access its backing store.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 2f61929..f684d45 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -292,8 +292,6 @@ static int path_check_prereq(const char *path, unsigned int flags)
 	struct stat s;
 	unsigned int m;
 
-	errno = 0;
-
 	if (stat(path, &s)) {
 		if (flags & S_UB_DOES_NOT_EXIST)
 			return 0;
@@ -325,6 +323,8 @@ static int path_check_prereq(const char *path, unsigned int flags)
 		errno = -ENOTDIR;
 		goto out;
 	}
+
+	errno = 0;
 out:
 	return errno;
 }
@@ -800,6 +800,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 			e = e->next;
 		e->next = entry;
 	}
+	errno = 0;
 out:
 	free(path);
 	return errno;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
