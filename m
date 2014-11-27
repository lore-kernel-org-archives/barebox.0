Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xu1S5-0004av-2Q
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 15:57:53 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Xu1Oe-00025Y-Tg
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 16:54:20 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 27 Nov 2014 16:54:18 +0100
Message-Id: <1417103660-32348-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1417103660-32348-1-git-send-email-l.stach@pengutronix.de>
References: <1417103660-32348-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] rtc: select GREGORIAN_CALENDER
To: barebox@lists.infradead.org

Fixes:
drivers/rtc/rtc-lib.c:109: undefined reference to `mktime'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/rtc/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index 957fee73f8eb..191ad97fb825 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -4,6 +4,7 @@
 
 config RTC_LIB
 	bool
+	select GREGORIAN_CALENDER
 
 menuconfig RTC_CLASS
 	bool "Real Time Clock"
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
