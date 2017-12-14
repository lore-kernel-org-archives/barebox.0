Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra1.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ePSpH-0004IH-5L
 for barebox@lists.infradead.org; Thu, 14 Dec 2017 12:41:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra1.kalray.eu (Postfix) with ESMTP id CAFA82808A8
 for <barebox@lists.infradead.org>; Thu, 14 Dec 2017 13:40:56 +0100 (CET)
Received: from zimbra1.kalray.eu ([127.0.0.1])
 by localhost (zimbra1.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id P85pnXxLBF6J for <barebox@lists.infradead.org>;
 Thu, 14 Dec 2017 13:40:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra1.kalray.eu (Postfix) with ESMTP id 33CEC281147
 for <barebox@lists.infradead.org>; Thu, 14 Dec 2017 13:40:56 +0100 (CET)
Received: from zimbra1.kalray.eu ([127.0.0.1])
 by localhost (zimbra1.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 05H7lofLBRfO for <barebox@lists.infradead.org>;
 Thu, 14 Dec 2017 13:40:56 +0100 (CET)
Received: from zimbra1.kalray.eu (localhost [127.0.0.1])
 by zimbra1.kalray.eu (Postfix) with ESMTP id 219FA2808A8
 for <barebox@lists.infradead.org>; Thu, 14 Dec 2017 13:40:56 +0100 (CET)
Date: Thu, 14 Dec 2017 13:40:56 +0100 (CET)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Message-ID: <438665629.65151347.1513255256053.JavaMail.zimbra@kalray.eu>
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
Subject: [PATCH] Bootm: remove uimage_close done later in bootm_boot
To: Barebox List <barebox@lists.infradead.org>

From 24e24f9998342b23cd8de4145c8098f93c60cdc7 Mon Sep 17 00:00:00 2001
From: Clement Leger <clement.leger@kalray.eu>
Date: Thu, 14 Dec 2017 13:29:50 +0100
Subject: [PATCH] Bootm: fix double uimage_close

When uimage crc fails, the error handling path call uimage_close in
bootm_open_os_uimage and also in bootm_boot. This leads to crash/exception.
Keep the main error handling path in bootm_boot and remove uimage_close from
bootm_open_os_uimage to avoid double uimage_close.
---
 common/bootm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index eebaa799f..c23898bea 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -455,7 +455,6 @@ static int bootm_open_os_uimage(struct image_data *data)
 		if (ret) {
 			printf("Checking data crc failed with %s\n",
 					strerror(-ret));
-			uimage_close(data->os);
 			return ret;
 		}
 	}
-- 
2.15.0.276.g89ea799

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
