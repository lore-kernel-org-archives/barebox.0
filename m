Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XgHOk-0006mI-CS
 for barebox@lists.infradead.org; Mon, 20 Oct 2014 18:09:39 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id D23A826C2001
 for <barebox@lists.infradead.org>; Mon, 20 Oct 2014 20:08:39 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 20 Oct 2014 20:15:29 +0200
Message-Id: <1413828930-12536-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/2] reset_source: add thermal reset
To: barebox@lists.infradead.org

Some SoCs are able to detect if they got reset
in response to an overtemperature event.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 common/reset_source.c  | 1 +
 include/reset_source.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/common/reset_source.c b/common/reset_source.c
index 6026af1..946670b 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -25,6 +25,7 @@ static const char * const reset_src_names[] = {
 	[RESET_WDG] = "WDG",
 	[RESET_WKE] = "WKE",
 	[RESET_JTAG] = "JTAG",
+	[RESET_THERM] = "THERM",
 };
 
 static enum reset_src_type reset_source;
diff --git a/include/reset_source.h b/include/reset_source.h
index bff7f97..6620228 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -20,6 +20,7 @@ enum reset_src_type {
 	RESET_WDG,	/* watchdog */
 	RESET_WKE,	/* wake-up (some SoCs can handle this) */
 	RESET_JTAG,	/* JTAG reset */
+	RESET_THERM,	/* SoC shut down because of overtemperature */
 };
 
 #ifdef CONFIG_RESET_SOURCE
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
