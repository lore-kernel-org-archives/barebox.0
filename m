Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJj-00052O-Lx
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id u6so8945656plm.8
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:19 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:35 -0800
Message-Id: <20190129065549.29161-6-andrew.smirnov@gmail.com>
In-Reply-To: <20190129065549.29161-1-andrew.smirnov@gmail.com>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 05/19] common: firmware: Don't use FILE_SIZE_STREAM directly
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't use FILE_SIZE_STREAM directly, use DEVFS_IS_CHARACTER_DEV to
denote that underlying cdev is a "character device".

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/firmware.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/firmware.c b/common/firmware.c
index 250fef537..9d55d73e7 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -177,7 +177,7 @@ int firmwaremgr_register(struct firmware_handler *fh)
 	cdev = &mgr->cdev;
 
 	cdev->name = xstrdup(fh->id);
-	cdev->size = FILE_SIZE_STREAM;
+	cdev->flags = DEVFS_IS_CHARACTER_DEV;
 	cdev->ops = &firmware_ops;
 	cdev->priv = mgr;
 	cdev->dev = fh->dev;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
