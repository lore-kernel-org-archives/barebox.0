Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjbqt-0006NA-Qj
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:55:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Jun 2012 21:55:00 +0200
Message-Id: <1340740503-7003-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
References: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] make st_size in struct stat 64 bit
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ls.c        |    2 +-
 include/linux/stat.h |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/ls.c b/commands/ls.c
index ad609f3..fbcbadc 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -35,7 +35,7 @@ static void ls_one(const char *path, struct stat *s)
 	unsigned int namelen = strlen(path);
 
 	mkmodestr(s->st_mode, modestr);
-	printf("%s %10lu %*.*s\n", modestr, s->st_size, namelen, namelen, path);
+	printf("%s %10llu %*.*s\n", modestr, s->st_size, namelen, namelen, path);
 }
 
 int ls(const char *path, ulong flags)
diff --git a/include/linux/stat.h b/include/linux/stat.h
index bc7dce4..af022c5 100644
--- a/include/linux/stat.h
+++ b/include/linux/stat.h
@@ -52,7 +52,7 @@ struct stat {
 	unsigned short st_gid;
 	unsigned short st_rdev;
 	unsigned short __pad2;
-	unsigned long  st_size;
+	loff_t  st_size;
 	unsigned long  st_blksize;
 	unsigned long  st_blocks;
 	unsigned long  st_atime;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
