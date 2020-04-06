Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLKiY-00017m-JG
 for barebox@lists.infradead.org; Mon, 06 Apr 2020 05:54:44 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Apr 2020 07:54:35 +0200
Message-Id: <20200406055435.2330-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] commands: remove CONFIG_ prefix from Kconfig symbol
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Kconfig symbols, unlike their preprocessor counterparts, don't have this
prefix. Drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 7784966282ac..a0c28289834b 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1871,7 +1871,7 @@ config CMD_SMC
 	bool
 	depends on ARM_SMCCC
 	prompt "PSCI test command"
-	default CONFIG_ARM_PSCI_DEBUG
+	default ARM_PSCI_DEBUG
 	help
 	  Secure monitor code test command
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
