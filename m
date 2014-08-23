Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XLKDa-0003ak-KM
 for barebox@lists.infradead.org; Sat, 23 Aug 2014 22:55:31 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Sat, 23 Aug 2014 19:53:40 -0300
Message-Id: <1408834420-899-6-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1408834420-899-1-git-send-email-ezequiel.garcia@free-electrons.com>
References: <1408834420-899-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH 5/5] configs: Add network options to Armada 370/XP boards
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

Now that we have network support for Armada 370/XP SoC family, let's enable
the boards configuration.

Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/arm/configs/globalscale_mirabox_defconfig     | 4 ++++
 arch/arm/configs/marvell_armada_xp_gp_defconfig    | 4 ++++
 arch/arm/configs/plathome_openblocks_ax3_defconfig | 4 ++++
 3 files changed, 12 insertions(+)

diff --git a/arch/arm/configs/globalscale_mirabox_defconfig b/arch/arm/configs/globalscale_mirabox_defconfig
index ed9d94d..a2a5f1f 100644
--- a/arch/arm/configs/globalscale_mirabox_defconfig
+++ b/arch/arm/configs/globalscale_mirabox_defconfig
@@ -5,4 +5,8 @@ CONFIG_CMD_LOADY=y
 CONFIG_CMD_LOADS=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_CLK=y
+CONFIG_NET=y
+CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_MVNETA=y
+CONFIG_MARVELL_PHY=y
diff --git a/arch/arm/configs/marvell_armada_xp_gp_defconfig b/arch/arm/configs/marvell_armada_xp_gp_defconfig
index 5a7ef52..59baebc 100644
--- a/arch/arm/configs/marvell_armada_xp_gp_defconfig
+++ b/arch/arm/configs/marvell_armada_xp_gp_defconfig
@@ -7,4 +7,8 @@ CONFIG_CMD_LOADY=y
 CONFIG_CMD_LOADS=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_CLK=y
+CONFIG_NET=y
+CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_MVNETA=y
+CONFIG_MARVELL_PHY=y
diff --git a/arch/arm/configs/plathome_openblocks_ax3_defconfig b/arch/arm/configs/plathome_openblocks_ax3_defconfig
index 95449c9..a5adf01 100644
--- a/arch/arm/configs/plathome_openblocks_ax3_defconfig
+++ b/arch/arm/configs/plathome_openblocks_ax3_defconfig
@@ -6,4 +6,8 @@ CONFIG_CMD_LOADY=y
 CONFIG_CMD_LOADS=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_CLK=y
+CONFIG_NET=y
+CONFIG_OFDEVICE=y
 CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_MVNETA=y
+CONFIG_MARVELL_PHY=y
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
