Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QYY0S-0000mZ-JZ
	for barebox@lists.infradead.org; Mon, 20 Jun 2011 06:30:45 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 318E2A30A1
	for <barebox@lists.infradead.org>;
	Mon, 20 Jun 2011 08:33:35 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Mon, 20 Jun 2011 08:30:33 +0200
Message-Id: <1308551433-20524-1-git-send-email-j.weitzel@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] PANDA: remove CONFIG_FS_RAMFS and CONFIG_FS_DEVFS
To: barebox@lists.infradead.org

MLO is to big (>40000) to save Space disable CONFIG_FS_RAMFS and
CONFIG_FS_DEVFS in defconfig

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/configs/panda_xload_defconfig |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
index 24452a6..f8f0ae9 100644
--- a/arch/arm/configs/panda_xload_defconfig
+++ b/arch/arm/configs/panda_xload_defconfig
@@ -23,4 +23,6 @@ CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
