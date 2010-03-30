Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHf-0001S0-GQ
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:07:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:46 +0200
Message-Id: <1269947215-18214-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
References: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] introduce a arch_shutdown call and call it from
	shutdown_barebox
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |    3 +++
 include/common.h |    1 +
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index c7d0cf0..2ed16fe 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -174,5 +174,8 @@ void __noreturn hang (void)
 void shutdown_barebox(void)
 {
 	devices_shutdown();
+#ifdef ARCH_SHUTDOWN
+	arch_shutdown();
+#endif
 }
 
diff --git a/include/common.h b/include/common.h
index fb1400c..d8130b5 100644
--- a/include/common.h
+++ b/include/common.h
@@ -135,6 +135,7 @@ void start_barebox(void);
 void shutdown_barebox(void);
 
 int arch_execute(void *, int argc, char *argv[]);
+void arch_shutdown(void);
 
 int run_shell(void);
 
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
