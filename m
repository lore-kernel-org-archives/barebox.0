Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIzi7-0004V5-H6
 for barebox@lists.infradead.org; Wed, 16 May 2018 16:55:33 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 16 May 2018 18:42:32 +0200
Message-Id: <20180516164233.27581-10-linux@rempel-privat.de>
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
Subject: [PATCH v1 09/10] MIPS: configs: dptechnics-dpt-module: enable
 watchdog poller
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/configs/dptechnics-dpt-module_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/configs/dptechnics-dpt-module_defconfig b/arch/mips/configs/dptechnics-dpt-module_defconfig
index 33049164c..4ba1bb238 100644
--- a/arch/mips/configs/dptechnics-dpt-module_defconfig
+++ b/arch/mips/configs/dptechnics-dpt-module_defconfig
@@ -82,6 +82,7 @@ CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_POLLER=y
 CONFIG_WATCHDOG_AR9344=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
