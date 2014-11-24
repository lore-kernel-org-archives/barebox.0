Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XsrUL-00070f-0n
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 11:07:26 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XsrTw-0000NZ-Pa
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:07:00 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 24 Nov 2014 12:06:45 +0100
Message-Id: <1416827220-3103-6-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 05/20] common: firmware: include libfile
To: barebox@lists.infradead.org

Fixes
common/firmware.c:206:2: error: implicit declaration of function 'copy_file'
in a number of configuration where this file isn't pulled in through
other headers.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/firmware.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/firmware.c b/common/firmware.c
index 2a62a81c7845..a6f75bf88747 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -17,6 +17,7 @@
 #include <xfuncs.h>
 #include <fcntl.h>
 #include <libbb.h>
+#include <libfile.h>
 #include <fs.h>
 #include <linux/list.h>
 #include <linux/stat.h>
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
