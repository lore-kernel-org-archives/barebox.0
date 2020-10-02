Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOJ1c-0001p4-Fa
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 11:14:57 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kOJ1b-0002pr-J0
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 13:14:55 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kOJ1b-0007yw-9p
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 13:14:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Fri,  2 Oct 2020 13:14:52 +0200
Message-Id: <20201002111452.30547-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: configs: imx_v7_defconfig: add missing RELOCATABLE
To: barebox@lists.infradead.org

All barebox images should be relocatable per default. The user needs to
turn of this option on purpose rather than turning it on. Currently this
option was selected by selecting MACH_CCMX51. Deselecting this board
support ended in deselecting CONFIG_RELOCATABLE.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/configs/imx_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 5dcdff0638..c55df0357d 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -208,3 +208,4 @@ CONFIG_FS_FAT_LFN=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_PNG=y
+CONFIG_RELOCATABLE=y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
