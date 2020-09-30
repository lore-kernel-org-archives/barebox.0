Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNc6H-0001ur-CP
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 13:24:54 +0000
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1kNc6G-0004K8-5h
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 15:24:52 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Sep 2020 15:24:51 +0200
Message-Id: <20200930132451.354162-1-l.stach@pengutronix.de>
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
Subject: [PATCH] shutdown: flush console on barebox shutdown
To: barebox@lists.infradead.org

Same as in the poweroff and restart path, we should make sure to properly
drain the console devices when shutting down barebox. This fixes serial
console corruption when the software running after barebox changes the
peripheral configuration before all the characters have drained out of
the FIFO.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/startup.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/startup.c b/common/startup.c
index 1c58e412885f..7d44123941da 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -418,6 +418,8 @@ void shutdown_barebox(void)
 		pr_debug("exitcall-> %pS\n", *exitcall);
 		(*exitcall)();
 	}
+
+	console_flush();
 }
 
 BAREBOX_MAGICVAR_NAMED(autoboot_state,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
