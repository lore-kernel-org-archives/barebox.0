Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRdsu-0003yv-HO
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 06:59:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2012 08:58:57 +0200
Message-Id: <1351234748-24994-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
References: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/15] ARM: let THUMB2 select EABI
To: barebox@lists.infradead.org

THUMB2 mode needs EABI to build, so select it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c1a963d..57b3ca7 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -121,6 +121,7 @@ config AEABI
 
 config THUMB2_BAREBOX
 	select ARM_ASM_UNIFIED
+	select AEABI
 	depends on CPU_V7
 	bool "Compile barebox in thumb-2 mode (read help)"
 	help
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
