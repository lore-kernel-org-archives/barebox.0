Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOrnw-0005aK-DE
 for barebox@lists.infradead.org; Sun, 27 Oct 2019 23:18:37 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Oct 2019 00:18:29 +0100
Message-Id: <20191027231832.10247-5-a.fatoum@pengutronix.de>
In-Reply-To: <20191027231832.10247-1-a.fatoum@pengutronix.de>
References: <20191027231832.10247-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 5/8] ARM: stm32mp: select ARM_SMCCC always
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

ARM_SMCCC compiles in the code for issuing ARM secure monitor calls.
We need those on the STM32MP, because barebox runs in non-secure mode
and does some operations like reading the BSEC OTP through SMCs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index d4947cef5c98..f82844a83a5e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -201,6 +201,7 @@ config ARCH_STM32MP
 	select GPIOLIB
 	select ARCH_HAS_RESET_CONTROLLER
 	select ARM_AMBA
+	select ARM_SMCCC
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
