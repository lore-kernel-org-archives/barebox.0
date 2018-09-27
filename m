Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5Nf4-0007xu-Dc
 for barebox@lists.infradead.org; Thu, 27 Sep 2018 04:12:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id g2-v6so877356pgu.11
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2018 21:11:55 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 26 Sep 2018 21:11:29 -0700
Message-Id: <20180927041129.29584-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180927041129.29584-1-andrew.smirnov@gmail.com>
References: <20180927041129.29584-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] bbu: Simplify bbu_find_handler_by_device()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplify bbu_find_handler_by_device() by making use of
devpath_to_name() as well as some basic recursion to avoid coding the
same loop twice.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/bbu.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index fabd94966..7b65fe45c 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -120,22 +120,18 @@ struct bbu_handler *bbu_find_handler_by_name(const char *name)
 struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
 {
 	struct bbu_handler *handler;
+	const char *devname = devpath_to_name(devicepath);
 
 	if (!devicepath)
 		return NULL;
 
-	list_for_each_entry(handler, &bbu_image_handlers, list)
+	list_for_each_entry(handler, &bbu_image_handlers, list) {
 		if (!strcmp(handler->devicefile, devicepath))
 			return handler;
+	}
 
-	if (strncmp(devicepath, "/dev/", 5))
-		return NULL;
-
-	devicepath += 5;
-
-	list_for_each_entry(handler, &bbu_image_handlers, list)
-		if (!strcmp(handler->devicefile, devicepath))
-			return handler;
+	if (devname != devicepath)
+		return bbu_find_handler_by_device(devname);
 
 	return NULL;
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
