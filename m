Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UWJDM-00069I-5u
 for barebox@lists.infradead.org; Sun, 28 Apr 2013 04:27:54 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 28 Apr 2013 08:27:26 +0400
Message-Id: <1367123249-24119-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/4] ata: Remove wrong DISK_DRIVE symbol
To: barebox@lists.infradead.org

DISK_DRIVE is missing in Kconfig, so remove the "select" statement.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/ata/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 42f2065..9830cc0 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -35,7 +35,6 @@ config DISK_ATA
 config DISK_AHCI
 	bool "AHCI support"
 	select DISK_ATA
-	select DISK_DRIVE
 
 config DISK_AHCI_IMX
 	depends on ARCH_IMX
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
