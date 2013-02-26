Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1UANjd-00039W-B2
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 16:50:34 +0000
Received: from localhost (col31-4-88-188-83-94.fbx.proxad.net [88.188.83.94])
 by mail.free-electrons.com (Postfix) with ESMTPSA id 7686F813
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2013 17:50:25 +0100 (CET)
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Tue, 26 Feb 2013 17:50:20 +0100
Message-Id: <1361897421-3228-2-git-send-email-maxime.ripard@free-electrons.com>
In-Reply-To: <1361897421-3228-1-git-send-email-maxime.ripard@free-electrons.com>
References: <1361897421-3228-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH 1/2] cfa-10036: Use the second MMC partition to store the
 environment
To: barebox@lists.infradead.org

Since the only storage medium on the cfa-10036 is the MMC card, we need
to have a registered environment partition on it if we want to be able
to modify at runtime.

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |    8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index b59dbab..1bc20cf 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -17,6 +17,7 @@
 
 #include <common.h>
 #include <environment.h>
+#include <envfs.h>
 #include <errno.h>
 #include <fec.h>
 #include <gpio.h>
@@ -99,7 +100,7 @@ mem_initcall(cfa10036_mem_init);
 
 static int cfa10036_devices_init(void)
 {
-	int i;
+	int i, ret;
 
 	/* initizalize muxing */
 	for (i = 0; i < ARRAY_SIZE(cfa10036_pads); i++)
@@ -124,6 +125,11 @@ static int cfa10036_devices_init(void)
 
 	cfa10036_detect_hw();
 
+	ret = envfs_register_partition("disk0", 1);
+	if (ret != 0)
+		printf("Cannot create the 'env0' persistent "
+			 "environment storage (%d)\n", ret);
+
 	return 0;
 }
 device_initcall(cfa10036_devices_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
