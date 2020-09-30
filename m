Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNbbd-0003k5-S4
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 12:53:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 14:53:02 +0200
Message-Id: <20200930125303.14933-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200930125303.14933-1-a.fatoum@pengutronix.de>
References: <20200930125303.14933-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: stm32mp: init: set up CPU and bootsource at core
 init level
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

ARM device tree is unflattened at core init level and banner with model
extracted from device tree is printed at console init level.
The only init level between is postcore, so board code seeking to
modify the device tree machine model should run then.

On the STM32MP1, we query SoC type at postcore initcall, so we can't
have the board code fixing up the compatible on postcore as well.

Resolve this by moving stm32mp_init to core_initcall. This is allowed
as the code has no dependency that requires it to run postcore.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index 7094e0e7dd08..a9144a2189df 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -354,4 +354,4 @@ static int stm32mp_init(void)
 
 	return 0;
 }
-postcore_initcall(stm32mp_init);
+core_initcall(stm32mp_init);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
