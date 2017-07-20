Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dY8Py-0008DU-OO
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 10:10:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dY8Pd-0005pZ-5D
 for barebox@lists.infradead.org; Thu, 20 Jul 2017 12:10:29 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 20 Jul 2017 12:10:28 +0200
Message-Id: <20170720101028.4289-3-l.stach@pengutronix.de>
In-Reply-To: <20170720101028.4289-1-l.stach@pengutronix.de>
References: <20170720101028.4289-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: at91: animeo: depend on !CONSOLE_NONE
To: barebox@lists.infradead.org

The board file configures the consoles, so need console support.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 9db53b2261db..3b572ebdfe61 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -256,6 +256,7 @@ choice
 
 config MACH_ANIMEO_IP
 	bool "Somfy Animeo IP"
+	depends on !CONSOLE_NONE
 
 config MACH_AT91SAM9260EK
 	bool "Atmel AT91SAM9260-EK"
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
