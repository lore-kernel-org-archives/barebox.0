Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBb6Y-0004EP-Co
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:27:48 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:27:39 +0100
Message-Id: <20210215102740.30418-3-a.fatoum@pengutronix.de>
In-Reply-To: <20210215102740.30418-1-a.fatoum@pengutronix.de>
References: <20210215102740.30418-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] console: unconditionally run poller_call in ctrlc()
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

ctrlc is allowed only after init and reboot mode scripts have run, so
these scripts run uninterruptible. A side effect of this is that all
calls to ctrlc() will immediately return with false without running the
pollers. While init scripts shouldn't run too long, it's still
surprising behavior. Thus call poller_call() first thing in ctrlc().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/console.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/console.c b/common/console.c
index 306149c99ea1..974d3de9e483 100644
--- a/common/console.c
+++ b/common/console.c
@@ -579,14 +579,14 @@ int ctrlc(void)
 {
 	int ret = 0;
 
+	poller_call();
+
 	if (!ctrlc_allowed)
 		return 0;
 
 	if (ctrlc_abort)
 		return 1;
 
-	poller_call();
-
 #ifdef ARCH_HAS_CTRLC
 	ret = arch_ctrlc();
 #else
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
