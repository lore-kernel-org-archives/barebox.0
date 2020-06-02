Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1o7-0001jB-N1
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 07:58:03 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 09:57:55 +0200
Message-Id: <20200602075757.4734-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/3] common: restart: number unnamed restart handlers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Follow-up commit allows referencing specific restart handler by name.
Restart handlers default to "default" as name when none is given.
Number them sequentially instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/restart.c  | 4 +++-
 include/restart.h | 1 -
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/restart.c b/common/restart.c
index b19ae54657c0..dd15c8d5c362 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -19,6 +19,7 @@
 #include <of.h>
 
 static LIST_HEAD(restart_handler_list);
+static unsigned resetidx;
 
 /**
  * restart_handler_register() - register a handler for restarting the system
@@ -31,7 +32,7 @@ static LIST_HEAD(restart_handler_list);
 int restart_handler_register(struct restart_handler *rst)
 {
 	if (!rst->name)
-		rst->name = RESTART_DEFAULT_NAME;
+		rst->name = basprintf("reset%u", resetidx);
 	if (!rst->priority)
 		rst->priority = RESTART_DEFAULT_PRIORITY;
 
@@ -40,6 +41,7 @@ int restart_handler_register(struct restart_handler *rst)
 	pr_debug("registering restart handler \"%s\" with priority %d\n",
 			rst->name, rst->priority);
 
+	resetidx++;
 	return 0;
 }
 
diff --git a/include/restart.h b/include/restart.h
index 7ec0910e9404..6880b03b936f 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -15,7 +15,6 @@ int restart_handler_register(struct restart_handler *);
 int restart_handler_register_fn(void (*restart_fn)(struct restart_handler *));
 
 #define RESTART_DEFAULT_PRIORITY 100
-#define RESTART_DEFAULT_NAME "default"
 
 unsigned int of_get_restart_priority(struct device_node *node);
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
