Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aToRj-0007fu-GQ
 for barebox@lists.infradead.org; Thu, 11 Feb 2016 10:26:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Feb 2016 11:25:37 +0100
Message-Id: <1455186337-20008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] bootm: Fix resource_size_t format specifier
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 79833e0..2306783 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -247,8 +247,8 @@ done:
 	printf("\n");
 done1:
 	printf("initrd is at %pa-%pa\n",
-		data->initrd_res->start,
-		data->initrd_res->end);
+		&data->initrd_res->start,
+		&data->initrd_res->end);
 
 	return 0;
 }
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
