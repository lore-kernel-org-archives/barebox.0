Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKoG-0001cN-Tg
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 07:37:43 +0000
Received: from geraet.fritz.box (i53875677.versanet.de [83.135.86.119])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 5F732FF811
 for <barebox@lists.infradead.org>; Tue, 28 Apr 2020 07:37:39 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 28 Apr 2020 09:37:29 +0200
Message-Id: <20200428073730.34579-10-ahmad@a3f.at>
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
Subject: [PATCH 10/11] reset: fix typo in Kconfig default
To: barebox@lists.infradead.org

We don't have a config SOC_IMX7D, but have an ARCH_IMX7. Fix this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/reset/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 048f2081f82a..9befc5e55f32 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -16,7 +16,7 @@ if RESET_CONTROLLER
 
 config RESET_IMX7
 	bool "i.MX7 Reset Driver"
-	default SOC_IMX7D
+	default ARCH_IMX7
 	select MFD_SYSCON
 	help
 	  This enables the reset controller driver for i.MX7 SoCs.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
