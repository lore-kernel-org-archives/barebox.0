Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTfRM-0002cP-Bd
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 05:39:25 +0000
Received: from geraet.fritz.box (i5387567C.versanet.de [83.135.86.124])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id CC0771BF208
 for <barebox@lists.infradead.org>; Wed, 29 Apr 2020 05:39:21 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 29 Apr 2020 07:39:12 +0200
Message-Id: <20200429053914.4775-3-ahmad@a3f.at>
In-Reply-To: <20200429053914.4775-1-ahmad@a3f.at>
References: <20200429053914.4775-1-ahmad@a3f.at>
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
Subject: [PATCH 3/5] net: remove unused Kconfig options
To: barebox@lists.infradead.org

Both options are used nowhere and can be dropped:

- OF_NET code is compiled always and code is discarded at link-time if
  unreferenced
- Designware Ethernet can be enabled in Kconfig and no arch code
  selects the symbol

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/net/Kconfig | 3 ---
 drivers/of/Kconfig  | 4 ----
 2 files changed, 7 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 5823320b03f1..efa16b30e40e 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -7,9 +7,6 @@ config HAS_AT91_ETHER
 config HAS_CS8900
 	bool
 
-config HAS_DESIGNWARE_ETH
-	bool
-
 config HAS_DM9000
 	bool
 
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 9ed86afd748c..23be25d85d09 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -18,10 +18,6 @@ config OFDEVICE
 config OF_ADDRESS_PCI
 	bool
 
-config OF_NET
-	depends on NET
-	def_bool y
-
 config OF_GPIO
 	depends on GPIOLIB
 	depends on OFDEVICE
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
