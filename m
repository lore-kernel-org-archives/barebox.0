Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XuLFd-0001SV-RG
 for barebox@lists.infradead.org; Fri, 28 Nov 2014 13:06:22 +0000
Received: by mail-lb0-f179.google.com with SMTP id z11so5512648lbi.38
 for <barebox@lists.infradead.org>; Fri, 28 Nov 2014 05:05:59 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Nov 2014 16:07:32 +0300
Message-Id: <1417180052-16824-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] clocksource: dummy: don't show message on first cs read
To: barebox@lists.infradead.org

In the commit

    commit 96cae61eba199b9c3f5451f293cf60db2b535164
    Author: Sascha Hauer <s.hauer@pengutronix.de>
    Date:   Tue Sep 30 08:25:55 2014 +0200

        clock: Add a variable with the first timestamp after startup

        For measuring the startup time it's useful to save the first
        timestamp after the clocksource has been registered.

the behaviour of clocksource subsystem is changed: every registered
clocksource is called at least once. So the dummy clocksource (if enabled)
_ALWAYS_ prints a confusing 'Using dummy clocksource' warning.

This patch fixes the situation: now the 'Using dummy clocksource'
warning is printed only if the dummy clocksource is called second time.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clocksource/dummy.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/dummy.c b/drivers/clocksource/dummy.c
index 96f9b6e..9a42305 100644
--- a/drivers/clocksource/dummy.c
+++ b/drivers/clocksource/dummy.c
@@ -25,8 +25,11 @@ static uint64_t dummy_cs_read(void)
 {
 	static int first;
 
-	if (!first) {
+	if (first == 1) {
 		pr_warn("Warning: Using dummy clocksource\n");
+		first = 2;
+	}
+	if (!first) {
 		first = 1;
 	}
 
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
