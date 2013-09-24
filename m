Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOMkD-00050f-Mg
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 07:09:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Sep 2013 09:08:40 +0200
Message-Id: <1380006527-2599-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
References: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] bootm: remove unused define
To: barebox@lists.infradead.org

OFTREE_SIZE_INCREASE isn't used anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index a4004df..8ce4867 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -46,11 +46,6 @@
 #include <magicvar.h>
 #include <asm-generic/memory_layout.h>
 
-/*
- * Additional oftree size for the fixed tree
- */
-#define OFTREE_SIZE_INCREASE	0x8000
-
 static char *bootm_image_name_and_no(const char *name, int *no)
 {
 	char *at, *ret;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
