Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGod1-0000HE-Q8
 for barebox@lists.infradead.org; Fri, 11 Sep 2020 19:22:36 +0000
Received: from geraet.fritz.box (muedsl-82-207-193-004.citykom.de
 [82.207.193.4]) (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 737D3E0006
 for <barebox@lists.infradead.org>; Fri, 11 Sep 2020 19:22:30 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 11 Sep 2020 21:22:16 +0200
Message-Id: <20200911192216.99575-1-ahmad@a3f.at>
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
Subject: [PATCH] fixup! workqueues: Add support for delayed work
To: barebox@lists.infradead.org

Otherwise, we run into a compile error, because get_time_ns() is used
below without declaration.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/work.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/work.h b/include/work.h
index 7ae596760a8b..0785bb3a8818 100644
--- a/include/work.h
+++ b/include/work.h
@@ -2,6 +2,7 @@
 #define __WORK_H
 
 #include <linux/list.h>
+#include <clock.h>
 
 struct work_struct {
 	struct list_head list;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
