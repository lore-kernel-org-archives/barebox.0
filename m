Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22f.google.com ([2a00:1450:400c:c09::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzrUA-0003yp-LJ
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:49 +0000
Received: by wmec201 with SMTP id c201so86265858wme.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:21 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:35:55 +0100
Message-Id: <1448048172-10080-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 02/19] mtd: nand: Clarify Marvell Orion Kconfig prompt
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Kconfig prompt for Marvell Orion SoCs is missing a "Marvell"
prefix, add it to the prompt.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
 drivers/mtd/nand/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index ff265848459a..3426ec055756 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -92,7 +92,7 @@ config NAND_OMAP_GPMC
 
 config NAND_ORION
 	bool
-	prompt "Orion NAND driver"
+	prompt "Marvell Orion NAND driver"
 	depends on ARCH_KIRKWOOD
 	help
 	  Support for the Orion NAND controller, present in Kirkwood SoCs.
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
