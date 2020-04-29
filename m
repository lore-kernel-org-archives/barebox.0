Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTfRM-0002cN-Bb
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 05:39:25 +0000
Received: from geraet.fritz.box (i5387567C.versanet.de [83.135.86.124])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 8B8D71BF20C
 for <barebox@lists.infradead.org>; Wed, 29 Apr 2020 05:39:20 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 29 Apr 2020 07:39:10 +0200
Message-Id: <20200429053914.4775-1-ahmad@a3f.at>
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
Subject: [PATCH 1/5] commands: remove left-over CMD_AT91MUX Kconfig option
To: barebox@lists.infradead.org

71ff9bfebd ("pinctrl: at91: add pinctrl driver") removed the
implementation of the command, but left the now useless config option.
Remove it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/Kconfig | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 77637f916c16..8de98ef3ee8e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -28,22 +28,6 @@ config CMD_AT91CLK
 	help
 	  List clock configuration.
 
-config CMD_AT91MUX
-	bool "at91mux"
-	default y
-	depends on ARCH_AT91
-	help
-	  List MUX configuration
-
-	  Usage: at91mux [-pb]
-
-	  Dump current MUX configuration. If a BANK or PIN has been
-	  specified dump pin details.
-
-	  Options:
-	  -p PIN   pin number
-	  -b BANK  bank number
-
 config CMD_ARM_CPUINFO
 	bool "cpuinfo command"
 	default y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
