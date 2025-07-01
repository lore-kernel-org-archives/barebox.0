Delivery-date: Tue, 01 Jul 2025 16:54:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWcNP-00CzV0-1H
	for lore@lore.pengutronix.de;
	Tue, 01 Jul 2025 16:54:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWcNO-0008Qf-Qo
	for lore@pengutronix.de; Tue, 01 Jul 2025 16:54:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LHU1eYdpeBMcrVXbeZShnZeE3tMEml/gOIaLnpyirGA=; b=1CA1I82xXC+YCvfKOB5fcMK43F
	l9dc+nu6/n9g/ihRn15FaXAxrCqCssd52ZufrM3s0tkPZeUH3JFQX+9G0K7Wa11Ql2DUrJb1hbJNa
	gkSxZ9Z2tbmAJjz7e9Ho+lLoWts3muIB64ZZS7Q7lNfELEEt/x7zwJoMMIVJMPf+PJItpDJj22BOB
	oll+cAXtbGdjYlXg6ZygZKB/dcQADXq8C2N0nrZBVslK/0zY0e724h9zbYRB303ECFW/xDX488eWA
	wS2k3rK+VDmIoPClEKrC7GtXZr26/9yXWRIRs79dbu3OoblnIb9NQBnheO0K/9o+3hP/am9/75tuD
	ZgiAHm9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWcMt-00000005mbx-0ZQ7;
	Tue, 01 Jul 2025 14:53:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWas9-00000005ThS-26Wu
	for barebox@lists.infradead.org;
	Tue, 01 Jul 2025 13:18:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWas7-00088O-Fj; Tue, 01 Jul 2025 15:18:03 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWas7-006HBu-0y;
	Tue, 01 Jul 2025 15:18:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWas6-001x2u-2F;
	Tue, 01 Jul 2025 15:18:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Jul 2025 15:18:02 +0200
Message-Id: <20250701131802.465283-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250701131802.465283-1-a.fatoum@pengutronix.de>
References: <20250701131802.465283-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_061805_564127_30583B37 
X-CRM114-Status: GOOD (  13.56  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] console: fix loose coupling between getchar and is_timeout delays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We always want to run pollers while waiting in getchar().
This is already the case, because the delay chosen in getchar is the
minimum scheduling delay used in is_timeout.

To make the relation more obvious, define a constant for the minimum
scheduling delay and use it at both places.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/clock.c         | 2 +-
 common/console.c       | 4 ++--
 include/clock.h        | 9 +++++++++
 include/linux/minmax.h | 1 +
 4 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index 931a96865140..87109f3efc2e 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -169,7 +169,7 @@ int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
 {
 	int ret = is_timeout_non_interruptible(start_ns, time_offset_ns);
 
-	if (time_offset_ns >= 100 * USECOND)
+	if (time_offset_ns >= SCHED_TIMEOUT_MIN)
 		resched();
 
 	return ret;
diff --git a/common/console.c b/common/console.c
index 24f1500a6558..393183a72514 100644
--- a/common/console.c
+++ b/common/console.c
@@ -548,8 +548,8 @@ int getchar(void)
 			start = get_time_ns();
 		}
 
-		if (is_timeout(start, 100 * USECOND) &&
-				kfifo_len(console_input_fifo))
+		if (is_timeout_interruptible(start, 100 * USECOND) &&
+		    kfifo_len(console_input_fifo))
 			break;
 	}
 
diff --git a/include/clock.h b/include/clock.h
index db20877571a4..ca69535e9185 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -4,6 +4,7 @@
 
 #include <types.h>
 #include <linux/time.h>
+#include <linux/minmax.h>
 #include <linux/bitops.h>
 
 #define SECOND (1000ULL * 1000 * 1000)
@@ -42,6 +43,14 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant);
 int is_timeout(uint64_t start_ns, uint64_t time_offset_ns);
 int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns);
 
+#define SCHED_TIMEOUT_MIN	(100 * USECOND)
+
+static inline int is_timeout_interruptible(uint64_t start_ns,
+					   uint64_t time_offset_ns)
+{
+	return is_timeout(start_ns, max(SCHED_TIMEOUT_MIN, time_offset_ns));
+}
+
 void arm_architected_timer_udelay(unsigned long us);
 
 void ndelay(unsigned long nsecs);
diff --git a/include/linux/minmax.h b/include/linux/minmax.h
index 9b6ddad7b3f6..8c114029d23a 100644
--- a/include/linux/minmax.h
+++ b/include/linux/minmax.h
@@ -2,6 +2,7 @@
 #ifndef _LINUX_MINMAX_H
 #define _LINUX_MINMAX_H
 
+#include <linux/compiler.h>
 #include <linux/const.h>
 
 /*
-- 
2.39.5



