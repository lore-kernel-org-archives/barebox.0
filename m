Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XlQNy-000682-HA
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 22:46:07 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id C428C26C2002
 for <barebox@lists.infradead.org>; Mon,  3 Nov 2014 23:45:14 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon,  3 Nov 2014 23:52:14 +0100
Message-Id: <1415055144-6119-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
References: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 02/12] tegra: jetson-tk1: set hostname in board init
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/nvidia-jetson-tk1/board.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/nvidia-jetson-tk1/board.c b/arch/arm/boards/nvidia-jetson-tk1/board.c
index c20f56a..564e6a0 100644
--- a/arch/arm/boards/nvidia-jetson-tk1/board.c
+++ b/arch/arm/boards/nvidia-jetson-tk1/board.c
@@ -26,7 +26,7 @@
 #define AS3722_GPIO_SIGNAL_OUT	0x20
 #define AS3722_SD_CONTROL	0x4d
 
-static int nvidia_jetson_tk1_devices_init(void)
+static int nvidia_jetson_tk1_fs_init(void)
 {
 	struct i2c_client client;
 	u8 data;
@@ -47,4 +47,15 @@ static int nvidia_jetson_tk1_devices_init(void)
 
 	return 0;
 }
-fs_initcall(nvidia_jetson_tk1_devices_init);
+fs_initcall(nvidia_jetson_tk1_fs_init);
+
+static int nvidia_jetson_tk1_device_init(void)
+{
+	if (!of_machine_is_compatible("nvidia,jetson-tk1"))
+		return 0;
+
+	barebox_set_hostname("jetson-tk1");
+
+	return 0;
+}
+device_initcall(nvidia_jetson_tk1_device_init);
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
