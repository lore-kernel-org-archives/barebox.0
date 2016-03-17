Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by merlin.infradead.org with esmtp (Exim 4.85 #2 (Red Hat Linux))
 id 1agUky-0003g8-QB
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 10:02:18 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id BB87427A706
 for <barebox@lists.infradead.org>; Thu, 17 Mar 2016 11:01:28 +0100 (CET)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Thu, 17 Mar 2016 11:00:26 +0100
Message-Id: <1458208829-25570-11-git-send-email-alexander.stein@systec-electronic.com>
In-Reply-To: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
References: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 10/13] Move GFP_NOFS to barebox-wrapper
To: barebox@lists.infradead.org
Cc: Daniel Krueger <daniel.krueger@systec-electronic.com>, Alexander Stein <alexander.stein@systec-electronic.com>

This will also be used by upcoming UBIFS update.

Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
---
 drivers/mtd/ubi/ubi-barebox.h   | 2 --
 include/linux/barebox-wrapper.h | 3 ++-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/ubi/ubi-barebox.h b/drivers/mtd/ubi/ubi-barebox.h
index 03069d0..ab970aa 100644
--- a/drivers/mtd/ubi/ubi-barebox.h
+++ b/drivers/mtd/ubi/ubi-barebox.h
@@ -42,8 +42,6 @@ static inline unsigned long copy_from_user(void *dest, const void *src,
 
 /* common */
 
-#define GFP_NOFS			1
-
 #define wake_up_process(...)	do { } while (0)
 
 #define BUS_ID_SIZE		20
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 15fd726..fc1b5c2 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -20,7 +20,8 @@
 #define KERN_DEBUG      ""   /* debug-level messages                 */
 #define KERN_CONT       ""
 
-#define GFP_KERNEL	0
+#define GFP_KERNEL ((gfp_t) 0)
+#define GFP_NOFS ((gfp_t) 1)
 
 typedef int     gfp_t;
 
-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
