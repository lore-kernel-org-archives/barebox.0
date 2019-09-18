Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAYRB-0007lY-SD
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 11:48:00 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Wed, 18 Sep 2019 13:47:49 +0200
Message-Id: <1568807269-306454-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH] chdir(): add LOOKUP_DIRECTORY flag to filename_lookup()
To: barebox@lists.infradead.org

This makes sure that automount points get handled even if the path
doesn't end with a '/'.

Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
 fs/fs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index c6cb499..901beab 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2690,7 +2690,7 @@ int chdir(const char *pathname)
 	struct path path;
 	int ret;
 
-	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW, &path);
+	ret = filename_lookup(AT_FDCWD, getname(pathname), LOOKUP_FOLLOW | LOOKUP_DIRECTORY, &path);
 	if (ret)
 		goto out;
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
