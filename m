Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8z8L-00080p-R4
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 19:50:03 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 02FDDDC5AFA
 for <barebox@lists.infradead.org>; Tue,  4 Sep 2012 21:55:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  4 Sep 2012 21:50:00 +0200
Message-Id: <1346788217-16042-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120904194720.GB32603@game.jcrosoft.org>
 <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 02/19] fs: fix rmdir with symlink
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fs.c |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 6a85513..914df5a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1253,6 +1253,12 @@ int rmdir (const char *pathname)
 	char *freep = p;
 	int ret;
 
+	ret = path_check_prereq(pathname, S_IFLNK);
+	if (!ret) {
+		ret = -ENOTDIR;
+		goto out;
+	}
+
 	ret = path_check_prereq(pathname, S_IFDIR | S_UB_IS_EMPTY);
 	if (ret)
 		goto out;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
