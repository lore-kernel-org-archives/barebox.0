Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqYm7-0002dY-UA
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 09:11:28 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 11:10:55 +0200
Message-Id: <20200701091122.3437-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200701091122.3437-1-a.fatoum@pengutronix.de>
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 01/28] ARM: at91: remove <mach/hardware.h> include from
 assembly code
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

They are unused and force all headers included by it to have
__ASSEMBLY__ guards for non-preprocessor code. Avoid this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/at91sam9_reset.S    | 1 -
 arch/arm/mach-at91/at91sam9g45_reset.S | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9_reset.S b/arch/arm/mach-at91/at91sam9_reset.S
index 65e22f4fe7e3..ba3f76833161 100644
--- a/arch/arm/mach-at91/at91sam9_reset.S
+++ b/arch/arm/mach-at91/at91sam9_reset.S
@@ -14,7 +14,6 @@
  */
 
 #include <linux/linkage.h>
-#include <mach/hardware.h>
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91_rstc.h>
 
diff --git a/arch/arm/mach-at91/at91sam9g45_reset.S b/arch/arm/mach-at91/at91sam9g45_reset.S
index 6a58de618ce0..98db15c0b0fc 100644
--- a/arch/arm/mach-at91/at91sam9g45_reset.S
+++ b/arch/arm/mach-at91/at91sam9g45_reset.S
@@ -11,7 +11,6 @@
  */
 
 #include <linux/linkage.h>
-#include <mach/hardware.h>
 #include <mach/at91sam9_ddrsdr.h>
 #include <mach/at91_rstc.h>
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
