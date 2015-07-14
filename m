Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZF2tG-0007Jy-7i
 for barebox@lists.infradead.org; Tue, 14 Jul 2015 16:17:07 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 14 Jul 2015 18:16:39 +0200
Message-Id: <1436890599-31412-5-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1436890599-31412-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1436890599-31412-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: socfpga: defconfig: add bootstrap_devfs
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/configs/socfpga-xload_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
index 9f64adfd7438..413fcc319d3c 100644
--- a/arch/arm/configs/socfpga-xload_defconfig
+++ b/arch/arm/configs/socfpga-xload_defconfig
@@ -27,4 +27,5 @@ CONFIG_EEPROM_AT25=y
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
 CONFIG_BOOTSTRAP=y
+CONFIG_BOOTSTRAP_DEVFS=y
 CONFIG_BOOTSTRAP_DISK=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
