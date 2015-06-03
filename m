Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z04qT-0005V2-5B
 for barebox@lists.infradead.org; Wed, 03 Jun 2015 09:20:22 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1A0BBA00263
 for <barebox@lists.infradead.org>; Wed,  3 Jun 2015 11:21:23 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 3 Jun 2015 11:19:01 +0200
Message-Id: <1433323143-32522-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH v3 1/3] bootsource: Add NET bootsource
To: barebox@lists.infradead.org

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 common/bootsource.c  | 1 +
 include/bootsource.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/common/bootsource.c b/common/bootsource.c
index 7f3d51f..707b079 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -35,6 +35,7 @@ static const char *bootsource_str[] = {
 	[BOOTSOURCE_ONENAND] = "onenand",
 	[BOOTSOURCE_HD] = "harddisk",
 	[BOOTSOURCE_USB] = "usb",
+	[BOOTSOURCE_NET] = "net",
 };
 
 static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
diff --git a/include/bootsource.h b/include/bootsource.h
index 4bca9b9..c6d3b3a 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -15,6 +15,7 @@ enum bootsource {
 	BOOTSOURCE_ONENAND,
 	BOOTSOURCE_HD,
 	BOOTSOURCE_USB,
+	BOOTSOURCE_NET,
 };
 
 #define BOOTSOURCE_INSTANCE_UNKNOWN	-1
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
