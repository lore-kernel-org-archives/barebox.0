Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXn6w-0000GP-L1
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 07:39:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Apr 2014 09:39:25 +0200
Message-Id: <1397029166-4412-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1397029166-4412-1-git-send-email-s.hauer@pengutronix.de>
References: <1397029166-4412-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] saveenv: Properly detect write errors
To: barebox@lists.infradead.org

The return value check of the write call is completely bogus. We
check if we have written at minimum sizeof(struct envfs_super) bytes
instead of all bytes. Properly check for all bytes written instead
and allow write to write less bytes than requested.
Do not use write_full because this file is compiled for userspace
aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 9f4e098..bf813b4 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -201,11 +201,16 @@ int envfs_save(const char *filename, const char *dirname)
 		goto out1;
 	}
 
-	if (write(envfd, buf, size  + sizeof(struct envfs_super)) <
-			sizeof(struct envfs_super)) {
-		perror("write");
-		ret = -1;	/* FIXME */
-		goto out;
+	size += sizeof(struct envfs_super);
+
+	while (size) {
+		ssize_t now = write(envfd, buf, size);
+		if (now < 0) {
+			ret = -errno;
+			goto out;
+		}
+
+		size -= now;
 	}
 
 	ret = 0;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
