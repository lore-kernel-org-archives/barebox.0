Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKMct-0006v6-S2
 for barebox@lists.infradead.org; Wed, 29 Jul 2015 08:22:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jul 2015 10:21:48 +0200
Message-Id: <1438158108-30486-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Limit data_abort_mask to !PBL
To: Barebox List <barebox@lists.infradead.org>

To make memory_display usable in PBL

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/abort.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/abort.h b/include/abort.h
index 7f14cb0..326467c 100644
--- a/include/abort.h
+++ b/include/abort.h
@@ -3,7 +3,7 @@
 
 #include <asm/barebox.h>
 
-#ifdef ARCH_HAS_DATA_ABORT_MASK
+#if defined ARCH_HAS_DATA_ABORT_MASK && !defined __PBL__
 
 /*
  * data_abort_mask - ignore data aborts
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
