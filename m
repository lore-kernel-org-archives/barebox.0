Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cblA7-00067m-SZ
 for barebox@lists.infradead.org; Thu, 09 Feb 2017 09:37:13 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 2CB79A003C0
 for <barebox@lists.infradead.org>; Thu,  9 Feb 2017 10:37:00 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Thu, 9 Feb 2017 10:36:43 +0100
Message-Id: <1486633003-34908-3-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1486633003-34908-1-git-send-email-w.egorov@phytec.de>
References: <1486633003-34908-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 2/2] config: Set UART port 2 as debug port
To: barebox@lists.infradead.org

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/configs/rk3288_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/rk3288_defconfig b/arch/arm/configs/rk3288_defconfig
index f54f4cc..15e6c15 100644
--- a/arch/arm/configs/rk3288_defconfig
+++ b/arch/arm/configs/rk3288_defconfig
@@ -26,7 +26,7 @@ CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_LL=y
-CONFIG_DEBUG_ROCKCHIP_UART_PORT=0
+CONFIG_DEBUG_ROCKCHIP_UART_PORT=2
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
