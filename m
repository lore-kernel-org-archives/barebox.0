Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22f.google.com ([2a00:1450:4013:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJI8K-0001Xp-Mi
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 07:45:26 +0000
Received: by mail-ea0-f175.google.com with SMTP id z10so2393091ead.20
 for <barebox@lists.infradead.org>; Thu, 27 Feb 2014 23:45:03 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Fri, 28 Feb 2014 08:44:27 +0100
Message-Id: <1393573468-31105-3-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
References: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
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
Subject: [RFC 2/3] fs: read: handle zero files
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 fs/fs.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 1b43c61..9584495 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -804,9 +804,6 @@ static ssize_t __read(FILE *f, void *buf, size_t count)
 	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size)
 		count = f->size - f->pos;
 
-	if (!count)
-		return 0;
-
 	ret = fsdrv->read(dev, f, buf, count);
 
 	if (ret < 0)
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
