Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLBbV-0007LB-Tn
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 14:15:55 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8337CA0035F
 for <barebox@lists.infradead.org>; Tue, 10 Feb 2015 15:16:15 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Tue, 10 Feb 2015 15:13:57 +0100
Message-Id: <1423577638-27907-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH v3: For next 1/2] reset_source: Add external reset
To: barebox@lists.infradead.org

Some SoCs have special device pins for external reset signals.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 common/reset_source.c  | 1 +
 include/reset_source.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/common/reset_source.c b/common/reset_source.c
index 946670b..ae2f9f3 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -26,6 +26,7 @@ static const char * const reset_src_names[] = {
 	[RESET_WKE] = "WKE",
 	[RESET_JTAG] = "JTAG",
 	[RESET_THERM] = "THERM",
+	[RESET_EXT] = "EXT",
 };
 
 static enum reset_src_type reset_source;
diff --git a/include/reset_source.h b/include/reset_source.h
index 6620228..367f93b 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -21,6 +21,7 @@ enum reset_src_type {
 	RESET_WKE,	/* wake-up (some SoCs can handle this) */
 	RESET_JTAG,	/* JTAG reset */
 	RESET_THERM,	/* SoC shut down because of overtemperature */
+	RESET_EXT,	/* External reset through device pin */
 };
 
 #ifdef CONFIG_RESET_SOURCE
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
