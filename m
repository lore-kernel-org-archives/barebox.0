Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og102.obsmtp.com ([64.18.0.143])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJN2u-0002JA-2f
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 13:00:08 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 28 Feb 2014 12:58:55 +0000
Message-Id: <1393592335-9871-5-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1393592335-9871-1-git-send-email-renaud.barbier@ge.com>
References: <1393592335-9871-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 4/4] ppc: P2020RDB and DA923RC configuration
To: barebox@lists.infradead.org

Enable memtest, MMU and iomem support on the P2020RDB and DA923RC.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/configs/da923rc_defconfig  |    2 ++
 arch/ppc/configs/p2020rdb_defconfig |    2 ++
 arch/ppc/mach-mpc85xx/Kconfig       |    3 +++
 3 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/configs/da923rc_defconfig b/arch/ppc/configs/da923rc_defconfig
index da1b13a..6d3fbdb 100644
--- a/arch/ppc/configs/da923rc_defconfig
+++ b/arch/ppc/configs/da923rc_defconfig
@@ -61,3 +61,5 @@ CONFIG_CMD_VERSION=n
 CONFIG_OFTREE=y
 CONFIG_CMD_OFTREE_PROBE=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_IOMEM=y
diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
index 0f77903..868c060 100644
--- a/arch/ppc/configs/p2020rdb_defconfig
+++ b/arch/ppc/configs/p2020rdb_defconfig
@@ -32,3 +32,5 @@ CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_IOMEM=y
diff --git a/arch/ppc/mach-mpc85xx/Kconfig b/arch/ppc/mach-mpc85xx/Kconfig
index dc2d2b7..74bad76 100644
--- a/arch/ppc/mach-mpc85xx/Kconfig
+++ b/arch/ppc/mach-mpc85xx/Kconfig
@@ -1,5 +1,8 @@
 if ARCH_MPC85XX
 
+config MMU
+	default y if CMD_MEMTEST
+
 config TEXT_BASE
 	hex
 	default 0xeff80000 if P2020RDB
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
