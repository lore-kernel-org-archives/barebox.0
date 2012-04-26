Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp24.mail.ru ([94.100.176.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNS4G-0004Yq-3N
 for barebox@lists.infradead.org; Thu, 26 Apr 2012 17:01:21 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 26 Apr 2012 21:02:03 +0400
Message-Id: <1335459724-25546-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] Disallow to selecting MCI_IMX_ESDHC for i.MX27 & i.MX31
 targets
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mci/Kconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index b1a678e..6bae586 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -54,7 +54,7 @@ config MCI_IMX
 
 config MCI_IMX_ESDHC
 	bool "i.MX esdhc"
-	depends on ARCH_IMX
+	depends on ARCH_IMX && !ARCH_IMX27 && !ARCH_IMX31
 	help
 	  Enable this entry to add support to read and write SD cards on a
 	  Freescale i.MX25/35/51 based system.
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
