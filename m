Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8sp-0006wI-0I
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:49:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:49:37 +0100
Message-Id: <1323946179-9883-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
References: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] common.h: remove unused function declarations
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/common.h |    5 -----
 1 files changed, 0 insertions(+), 5 deletions(-)

diff --git a/include/common.h b/include/common.h
index d594e63..2f37dd8 100644
--- a/include/common.h
+++ b/include/common.h
@@ -81,8 +81,6 @@
 })
 #endif
 
-typedef void (interrupt_handler_t)(void *);
-
 #include <asm/barebox.h> /* boot information for Linux kernel */
 
 /*
@@ -93,8 +91,6 @@ void reginfo(void);
 void __noreturn hang (void);
 void __noreturn panic(const char *fmt, ...);
 
-/* */
-void initdram (int);
 char *size_human_readable(ulong size);
 
 /* common/main.c */
@@ -133,7 +129,6 @@ struct memarea_info {
         unsigned long flags;
 };
 
-int spec_str_to_info(const char *str, struct memarea_info *info);
 int parse_area_spec(const char *str, ulong *start, ulong *size);
 
 /* Just like simple_strtoul(), but this one honors a K/M/G suffix */
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
