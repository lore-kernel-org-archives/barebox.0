Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQazC-0004Lh-Fk
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 16:08:38 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Wed,  6 Jun 2018 18:08:07 +0200
Message-Id: <20180606160809.16233-4-m.niestroj@grinn-global.com>
In-Reply-To: <20180606160809.16233-1-m.niestroj@grinn-global.com>
References: <20180606160809.16233-1-m.niestroj@grinn-global.com>
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
Subject: [RFC PATCH 3/5] ARM: imx: Update default image certificate for CST
 tool
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

CST tool by default generates certificate with
IMG1_1_sha256_4096_65537_v3_usr_crt.pem file name instead. Update
Kconfig default to match that. Verified with CST version 2.3.3.

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 arch/arm/mach-imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index be56acd3a..29ebc654c 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -786,7 +786,7 @@ config HABV4_CSF_CRT_PEM
 
 config HABV4_IMG_CRT_PEM
 	string "Path to IMG certificate"
-	default "../crts/IMG_1_sha256_4096_65537_v3_usr_crt.pem"
+	default "../crts/IMG1_1_sha256_4096_65537_v3_usr_crt.pem"
 	help
 	  Path to the Image certificate, produced by the Freescale
 	  Public Key Infrastructure (PKI) script.
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
