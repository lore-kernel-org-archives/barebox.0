Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDj-00031T-5S
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:40 +0200
Message-Id: <1461051412-25711-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
References: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/14] include/common.h: remove unused struct memarea_info
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/common.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/include/common.h b/include/common.h
index f653c04..cab98d6 100644
--- a/include/common.h
+++ b/include/common.h
@@ -87,16 +87,6 @@ static inline void dump_stack(void)
 }
 #endif
 
-#define MEMAREA_SIZE_SPECIFIED 1
-
-struct memarea_info {
-	struct device_d *device;
-	unsigned long start;
-	unsigned long end;
-	unsigned long size;
-	unsigned long flags;
-};
-
 int parse_area_spec(const char *str, loff_t *start, loff_t *size);
 
 /* Just like simple_strtoul(), but this one honors a K/M/G suffix */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
