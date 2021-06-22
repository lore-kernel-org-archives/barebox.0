Delivery-date: Tue, 22 Jun 2021 10:27:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvblG-00088N-IQ
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 10:27:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvblF-000383-Gc
	for lore@pengutronix.de; Tue, 22 Jun 2021 10:27:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59lgm2tzMB2Ztrj7kQuZw50oUfcqUxk0+8p60xitTw8=; b=jJ4scyNNZoztBY
	IfvFhq3S4oDbjTw83koL1NPJOJDtOLAONPRk/jP+xGINZ77y8512MMj2MBd1OhIvCyK14utbAAo6H
	zsRNhKWfXojd5fYr58QgPPW2cWGR91ZbJAD64XaurkfdLBIMkqRygNBq1CfUZPoKeBn4mK0OUQc/s
	EYT9Le8DWtSTgfjoXpU4v00H0dumWcqoJeUfGSRB6RHiMPBBD08hP1yLAMLjRkqXgj4WF0LBIGG0s
	64bM80qRZSPG3rXtZPClxAwb3Ta/kpqkCxaKDVZoBStXD0Inftva/XTsdH4aMh/GIp6HBUiVQraOM
	laFrm3u43z9OOmVoVxEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvbk3-006E8h-FM; Tue, 22 Jun 2021 08:26:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvbji-006E15-ME
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 08:26:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbjh-0002ie-GD; Tue, 22 Jun 2021 10:26:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lvbjh-0005ho-0x; Tue, 22 Jun 2021 10:26:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Jun 2021 10:26:12 +0200
Message-Id: <20210622082617.18011-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210622082617.18011-1-a.fatoum@pengutronix.de>
References: <20210622082617.18011-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_012622_754407_D99F2F92 
X-CRM114-Status: GOOD (  19.05  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 3/8] common: move workqueue handling from poller_call() to
 sched()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Workqueues are run out of poller_call, not because of a dependency, but
because when they were added, poller_call was directly called from
is_timeout.

With the addition of bthreads, there is now a general resched() function
that runs pollers and switches between bthreads. It makes sense to move
workqueue handling there as well to keep scheduling matter contained in
a single function. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig   |  5 +++++
 common/Makefile  |  1 +
 common/poller.c  | 23 ++++++++---------------
 common/sched.c   | 26 ++++++++++++++++++++++++++
 include/poller.h |  8 ++++++--
 include/sched.h  | 10 ++++------
 include/slice.h  |  6 ++----
 7 files changed, 52 insertions(+), 27 deletions(-)
 create mode 100644 common/sched.c

diff --git a/common/Kconfig b/common/Kconfig
index c7826f591a79..54f1eb633a32 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -997,11 +997,16 @@ config BAREBOXCRC32_TARGET
 	  'bareboxcrc32' is a userspacetool to generate the crc32 checksums the same way
 	  barebox does. Say yes here to build it for the target.
 
+config HAS_SCHED
+	bool
+
 config POLLER
 	bool "generic polling infrastructure"
+	select HAS_SCHED
 
 config BTHREAD
 	bool "barebox co-operative (green) thread infrastructure"
+	select HAS_SCHED
 	depends on HAS_ARCH_SJLJ
 	help
 	 barebox threads are lightweight cooperative (green) threads that are
diff --git a/common/Makefile b/common/Makefile
index 382a4f661f67..16582534ec47 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -50,6 +50,7 @@ extra-$(CONFIG_MODULES)		+= module.lds
 obj-$(CONFIG_OFTREE)		+= oftree.o
 obj-$(CONFIG_PARTITION_DISK)	+= partitions.o partitions/
 obj-$(CONFIG_PASSWORD)		+= password.o
+obj-$(CONFIG_HAS_SCHED)		+= sched.o
 obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_BTHREAD)		+= bthread.o
 obj-$(CONFIG_RESET_SOURCE)	+= reset_source.o
diff --git a/common/poller.c b/common/poller.c
index 61da5698d225..0409d3cf8111 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -10,11 +10,14 @@
 #include <param.h>
 #include <poller.h>
 #include <clock.h>
-#include <work.h>
-#include <slice.h>
 
 static LIST_HEAD(poller_list);
-int poller_active;
+static int __poller_active;
+
+bool poller_active(void)
+{
+	return __poller_active;
+}
 
 int poller_register(struct poller_struct *poller, const char *name)
 {
@@ -110,23 +113,13 @@ int poller_async_unregister(struct poller_async *pa)
 void poller_call(void)
 {
 	struct poller_struct *poller, *tmp;
-	bool run_workqueues = !slice_acquired(&command_slice);
-
-	if (poller_active)
-		return;
-
-	command_slice_acquire();
-
-	if (run_workqueues)
-		wq_do_all_works();
 
-	poller_active = 1;
+	__poller_active = 1;
 
 	list_for_each_entry_safe(poller, tmp, &poller_list, list)
 		poller->func(poller);
 
-	command_slice_release();
-	poller_active = 0;
+	__poller_active = 0;
 }
 
 #if defined CONFIG_CMD_POLLER
diff --git a/common/sched.c b/common/sched.c
new file mode 100644
index 000000000000..dcf6522ac058
--- /dev/null
+++ b/common/sched.c
@@ -0,0 +1,26 @@
+/* SPDX License Identifier: GPL-2.0 */
+
+#include <bthread.h>
+#include <poller.h>
+#include <work.h>
+#include <slice.h>
+#include <sched.h>
+
+void resched(void)
+{
+	bool run_workqueues = !slice_acquired(&command_slice);
+
+	if (poller_active())
+		return;
+
+	command_slice_acquire();
+
+	if (run_workqueues)
+		wq_do_all_works();
+
+	poller_call();
+
+	command_slice_release();
+
+	bthread_reschedule();
+}
diff --git a/include/poller.h b/include/poller.h
index 371dafc6f8b8..6e51a0613356 100644
--- a/include/poller.h
+++ b/include/poller.h
@@ -7,6 +7,7 @@
 #define POLLER_H
 
 #include <linux/list.h>
+#include <linux/types.h>
 
 struct poller_struct {
 	void (*func)(struct poller_struct *poller);
@@ -39,11 +40,14 @@ static inline bool poller_async_active(struct poller_async *pa)
 	return pa->active;
 }
 
-extern int poller_active;
-
 #ifdef CONFIG_POLLER
+bool poller_active(void);
 void poller_call(void);
 #else
+static inline bool poller_active(void)
+{
+	return false;
+}
 static inline void poller_call(void)
 {
 }
diff --git a/include/sched.h b/include/sched.h
index 57be1678fdaa..4dadff20696e 100644
--- a/include/sched.h
+++ b/include/sched.h
@@ -2,14 +2,12 @@
 #ifndef __BAREBOX_SCHED_H_
 #define __BAREBOX_SCHED_H_
 
-#include <bthread.h>
-#include <poller.h>
-
+#ifdef CONFIG_HAS_SCHED
+void resched(void);
+#else
 static inline void resched(void)
 {
-	poller_call();
-	if (!IS_ENABLED(CONFIG_POLLER) || !poller_active)
-		bthread_reschedule();
 }
+#endif
 
 #endif
diff --git a/include/slice.h b/include/slice.h
index cf684300a809..67d47b9082e6 100644
--- a/include/slice.h
+++ b/include/slice.h
@@ -2,6 +2,7 @@
 #define __SLICE_H
 
 #include <bthread.h>
+#include <poller.h>
 
 enum slice_action {
 	SLICE_ACQUIRE = 1,
@@ -35,11 +36,8 @@ extern struct slice command_slice;
 void command_slice_acquire(void);
 void command_slice_release(void);
 
-extern int poller_active;
-
 #define assert_command_context() do { \
-	WARN_ONCE(IS_ENABLED(CONFIG_POLLER) && poller_active, \
-		  "%s called in poller\n", __func__); \
+	WARN_ONCE(poller_active(), "%s called in poller\n", __func__); \
 	WARN_ONCE(IS_ENABLED(CONFIG_BTHREAD) && !bthread_is_main(current), \
 		  "%s called in secondary bthread\n", __func__); \
 } while (0)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

