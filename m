Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dk2vR-00034G-Sq
 for barebox@lists.infradead.org; Tue, 22 Aug 2017 06:44:36 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C1AFDA00543
 for <barebox@lists.infradead.org>; Tue, 22 Aug 2017 08:45:37 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Tue, 22 Aug 2017 08:44:07 +0200
Message-Id: <1503384247-43167-4-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1503384247-43167-1-git-send-email-d.schultz@phytec.de>
References: <1503384247-43167-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 4/4] arm: configs: AM335x: Enable mmc-extcsd command
To: barebox@lists.infradead.org

This tool is for setting up eMMC devices.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/configs/am335x_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index 382133b..dd9c3c5 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -87,6 +87,7 @@ CONFIG_CMD_OF_DISPLAY_TIMINGS=y
 CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_MMC_EXTCSD=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
