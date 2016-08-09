Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bX6IE-00078n-Qy
 for barebox@lists.infradead.org; Tue, 09 Aug 2016 12:38:04 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue,  9 Aug 2016 14:37:27 +0200
Message-Id: <1470746252-3146-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/7] ARM: socfpga: defconfig: add bootstrap_devfs
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/configs/socfpga-xload_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
index 521f3f1c1f43..e7b84dacaeaa 100644
--- a/arch/arm/configs/socfpga-xload_defconfig
+++ b/arch/arm/configs/socfpga-xload_defconfig
@@ -25,4 +25,5 @@ CONFIG_EEPROM_AT25=y
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
 CONFIG_BOOTSTRAP=y
+CONFIG_BOOTSTRAP_DEVFS=y
 CONFIG_BOOTSTRAP_DISK=y
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
