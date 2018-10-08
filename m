Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P8p-0006JI-1j
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:36:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id s5-v6so7867579pfj.7
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:35:32 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:35:18 -0700
Message-Id: <20181008063518.18164-5-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063518.18164-1-andrew.smirnov@gmail.com>
References: <20181008063518.18164-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 4/4] bbu: Simplify bbu_find_handler_by_device()
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
index 75c3221d5..5cb09e4eb 100644
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
