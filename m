Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggQ5x-0004D1-6Z
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 08:17:14 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 7 Jan 2019 09:17:06 +0100
Message-Id: <1546849029-47070-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1546849029-47070-1-git-send-email-t.remmet@phytec.de>
References: <1546849029-47070-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 1/4] ARM: configs: omap_defconfig: Add bootchooser
To: barebox@lists.infradead.org

From: Daniel Schultz <d.schultz@phytec.de>

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/configs/omap_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
index e41757b9190b..128027a6406b 100644
--- a/arch/arm/configs/omap_defconfig
+++ b/arch/arm/configs/omap_defconfig
@@ -32,6 +32,7 @@ CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_STATE=y
+CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
@@ -92,6 +93,7 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_STATE=y
+CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
