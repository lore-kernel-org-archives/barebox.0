Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cs8zi-0004Rk-GE
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 14:18:12 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 26 Mar 2017 16:17:12 +0200
Message-Id: <1490537832-14971-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] console: console_get_by_name: do not strcmp NULL
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

console_get_by_name iterates through the console_list using strcmp to mach
a given console by name. console_list may contain entries with devname = NULL,
inserted there e.g. by KEYBOARD_GPIO. In worst case loady -t usbserial
will crash barebox when strcmp hits 0 NULL devname:
> unable to handle NULL pointer dereference at address 0x00000000

Let console_get_by_name just ignore the anonymous consoles.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 common/console_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/console_common.c b/common/console_common.c
index 2e5869f..d051458 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -246,7 +246,7 @@ struct console_device *console_get_by_name(const char *name)
 	struct console_device *cdev;
 
 	for_each_console(cdev) {
-		if (!strcmp(cdev->devname, name))
+		if (cdev->devname && !strcmp(cdev->devname, name))
 			return cdev;
 	}
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
