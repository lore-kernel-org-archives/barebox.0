Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b0VNl-00070P-FP
 for barebox@lists.infradead.org; Wed, 11 May 2016 14:45:02 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id C25B127A6F9
 for <barebox@lists.infradead.org>; Wed, 11 May 2016 16:44:35 +0200 (CEST)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Wed, 11 May 2016 16:44:28 +0200
Message-Id: <1462977868-12691-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 1/1] reset_source: export reset_source_set_priority
To: barebox@lists.infradead.org
Cc: Alexander Stein <alexander.stein@systec-electronic.com>

In commit 4a7534bf07e ("reset-source: Allow different priorities") the
function name changed from reset_source_set to reset_source_set_priority.
Do that change in EXPORT_SYMBOL() accordingly.
reset_source_set still exists but is a static inline now.

Fixes: 4a7534bf07e ("reset-source: Allow different priorities")
Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
---
 common/reset_source.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/reset_source.c b/common/reset_source.c
index 0a69f90..06e2ca8 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -50,7 +50,7 @@ void reset_source_set_priority(enum reset_src_type st, unsigned int priority)
 	pr_debug("Setting reset source to %s with priority %d\n",
 			reset_src_names[reset_source], priority);
 }
-EXPORT_SYMBOL(reset_source_set);
+EXPORT_SYMBOL(reset_source_set_priority);
 
 static int reset_source_init(void)
 {
-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
