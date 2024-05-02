Delivery-date: Thu, 02 May 2024 17:15:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2Y9O-00FHEq-0W
	for lore@lore.pengutronix.de;
	Thu, 02 May 2024 17:15:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2Y9N-00033k-Ex
	for lore@pengutronix.de; Thu, 02 May 2024 17:15:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kcs4rb5C08V8EF9ZVFqPX8z/exMh2oULXyvc7D/JYxg=; b=oUvG7oPOflLisl4XUMaDUWSkrm
	yu2aK9zySAtzQEklh47QIbW/e//pKv1v9IceOI6ftZS12f2IKF52CX/wCSuqy0EN8eFkHVbp8kA7c
	YNVuI6CQFJuuodWY6WLy5wWEuGd7deLsSlMf3JClfrowX+l6dtuOwDbXN4duvPxWqt4rwEF2NN8sH
	aXtvHNRO0+N1QyXuRCmCpHypnbPPHn44iUUiW7msD86ctKaemNKJuzpzDptrDARBg/54AyrTiM1WG
	RD5cpW6dPYOP2lLRaaGuxYkm1A429PlH7VSpBs12JiGiFdFOw9SN7jTpuaoAnztNAvbSJINO7qA4C
	XtEEE/3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Y8s-0000000D4PA-2cyY;
	Thu, 02 May 2024 15:14:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Y8n-0000000D4Ng-3INI
	for barebox@lists.infradead.org;
	Thu, 02 May 2024 15:14:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2Y8m-0002qP-Ds; Thu, 02 May 2024 17:14:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2Y8m-00FXqR-1g; Thu, 02 May 2024 17:14:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2Y8l-00Gd1F-37;
	Thu, 02 May 2024 17:14:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 May 2024 17:14:30 +0200
Message-Id: <20240502151430.3963160-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240502151430.3963160-1-a.fatoum@pengutronix.de>
References: <20240502151430.3963160-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_081433_845207_90360FFA 
X-CRM114-Status: GOOD (  14.01  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] poller: report pollers taking more than 20 milliseconds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Pollers are meant to be running for a short duration. A poller that runs
longer than 20 milliseconds probably deserves a closer look.

Let's print a one time warning in this case and have the poller command
output report how many times the condition occurred.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/poller.c  | 35 ++++++++++++++++++++++++++++++++---
 include/poller.h |  3 ++-
 2 files changed, 34 insertions(+), 4 deletions(-)

diff --git a/common/poller.c b/common/poller.c
index 0409d3cf8111..77d93ae8ccdf 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -3,6 +3,8 @@
  * Copyright (C) 2010 Marc Kleine-Budde <mkl@pengutronix.de>
  */
 
+#define pr_fmt(fmt) "poller: " fmt
+
 #include <common.h>
 #include <driver.h>
 #include <malloc.h>
@@ -10,6 +12,13 @@
 #include <param.h>
 #include <poller.h>
 #include <clock.h>
+#include <linux/ktime.h>
+
+/*
+ * Pollers are meant to poll and quickly execute actions.
+ * Exceeding the maximum runtime below triggers a one-time warning.
+ */
+#define POLLER_MAX_RUNTIME_MS	20
 
 static LIST_HEAD(poller_list);
 static int __poller_active;
@@ -116,9 +125,23 @@ void poller_call(void)
 
 	__poller_active = 1;
 
-	list_for_each_entry_safe(poller, tmp, &poller_list, list)
+	list_for_each_entry_safe(poller, tmp, &poller_list, list) {
+		ktime_t start = ktime_get();
+		s64 duration_ms;
+
 		poller->func(poller);
 
+		duration_ms = ktime_ms_delta(ktime_get(), start);
+		if (duration_ms > POLLER_MAX_RUNTIME_MS) {
+			if (!poller->overtime)
+				pr_warn("'%s' took unexpectedly long: %llums\n",
+					poller->name, duration_ms);
+
+			if (poller->overtime < U16_MAX)
+				poller->overtime++;
+		}
+	}
+
 	__poller_active = 0;
 }
 
@@ -155,8 +178,14 @@ static void poller_info(void)
 		return;
 	}
 
-	list_for_each_entry(poller, &poller_list, list)
-		printf("%s\n", poller->name);
+	list_for_each_entry(poller, &poller_list, list) {
+		printf("%s", poller->name);
+		if (poller->overtime)
+			printf(": overtime %s%u",
+			       poller->overtime == U16_MAX ? ">= " : "",
+			       poller->overtime);
+		printf("\n");
+	}
 }
 
 BAREBOX_CMD_HELP_START(poller)
diff --git a/include/poller.h b/include/poller.h
index 6e51a0613356..31db907ba5b8 100644
--- a/include/poller.h
+++ b/include/poller.h
@@ -11,7 +11,8 @@
 
 struct poller_struct {
 	void (*func)(struct poller_struct *poller);
-	int registered;
+	u16 registered:1;
+	u16 overtime;
 	struct list_head list;
 	char *name;
 };
-- 
2.39.2



