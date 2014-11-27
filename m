Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xu1mp-0002HA-Ns
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 16:19:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2014 17:15:28 +0100
Message-Id: <1417104932-13960-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417104932-13960-1-git-send-email-s.hauer@pengutronix.de>
References: <1417104932-13960-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] ARM: Don't allow Thumb2 on Tegra
To: barebox@lists.infradead.org

Tegra builts its initial code for the v4 CPU which is not
Thumb2 capable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 6e9e715..941a5ec 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -273,6 +273,7 @@ config AEABI
 config THUMB2_BAREBOX
 	select ARM_ASM_UNIFIED
 	select AEABI
+	depends on !ARCH_TEGRA
 	depends on CPU_V7 && !CPU_32v4T && !CPU_32v5 && !CPU_32v6
 	bool "Compile barebox in thumb-2 mode (read help)"
 	help
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
