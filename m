Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1e85ll-0004JR-D8
 for barebox@lists.infradead.org; Fri, 27 Oct 2017 14:38:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E3A58A0087D
 for <barebox@lists.infradead.org>; Fri, 27 Oct 2017 16:39:26 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 27 Oct 2017 16:37:30 +0200
Message-Id: <1509115052-4331-3-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1509115052-4331-1-git-send-email-d.schultz@phytec.de>
References: <1509115052-4331-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 3/5] ARM: configs: am335x_defconfig: Add state config
To: barebox@lists.infradead.org

Enable the state framework for all AM335x boards.
---
 arch/arm/configs/am335x_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index dd9c3c5..5a236fb 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -88,6 +88,7 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_MMC_EXTCSD=y
+CONFIG_CMD_STATE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
@@ -142,3 +143,5 @@ CONFIG_FS_FAT_LFN=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
+CONFIG_STATE=y
+CONFIG_STATE_DRV=y
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
