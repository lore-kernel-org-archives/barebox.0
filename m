Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XaTF4-00055I-2e
 for barebox@lists.infradead.org; Sat, 04 Oct 2014 17:35:38 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  4 Oct 2014 19:40:18 +0200
Message-Id: <1412444425-2569-13-git-send-email-dev@lynxeye.de>
In-Reply-To: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
References: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 12/19] i2c: tegra: move to fs initcall
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

i2c is needed to enable voltage rails that are later
needed by other drivers.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nvidia-beaver/board.c | 2 +-
 drivers/i2c/busses/i2c-tegra.c        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/nvidia-beaver/board.c b/arch/arm/boards/nvidia-beaver/board.c
index e87594d..e67d2aa 100644
--- a/arch/arm/boards/nvidia-beaver/board.c
+++ b/arch/arm/boards/nvidia-beaver/board.c
@@ -35,4 +35,4 @@ static int nvidia_beaver_devices_init(void)
 
 	return 0;
 }
-device_initcall(nvidia_beaver_devices_init);
+fs_initcall(nvidia_beaver_devices_init);
diff --git a/drivers/i2c/busses/i2c-tegra.c b/drivers/i2c/busses/i2c-tegra.c
index c52da18..f793cbe 100644
--- a/drivers/i2c/busses/i2c-tegra.c
+++ b/drivers/i2c/busses/i2c-tegra.c
@@ -696,4 +696,4 @@ static struct driver_d tegra_i2c_driver = {
 	.probe   = tegra_i2c_probe,
 	.of_compatible = DRV_OF_COMPAT(tegra_i2c_compatible),
 };
-device_platform_driver(tegra_i2c_driver);
+register_driver_macro(fs, platform, tegra_i2c_driver);
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
