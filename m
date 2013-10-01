Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQtLt-0000ST-0k
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 06:22:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Oct 2013 08:22:05 +0200
Message-Id: <1380608528-26999-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ARM: mx23-evk: Fix result checking of devfs_add_partition
To: barebox@lists.infradead.org

devfs_add_partition was changed to return the cdev. Fix the result
checking accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 1714fdd..9ba32d3 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -19,6 +19,7 @@
 #include <gpio.h>
 #include <environment.h>
 #include <mci.h>
+#include <linux/err.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
@@ -95,8 +96,11 @@ static int register_persistant_environment(void)
 	}
 
 	/* use the full partition as our persistent environment storage */
-	return devfs_add_partition("disk0.1", 0, cdev->size,
+	cdev = devfs_add_partition("disk0.1", 0, cdev->size,
 						DEVFS_PARTITION_FIXED, "env0");
+	if (IS_ERR(cdev))
+		return PTR_ERR(cdev);
+	return 0;
 }
 
 static int mx23_evk_devices_init(void)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
