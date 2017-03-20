Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpx23-0001Wq-Ib
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 13:07:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cpx1g-0007Bl-Sx
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 14:07:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 20 Mar 2017 14:07:07 +0100
Message-Id: <20170320130708.15741-2-l.stach@pengutronix.de>
In-Reply-To: <20170320130708.15741-1-l.stach@pengutronix.de>
References: <20170320130708.15741-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] ATA: mvebu: select DISK_ATA
To: barebox@lists.infradead.org

The already selected DISK_IDE_SFF depends on it.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/ata/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 0234c66c8ec8..040c5fd237fd 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -44,6 +44,7 @@ config DISK_AHCI_IMX
 
 config DISK_SATA_MV
 	depends on ARCH_MVEBU
+	select DISK_ATA
 	select DISK_IDE_SFF
 	bool "Marvell SATA support"
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
