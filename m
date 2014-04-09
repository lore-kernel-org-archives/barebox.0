Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXn6r-0000GO-T8
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 07:39:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Apr 2014 09:39:26 +0200
Message-Id: <1397029166-4412-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] loadenv: detect truncated environment files
To: barebox@lists.infradead.org

Properly detect when an environment file is truncated. This can happen
when a previous saveenv failed because the environment partition is too
small.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index bf813b4..abd69c5 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -409,11 +409,24 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 		goto out;
 
 	buf = xmalloc(size);
-	ret = read(envfd, buf, size);
-	if (ret < size) {
-		perror("read");
-		ret = -errno;
-		goto out;
+
+	while (size) {
+		ssize_t now;
+
+		now = read(envfd, buf, size);
+		if (now < 0) {
+			perror("read");
+			ret = -errno;
+			goto out;
+		}
+
+		if (!now) {
+			printf("%s: premature end of file\n", filename);
+			ret = -EINVAL;
+			goto out;
+		}
+
+		size -= now;
 	}
 
 	ret = envfs_check_data(&super, buf, size);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
