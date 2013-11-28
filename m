Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x231.google.com ([2a00:1450:400c:c05::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlsvH-0001HH-1h
 for barebox@lists.infradead.org; Thu, 28 Nov 2013 04:09:51 +0000
Received: by mail-wi0-f177.google.com with SMTP id cc10so277771wib.10
 for <barebox@lists.infradead.org>; Wed, 27 Nov 2013 20:09:33 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu, 28 Nov 2013 05:09:24 +0100
Message-Id: <1385611764-32724-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] mmci: add missing depends on ARM_AMBA
To: barebox@lists.infradead.org

The mmci implementation uses some specific arm amba functions, so add a
depends on ARM_AMBA.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 drivers/mci/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index bd85424..1efb40a 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -103,6 +103,7 @@ config MCI_ATMEL
 
 config MCI_MMCI
 	bool "ARM PL180 MMCI"
+	depends on ARM_AMBA
 	help
 	  Enable this entry to add support to read and write SD cards on a
 	  ARM AMBA PL180.
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
