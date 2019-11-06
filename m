Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFSi-0001VT-N9
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 07:10:42 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 08:10:29 +0100
Message-Id: <20191106071034.24452-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191106071034.24452-1-a.fatoum@pengutronix.de>
References: <20191106071034.24452-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/7] ARM: psci: use CONFIG_ARM_PSCI_DEBUG for smc command
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

There's already an option to use when debugging PSCI. Instead of
requiring users to #define DEBUG 1 as well, have the smc command be
usable when CONFIG_ARM_PSCI_DEBUG, not DEBUG is defined.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/psci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index b02e83986af8..8c5043d83c8c 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -228,7 +228,7 @@ static int armv7_psci_init(void)
 }
 device_initcall(armv7_psci_init);
 
-#ifdef DEBUG
+#ifdef CONFIG_ARM_PSCI_DEBUG
 
 #include <command.h>
 #include <getopt.h>
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
