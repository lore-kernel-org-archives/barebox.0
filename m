Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f170.google.com ([209.85.215.170])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjCHb-0000Bq-N1
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 15:32:29 +0000
Received: by eyd10 with SMTP id 10so115045eyd.29
	for <barebox@lists.infradead.org>; Tue, 19 Jul 2011 08:31:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 19 Jul 2011 19:25:18 +0400
Message-Id: <1311089118-30780-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] Add option DEBUG_LL to common/Kconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/Kconfig |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 7d2367b..61e13cb 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -482,4 +482,15 @@ config ENABLE_DEVICE_NOISE
 	help
 	  Enable this to get noisy device handling routines
 
+config DEBUG_LL
+	bool
+	depends on HAS_DEBUG_LL
+	prompt "low level debug messages"
+	help
+	  Enable this to get low level debug messages during barebox initialization.
+
 endmenu
+
+config HAS_DEBUG_LL
+	bool
+	default n
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
