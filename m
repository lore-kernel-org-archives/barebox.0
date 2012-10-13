Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMwXj-0007od-W0
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 07:53:57 +0000
Received: from mail186.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 201CAFF88C4
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 10:03:10 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 13 Oct 2012 09:51:27 +0200
Message-Id: <1350114689-19272-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350114689-19272-1-git-send-email-plagnioj@jcrosoft.com>
References: <1350114689-19272-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] reset_source: add software reset as possible source
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/reset_source.c  |    1 +
 include/reset_source.h |    1 +
 2 files changed, 2 insertions(+)

diff --git a/common/reset_source.c b/common/reset_source.c
index ff76857..ec1afc0 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -22,6 +22,7 @@ static const char * const reset_src_names[] = {
 	[RESET_UKWNOWN] = "unknown",
 	[RESET_POWER] = "power",
 	[RESET_RESET] = "reset",
+	[RESET_SOFTWARE] = "software",
 	[RESET_WATCHDOG] = "watchdog",
 	[RESET_WAKEUP] = "wakeup",
 	[RESET_JTAG] = "jtag",
diff --git a/include/reset_source.h b/include/reset_source.h
index 198abd0..5129c6a 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -17,6 +17,7 @@ enum reset_src_type {
 	RESET_UKWNOWN,	/* maybe the SoC cannot detect the reset source */
 	RESET_POWER,	/* Power On Reset (cold start) */
 	RESET_RESET,	/* generic ReSeT (warm start) */
+	RESET_SOFTWARE,	/* software */
 	RESET_WATCHDOG,	/* watchdog */
 	RESET_WAKEUP,	/* wake-up (some SoCs can handle this) */
 	RESET_JTAG,	/* JTAG reset */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
