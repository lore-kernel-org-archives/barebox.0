Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XlQNy-000681-H7
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 22:46:07 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id 7D9AE26C2001
 for <barebox@lists.infradead.org>; Mon,  3 Nov 2014 23:45:14 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon,  3 Nov 2014 23:52:13 +0100
Message-Id: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 01/12] tegra: beaver: set hostname in board init
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/nvidia-beaver/board.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/nvidia-beaver/board.c b/arch/arm/boards/nvidia-beaver/board.c
index 20707d8..d270301 100644
--- a/arch/arm/boards/nvidia-beaver/board.c
+++ b/arch/arm/boards/nvidia-beaver/board.c
@@ -20,7 +20,7 @@
 #include <i2c/i2c.h>
 #include <init.h>
 
-static int nvidia_beaver_devices_init(void)
+static int nvidia_beaver_fs_init(void)
 {
 	struct i2c_client client;
 	u8 data;
@@ -44,4 +44,15 @@ static int nvidia_beaver_devices_init(void)
 
 	return 0;
 }
-fs_initcall(nvidia_beaver_devices_init);
+fs_initcall(nvidia_beaver_fs_init);
+
+static int nvidia_beaver_device_init(void)
+{
+	if (!of_machine_is_compatible("nvidia,beaver"))
+		return 0;
+
+	barebox_set_hostname("beaver");
+
+	return 0;
+}
+device_initcall(nvidia_beaver_device_init);
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
