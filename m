Delivery-date: Wed, 10 Mar 2021 09:49:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXN-0001Ag-BI
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:49:49 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXM-0002A2-GG
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:49:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tWTo2WensT2qtlSwlaNCq5GigVgAhYfWe+Kq0lkq3iM=; b=IhZ43Gq3NSW5ghIxiErtaj9YW
	QvaWuEeO1aNCosmXw7/C/mlW6x5CxUkaBwGvojed7s/y2y+tnnFBQZwgVU0DNWaxvav8+ixnaoUnS
	XNM+VzY6SCVVqgYgXihj0lljrCLcwdG5J2HbEFbY36dSMn7Zjo9DWCKh4MQfbGta0MRf3sXPBUTOq
	EX9FJSwd/RA7nLH2v6fGl45CwGBAFUVGFEEJAxkGtth4WuWf5VFfblsHOw/jgprSjadigbwbAQms9
	q9IZUWwZsqz7ESXOxJsfIn9AOGdlb37IXc7FCa0OIBR8RhcBW9Qgdv6H6hlgtA5D1oTfgywXubkfI
	s1x2LO9qg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuWG-006LTk-LE; Wed, 10 Mar 2021 08:48:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVj-006LL7-V6
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVj-0001Th-II; Wed, 10 Mar 2021 09:48:07 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001zg-L8; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>
Date: Wed, 10 Mar 2021 09:47:56 +0100
Message-Id: <20210310084800.3584-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084808_605017_08E08512 
X-CRM114-Status: GOOD (  14.87  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 12/16] common: poller: replace explicit calls to
 poller_call() with resched()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

We won't replace pollers with bthreads completely over night. To make
migration easier, replace explicit calls to poller_call with a new
resched() function. This can be made to call bthread_reschedule() in
future and eventually replaced with bthread_reschedule() once pollers
are removed.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/clock.c   |  4 ++--
 common/console.c |  4 ++--
 include/sched.h  | 12 ++++++++++++
 lib/readline.c   |  4 ++--
 4 files changed, 18 insertions(+), 6 deletions(-)
 create mode 100644 include/sched.h

diff --git a/common/clock.c b/common/clock.c
index 7eeba88317ac..fa90d1a4576f 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -13,7 +13,7 @@
 #include <init.h>
 #include <linux/math64.h>
 #include <clock.h>
-#include <poller.h>
+#include <sched.h>
 
 static uint64_t time_ns;
 
@@ -172,7 +172,7 @@ int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
 	int ret = is_timeout_non_interruptible(start_ns, time_offset_ns);
 
 	if (time_offset_ns >= 100 * USECOND)
-		poller_call();
+		resched();
 
 	return ret;
 }
diff --git a/common/console.c b/common/console.c
index 306149c99ea1..a436c37aa3e8 100644
--- a/common/console.c
+++ b/common/console.c
@@ -17,7 +17,7 @@
 #include <clock.h>
 #include <kfifo.h>
 #include <module.h>
-#include <poller.h>
+#include <sched.h>
 #include <ratp_bb.h>
 #include <magicvar.h>
 #include <globalvar.h>
@@ -585,7 +585,7 @@ int ctrlc(void)
 	if (ctrlc_abort)
 		return 1;
 
-	poller_call();
+	resched();
 
 #ifdef ARCH_HAS_CTRLC
 	ret = arch_ctrlc();
diff --git a/include/sched.h b/include/sched.h
new file mode 100644
index 000000000000..43d239c3ef63
--- /dev/null
+++ b/include/sched.h
@@ -0,0 +1,12 @@
+/* SPDX License Identifier: GPL-2.0 */
+#ifndef __BAREBOX_SCHED_H_
+#define __BAREBOX_SCHED_H_
+
+#include <poller.h>
+
+static inline void resched(void)
+{
+	poller_call();
+}
+
+#endif
diff --git a/lib/readline.c b/lib/readline.c
index e5370f9c7b6e..25aa99b95e46 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -2,7 +2,7 @@
 #include <readkey.h>
 #include <init.h>
 #include <libbb.h>
-#include <poller.h>
+#include <sched.h>
 #include <xfuncs.h>
 #include <complete.h>
 #include <linux/ctype.h>
@@ -200,7 +200,7 @@ int readline(const char *prompt, char *buf, int len)
 
 	while (1) {
 		while (!tstc())
-			poller_call();
+			resched();
 
 		ichar = read_key();
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

