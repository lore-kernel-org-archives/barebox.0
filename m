Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIzao-0006kA-F9
 for barebox@lists.infradead.org; Wed, 16 May 2018 16:48:17 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 16 May 2018 18:42:31 +0200
Message-Id: <20180516164233.27581-9-linux@rempel-privat.de>
In-Reply-To: <20180516164233.27581-1-linux@rempel-privat.de>
References: <20180516164233.27581-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 08/10] MIPS: configs: add KEXEC=y to atheros devices
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

currently kexec is the only way we can boot linux kernel on this
devices. So enable it in configs per default.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/configs/8devices-lima_defconfig         | 1 +
 arch/mips/configs/black-swift_defconfig           | 1 +
 arch/mips/configs/dptechnics-dpt-module_defconfig | 1 +
 arch/mips/configs/tplink-mr3020_defconfig         | 1 +
 arch/mips/configs/tplink-wdr4300_defconfig        | 1 +
 5 files changed, 5 insertions(+)

diff --git a/arch/mips/configs/8devices-lima_defconfig b/arch/mips/configs/8devices-lima_defconfig
index 446369a54..107d6c5cf 100644
--- a/arch/mips/configs/8devices-lima_defconfig
+++ b/arch/mips/configs/8devices-lima_defconfig
@@ -20,6 +20,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
 CONFIG_CMD_RESET=y
+CONFIG_KEXEC=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_LOADENV=y
diff --git a/arch/mips/configs/black-swift_defconfig b/arch/mips/configs/black-swift_defconfig
index 1a72cfbd7..71a4f5963 100644
--- a/arch/mips/configs/black-swift_defconfig
+++ b/arch/mips/configs/black-swift_defconfig
@@ -25,6 +25,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
 CONFIG_CMD_RESET=y
+CONFIG_KEXEC=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GLOBAL=y
 CONFIG_CMD_SHA1SUM=y
diff --git a/arch/mips/configs/dptechnics-dpt-module_defconfig b/arch/mips/configs/dptechnics-dpt-module_defconfig
index c01b22b98..33049164c 100644
--- a/arch/mips/configs/dptechnics-dpt-module_defconfig
+++ b/arch/mips/configs/dptechnics-dpt-module_defconfig
@@ -22,6 +22,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
 CONFIG_CMD_RESET=y
+CONFIG_KEXEC=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_LOADENV=y
diff --git a/arch/mips/configs/tplink-mr3020_defconfig b/arch/mips/configs/tplink-mr3020_defconfig
index 4193bd628..84753650b 100644
--- a/arch/mips/configs/tplink-mr3020_defconfig
+++ b/arch/mips/configs/tplink-mr3020_defconfig
@@ -19,6 +19,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
 CONFIG_CMD_RESET=y
+CONFIG_KEXEC=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_LOADENV=y
diff --git a/arch/mips/configs/tplink-wdr4300_defconfig b/arch/mips/configs/tplink-wdr4300_defconfig
index 46093d243..1ba799d27 100644
--- a/arch/mips/configs/tplink-wdr4300_defconfig
+++ b/arch/mips/configs/tplink-wdr4300_defconfig
@@ -20,6 +20,7 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
 CONFIG_CMD_RESET=y
+CONFIG_KEXEC=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_LOADENV=y
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
