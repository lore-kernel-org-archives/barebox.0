Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKoF-0001ag-Bx
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 07:37:41 +0000
Received: from geraet.fritz.box (i53875677.versanet.de [83.135.86.119])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 50ABEFF815
 for <barebox@lists.infradead.org>; Tue, 28 Apr 2020 07:37:36 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 28 Apr 2020 09:37:23 +0200
Message-Id: <20200428073730.34579-4-ahmad@a3f.at>
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
Subject: [PATCH 04/11] ARM: at91: remove undefined Kconfig symbol
To: barebox@lists.infradead.org

Symbol used to exist, but was replaced by DEBUG_AT91_UART_BASE in
common/Kconfig. Remove last trace of it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-at91/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 77b3e9db64c8..121cca2acf11 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -142,7 +142,6 @@ config SOC_AT91RM9200
 	bool
 	select CPU_ARM920T
 	select HAS_AT91_ETHER
-	select HAVE_AT91_DBGU0
 	select HAVE_AT91_USB_CLK
 	select PINCTRL_AT91
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
