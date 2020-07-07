Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsliz-0004JG-87
 for barebox@lists.infradead.org; Tue, 07 Jul 2020 11:25:22 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Tue, 7 Jul 2020 13:25:17 +0200
Message-Id: <1594121117-187193-2-git-send-email-r.karszniewicz@phytec.de>
In-Reply-To: <1594121117-187193-1-git-send-email-r.karszniewicz@phytec.de>
References: <1594121117-187193-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH 2/2] ARM: configs: imx_v7_defconfig: Add bootchooser
To: barebox@lists.infradead.org

From: Daniel Schultz <d.schultz@phytec.de>

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
 arch/arm/configs/imx_v7_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index ad5d43a68b62..76bf63bb2065 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -66,6 +66,7 @@ CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_STATE=y
+CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
 CONFIG_FASTBOOT_CMD_OEM=y
 CONFIG_CMD_DMESG=y
@@ -129,6 +130,7 @@ CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_STATE=y
+CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
