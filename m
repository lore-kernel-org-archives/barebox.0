Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh82W-0003oC-Fq
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:12:38 +0000
Received: by mail-pg1-x541.google.com with SMTP id w7so2892732pgp.13
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 23:12:35 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 23:11:53 -0800
Message-Id: <20190109071210.18896-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190109071210.18896-1-andrew.smirnov@gmail.com>
References: <20190109071210.18896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/21] base: driver: Drop redundant list_empty() check
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/driver.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 1fd890542..1fd6bbc01 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -269,7 +269,7 @@ static int device_probe_deferred(void)
 		success = false;
 
 		if (list_empty(&deferred))
-			break;
+			return 0;
 
 		list_for_each_entry_safe(dev, tmp, &deferred, active) {
 			list_del(&dev->active);
@@ -285,9 +285,6 @@ static int device_probe_deferred(void)
 		}
 	} while (success);
 
-	if (list_empty(&deferred))
-		return 0;
-
 	list_for_each_entry(dev, &deferred, active)
 		dev_err(dev, "probe permanently deferred\n");
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
