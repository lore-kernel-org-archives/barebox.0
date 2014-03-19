Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQEgl-0007Ll-3K
 for barebox@lists.infradead.org; Wed, 19 Mar 2014 11:29:39 +0000
Received: by mail-la0-f49.google.com with SMTP id mc6so5683827lab.22
 for <barebox@lists.infradead.org>; Wed, 19 Mar 2014 04:29:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 19 Mar 2014 15:29:12 +0400
Message-Id: <1395228552-28724-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] [FOR SQUASH] clocksource: dummy.c: remove Kconfig warning
To: barebox@lists.infradead.org

This patch removes this warning during 'make *config':

  drivers/clocksource/Kconfig:36:warning: leading whitespace ignored

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clocksource/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index f53c933..43974f0 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -32,7 +32,8 @@ config CLOCKSOURCE_DUMMY
 	  was initialized.
 
 config CLOCKSOURCE_DUMMY_RATE
-	int "  dummy clocksource rate"
+	int
+	prompt "dummy clocksource rate"
 	depends on CLOCKSOURCE_DUMMY
 	default 1000
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
