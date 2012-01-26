Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqPM4-0000dr-UD
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 13:27:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jan 2012 14:26:47 +0100
Message-Id: <1327584413-23055-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1327584413-23055-1-git-send-email-s.hauer@pengutronix.de>
References: <1327584413-23055-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] console: remove unused function prototypes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/console.h |   13 -------------
 1 files changed, 0 insertions(+), 13 deletions(-)

diff --git a/include/console.h b/include/console.h
index c0817f6..47e8600 100644
--- a/include/console.h
+++ b/include/console.h
@@ -56,17 +56,4 @@ extern struct list_head console_list;
 
 #define CFG_PBSIZE (CONFIG_CBSIZE+sizeof(CONFIG_PROMPT)+16)
 
-void early_console_putc(void *base, char c);
-void early_console_init(void *base, int baudrate);
-
-void early_console_start(const char *name, int baudrate);
-
-/*
- * Resolve an early console name to a pointer pointing
- * to the consoles base address, usually implemented in
- * board setup file.
- */
-void *get_early_console_base(const char *name);
-
 #endif
-
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
