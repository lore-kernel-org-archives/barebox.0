Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSB5N-00011X-IS
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 21:07:38 +0000
Received: from antimon.intern.lynxeye.de.Speedport_W_504V_Typ_A
 (p4FD7E534.dip0.t-ipconnect.de [79.215.229.52])
 by lynxeye.de (Postfix) with ESMTPA id A6C8826C2003
 for <barebox@lists.infradead.org>; Sun,  1 Mar 2015 22:06:42 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  1 Mar 2015 22:06:37 +0100
Message-Id: <1425243997-28330-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425243997-28330-1-git-send-email-dev@lynxeye.de>
References: <1425243997-28330-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/3] ARM: MIOA701: select POLLER
To: barebox@lists.infradead.org

Fixes:
In function `gpio0_poweroff_probe': undefined reference to `poller_register'

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-pxa/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index a45e01a70222..67d1f4b5a9d4 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -64,6 +64,7 @@ config MACH_MIOA701
 	bool "Mitac Mio A701"
 	select BCH_CONST_PARAMS
 	select PWM
+	select POLLER
 	help
 	  Say Y here if you are using a Mitac Mio A701 smartphone
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
