Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKoF-0001b0-7F
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 07:37:41 +0000
Received: from geraet.fritz.box (i53875677.versanet.de [83.135.86.119])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id A2A76FF816
 for <barebox@lists.infradead.org>; Tue, 28 Apr 2020 07:37:37 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 28 Apr 2020 09:37:26 +0200
Message-Id: <20200428073730.34579-7-ahmad@a3f.at>
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
Subject: [PATCH 07/11] lib: bch: define referenced but undefined Kconfig option
To: barebox@lists.infradead.org

BCH_CONST_PARAMS is used, but undefined. Defining it would change
MACH_MIOA701 behavior, so define it but remove the select

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-pxa/Kconfig | 1 -
 lib/Kconfig               | 3 +++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 06ad1885a622..fd9084f83ea1 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -72,7 +72,6 @@ config MACH_MAINSTONE
 	  Say Y here if you are using a Mainstone board
 config MACH_MIOA701
 	bool "Mitac Mio A701"
-	select BCH_CONST_PARAMS
 	select PWM
 	select POLLER
 	help
diff --git a/lib/Kconfig b/lib/Kconfig
index 9a80780186a5..e4b347375971 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -68,6 +68,9 @@ config PROCESS_ESCAPE_SEQUENCE
 
 source "lib/lzo/Kconfig"
 
+config BCH_CONST_PARAMS
+	bool
+
 config BCH
 	bool
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
