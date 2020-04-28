Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKoE-0001al-Om
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 07:37:40 +0000
Received: from geraet.fritz.box (i53875677.versanet.de [83.135.86.119])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 472F0FF812
 for <barebox@lists.infradead.org>; Tue, 28 Apr 2020 07:37:37 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 28 Apr 2020 09:37:25 +0200
Message-Id: <20200428073730.34579-6-ahmad@a3f.at>
In-Reply-To: <20200428073730.34579-1-ahmad@a3f.at>
References: <20200428073730.34579-1-ahmad@a3f.at>
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
Subject: [PATCH 06/11] crypto: drop select on non-existing Kconfig options
To: barebox@lists.infradead.org

We define neither CRYPTO_BLKCIPHER nor CRYPTO_DES in barebox. Drop the
select on them.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/crypto/imx-scc/Kconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/crypto/imx-scc/Kconfig b/drivers/crypto/imx-scc/Kconfig
index 531304f43218..bc4676a10af7 100644
--- a/drivers/crypto/imx-scc/Kconfig
+++ b/drivers/crypto/imx-scc/Kconfig
@@ -1,8 +1,6 @@
 config CRYPTO_DEV_MXC_SCC
 	tristate "Support for Freescale Security Controller (SCC)"
 	depends on ARCH_IMX25 && OFTREE
-	select CRYPTO_BLKCIPHER
-	select CRYPTO_DES
 	help
 	  This option enables support for the Security Controller (SCC)
 	  found in Freescale i.MX25 chips.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
