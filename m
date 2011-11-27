Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUdYM-0008H3-RE
 for barebox@lists.infradead.org; Sun, 27 Nov 2011 12:09:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Nov 2011 13:09:37 +0100
Message-Id: <1322395780-21916-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322395780-21916-1-git-send-email-s.hauer@pengutronix.de>
References: <1322395780-21916-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] bootm: Add bootargs magicvar
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index f11138a..55c964a 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -42,6 +42,7 @@
 #include <boot.h>
 #include <rtc.h>
 #include <init.h>
+#include <magicvar.h>
 #include <asm-generic/memory_layout.h>
 
 /*
@@ -367,6 +368,8 @@ BAREBOX_CMD_START(bootm)
 	BAREBOX_CMD_HELP(cmd_bootm_help)
 BAREBOX_CMD_END
 
+BAREBOX_MAGIC_VAR(bootargs, "Linux Kernel parameters");
+
 /**
  * @page bootm_command
 
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
