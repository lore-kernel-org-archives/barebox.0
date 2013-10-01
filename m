Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQtLt-0000SU-0n
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 06:22:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Oct 2013 08:22:06 +0200
Message-Id: <1380608528-26999-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380608528-26999-1-git-send-email-s.hauer@pengutronix.de>
References: <1380608528-26999-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: Ka-Ro TX28: Fix result checking of
 devfs_add_partition
To: barebox@lists.infradead.org

devfs_add_partition was changed to return the cdev. Fix the result
checking accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx28/tx28-stk5.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 2984d10..57cb0c3 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -23,6 +23,7 @@
 #include <io.h>
 #include <net.h>
 #include <asm/sections.h>
+#include <linux/err.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 #include <mach/mci.h>
@@ -344,8 +345,11 @@ static int register_persistent_environment(void)
 	}
 
 	/* use the full partition as our persistent environment storage */
-	return devfs_add_partition("disk0.1", 0, cdev->size,
+	cdev = devfs_add_partition("disk0.1", 0, cdev->size,
 					DEVFS_PARTITION_FIXED, "env0");
+	if (IS_ERR(cdev))
+		return PTR_ERR(cdev);
+	return 0;
 }
 
 void tx28_get_ethaddr(void)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
