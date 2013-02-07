Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f172.google.com ([209.85.215.172])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3YCM-0004Bp-Ra
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 20:35:59 +0000
Received: by mail-ea0-f172.google.com with SMTP id f13so1390948eaa.17
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 12:35:57 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu,  7 Feb 2013 21:36:19 +0100
Message-Id: <1360269380-28155-4-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1360269380-28155-1-git-send-email-alex.aring@gmail.com>
References: <1360269380-28155-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 3/4] sata-imx: fix depends on ARCH_IMX
To: barebox@lists.infradead.org


Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 drivers/ata/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index ff6528a..42f2065 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -38,6 +38,7 @@ config DISK_AHCI
 	select DISK_DRIVE
 
 config DISK_AHCI_IMX
+	depends on ARCH_IMX
 	depends on DISK_AHCI
 	bool "i.MX AHCI support"
 
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
