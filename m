Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout07.rmx.de ([94.199.90.95])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrJx-0004lx-8k
 for barebox@lists.infradead.org; Tue, 21 Jan 2020 11:03:51 +0000
Received: from kdin02.retarus.com (unknown [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout07.rmx.de (Postfix) with ESMTPS id 4825Hx6lbdzBtl8
 for <barebox@lists.infradead.org>; Tue, 21 Jan 2020 12:03:41 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 4825Hs14dcz2TTJr
 for <barebox@lists.infradead.org>; Tue, 21 Jan 2020 12:03:37 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Tue, 21 Jan 2020 12:02:41 +0100
Message-ID: <20200121110241.14724-1-ceggers@arri.de>
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
Subject: [PATCH] watchdog: Fix error path
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

In case of an error (e.g. dev_add_param_tristate_ro() returns -ENOSYS),
device registration must be reverted.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 drivers/watchdog/wd_core.c | 30 +++++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index b6e2a37b1..34040408f 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -171,8 +171,10 @@ int watchdog_register(struct watchdog *wd)
 		return ret;
 
 	p = dev_add_param_tristate_ro(&wd->dev, "running", &wd->running);
-	if (IS_ERR(p))
-		return PTR_ERR(p);
+	if (IS_ERR(p)) {
+		ret = PTR_ERR(p);
+		goto error_unregister;
+	}
 
 	if (!wd->priority)
 		wd->priority = dev_get_watchdog_priority(wd->hwdev);
@@ -180,8 +182,10 @@ int watchdog_register(struct watchdog *wd)
 	p = dev_add_param_uint32(&wd->dev, "priority",
 				 watchdog_set_priority, NULL,
 				 &wd->priority, "%u", wd);
-	if (IS_ERR(p))
-		return PTR_ERR(p);
+	if (IS_ERR(p)) {
+		ret = PTR_ERR(p);
+		goto error_unregister;
+	}
 
 	/* set some default sane value */
 	if (!wd->timeout_max)
@@ -189,8 +193,10 @@ int watchdog_register(struct watchdog *wd)
 
 	p = dev_add_param_uint32_ro(&wd->dev, "timeout_max",
 			&wd->timeout_max, "%u");
-	if (IS_ERR(p))
-		return PTR_ERR(p);
+	if (IS_ERR(p)) {
+		ret = PTR_ERR(p);
+		goto error_unregister;
+	}
 
 	if (IS_ENABLED(CONFIG_WATCHDOG_POLLER)) {
 		if (!wd->poller_timeout_cur ||
@@ -199,12 +205,14 @@ int watchdog_register(struct watchdog *wd)
 
 		p = dev_add_param_uint32(&wd->dev, "timeout_cur", watchdog_set_cur,
 				NULL, &wd->poller_timeout_cur, "%u", wd);
-		if (IS_ERR(p))
-			return PTR_ERR(p);
+		if (IS_ERR(p)) {
+			ret = PTR_ERR(p);
+			goto error_unregister;
+		}
 
 		ret = watchdog_register_poller(wd);
 		if (ret)
-			return ret;
+			goto error_unregister;
 	}
 
 	list_add_tail(&wd->list, &watchdog_list);
@@ -213,6 +221,10 @@ int watchdog_register(struct watchdog *wd)
 			wd->priority);
 
 	return 0;
+
+error_unregister:
+	unregister_device(&wd->dev);
+	return ret;
 }
 EXPORT_SYMBOL(watchdog_register);
 
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
