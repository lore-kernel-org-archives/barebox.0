Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtJWC-0002PJ-IH
 for barebox@lists.infradead.org; Tue, 25 Nov 2014 17:03:14 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XtJVr-0000RL-1O
 for barebox@lists.infradead.org; Tue, 25 Nov 2014 18:02:51 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 25 Nov 2014 18:02:49 +0100
Message-Id: <1416934970-24929-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416934970-24929-1-git-send-email-l.stach@pengutronix.de>
References: <1416934970-24929-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH v2 4/5] blspec: depend on, not select flexible bootargs
To: barebox@lists.infradead.org

Blspec is a consumer of the flexible bootargs mechanism, so it should
depend on it rather than select it.

Fixes:
warning: (BLSPEC && DEFAULT_ENVIRONMENT_GENERIC_NEW) selects FLEXIBLE_BOOTARGS
which has unmet direct dependencies (COMMAND_SUPPORT && CMD_GLOBAL)

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
v2:
fix mvebu defconfig
---
 arch/arm/configs/mvebu_defconfig | 1 +
 common/Kconfig                   | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
index 253cb0934db1..9309084cdc05 100644
--- a/arch/arm/configs/mvebu_defconfig
+++ b/arch/arm/configs/mvebu_defconfig
@@ -24,6 +24,7 @@ CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_FLEXIBLE_BOOTARGS=y
 CONFIG_CMD_BOOT=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
diff --git a/common/Kconfig b/common/Kconfig
index 6eba3951989f..562798063b81 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -479,8 +479,8 @@ config TIMESTAMP
 
 config BLSPEC
 	depends on BLOCK
+	depends on FLEXIBLE_BOOTARGS
 	select OFTREE
-	select FLEXIBLE_BOOTARGS
 	bool
 	prompt "Support bootloader spec"
 	help
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
