Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKq-00021g-4D
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:40 +0000
Received: by mail-pl0-x243.google.com with SMTP id 61-v6so7797227plb.2
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:51:01 -0700
Message-Id: <20180414175103.10125-16-andrew.smirnov@gmail.com>
In-Reply-To: <20180414175103.10125-1-andrew.smirnov@gmail.com>
References: <20180414175103.10125-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/17] bootsource: Add BOOTSOURCE_CAN
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add BOOTSOURCE_CAN for SoCs that can boot from CAN interface.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/bootsource.c  | 1 +
 include/bootsource.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/common/bootsource.c b/common/bootsource.c
index 707b07924..78ecd8267 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -36,6 +36,7 @@ static const char *bootsource_str[] = {
 	[BOOTSOURCE_HD] = "harddisk",
 	[BOOTSOURCE_USB] = "usb",
 	[BOOTSOURCE_NET] = "net",
+	[BOOTSOURCE_CAN] = "can",
 };
 
 static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
diff --git a/include/bootsource.h b/include/bootsource.h
index c6d3b3a98..064f6b9a2 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -16,6 +16,7 @@ enum bootsource {
 	BOOTSOURCE_HD,
 	BOOTSOURCE_USB,
 	BOOTSOURCE_NET,
+	BOOTSOURCE_CAN,
 };
 
 #define BOOTSOURCE_INSTANCE_UNKNOWN	-1
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
