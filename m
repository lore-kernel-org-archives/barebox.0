Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XuMYB-0000WF-HX
 for barebox@lists.infradead.org; Fri, 28 Nov 2014 14:29:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Nov 2014 15:28:55 +0100
Message-Id: <1417184946-16128-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
References: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/14] ARM: ep93xx: let broken SoCs depend on BROKEN
To: barebox@lists.infradead.org

Compilation with these SoCs fails with CONFIG_EP93XX_SDRAM_BANK3_SIZE
undefined.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-ep93xx/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-ep93xx/Kconfig b/arch/arm/mach-ep93xx/Kconfig
index 91f6c8e..f805a8f 100644
--- a/arch/arm/mach-ep93xx/Kconfig
+++ b/arch/arm/mach-ep93xx/Kconfig
@@ -18,12 +18,15 @@ config ARCH_EP9302
 	bool "EP9302"
 
 config ARCH_EP9307
+	depends on BROKEN
 	bool "EP9307"
 
 config ARCH_EP9312
+	depends on BROKEN
 	bool "EP9312"
 
 config ARCH_EP9315
+	depends on BROKEN
 	bool "EP9315"
 
 endchoice
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
