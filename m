Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMe8w-0005vD-4n
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 13:19:39 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 810C7DC8688
 for <barebox@lists.infradead.org>; Thu, 19 Sep 2013 15:19:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Sep 2013 15:20:22 +0200
Message-Id: <1379596826-5743-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130919131929.GA1137@ns203013.ovh.net>
References: <20130919131929.GA1137@ns203013.ovh.net>
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
Subject: [PATCH 1/5] shutdown: add board call back
To: barebox@lists.infradead.org

so if we need to do something switch in the board we can fill this function
pointer (as example on Animeo IP shutdown some rs232 & rs485)

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/startup.c | 4 ++++
 include/common.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/startup.c b/common/startup.c
index 9b33a92..ece852c 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -159,6 +159,8 @@ void __noreturn hang (void)
 	for (;;);
 }
 
+void (*board_shutdown)(void);
+
 /* Everything needed to cleanly shutdown barebox.
  * Should be called before starting an OS to get
  * the devices into a clean state
@@ -169,4 +171,6 @@ void shutdown_barebox(void)
 #ifdef ARCH_SHUTDOWN
 	arch_shutdown();
 #endif
+	if (board_shutdown)
+		board_shutdown();
 }
diff --git a/include/common.h b/include/common.h
index 066827f..0f0ba08 100644
--- a/include/common.h
+++ b/include/common.h
@@ -152,6 +152,7 @@ extern int (*barebox_main)(void);
 
 void __noreturn start_barebox(void);
 void shutdown_barebox(void);
+extern void (*board_shutdown)(void);
 
 /*
  * architectures which have special calling conventions for
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
