Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f222.google.com ([209.85.220.222])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NX9rC-0002Fq-4H
	for barebox@lists.infradead.org; Tue, 19 Jan 2010 08:54:42 +0000
Received: by fxm22 with SMTP id 22so1298392fxm.2
	for <barebox@lists.infradead.org>; Tue, 19 Jan 2010 00:54:36 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
Date: Tue, 19 Jan 2010 09:54:25 +0100
Message-Id: <1263891265-15350-1-git-send-email-jacmet@sunsite.dk>
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
Subject: [PATCH] mach-at91: reset_cpu: fix confusing reference to watchdog
To: barebox@lists.infradead.org

On at91 we talk directly to the reset controller to reset the cpu,
rather than use the watchdog, so update the comment to match.

Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>
---
 arch/arm/mach-at91/clocksource.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-at91/clocksource.c b/arch/arm/mach-at91/clocksource.c
index b5886f9..564b560 100644
--- a/arch/arm/mach-at91/clocksource.c
+++ b/arch/arm/mach-at91/clocksource.c
@@ -71,7 +71,7 @@ static int clocksource_init (void)
 core_initcall(clocksource_init);
 
 /*
- * Reset the cpu by setting up the watchdog timer and let it time out
+ * Reset the cpu through the reset controller
  */
 void reset_cpu (ulong ignored)
 {
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
