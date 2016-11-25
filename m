Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cABWk-0004Mo-32
 for barebox@lists.infradead.org; Fri, 25 Nov 2016 08:06:38 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0089EA0043F
 for <barebox@lists.infradead.org>; Fri, 25 Nov 2016 09:06:51 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 25 Nov 2016 09:06:05 +0100
Message-Id: <1480061167-21590-5-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
References: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 4/6] fs: Remove O_TRUNC check for devices when open files
To: barebox@lists.infradead.org

Don't check for the file type here. Devices may have truncate
callbacks. Otherwise the caller should check if O_TRUNC is possible.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 fs/fs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index b7e7c63..2b4659c 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -682,7 +682,7 @@ int open(const char *pathname, int flags, ...)
 	if (ret)
 		goto out;
 
-	if (!(s.st_mode & S_IFCHR) && (flags & O_TRUNC)) {
+	if (flags & O_TRUNC) {
 		ret = fsdrv->truncate(&fsdev->dev, f, 0);
 		f->size = 0;
 		if (ret)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
