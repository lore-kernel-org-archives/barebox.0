Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWPh-0004Qq-9v
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:53:07 +0000
Received: from geraet.fritz.box (48-248-142-46.pool.kielnet.net
 [46.142.248.48]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id C787A1C0010
 for <barebox@lists.infradead.org>; Fri, 15 Nov 2019 07:53:03 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 15 Nov 2019 08:52:57 +0100
Message-Id: <20191115075257.24079-5-ahmad@a3f.at>
In-Reply-To: <20191115075257.24079-1-ahmad@a3f.at>
References: <20191115075257.24079-1-ahmad@a3f.at>
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
Subject: [PATCH 5/5] commands: smc: make command usable when ARM_PSCI is
 undefined
To: barebox@lists.infradead.org

The smc command can be useful whenever PSCI is used, regardless of
whether barebox provides the secure monitor or not. Have it depend
on ARM_SMCCC instead.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/Kconfig | 2 +-
 commands/smc.c   | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 08b3af8b20f2..7784966282ac 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1869,7 +1869,7 @@ config CMD_POWEROFF
 
 config CMD_SMC
 	bool
-	depends on ARM_PSCI
+	depends on ARM_SMCCC
 	prompt "PSCI test command"
 	default CONFIG_ARM_PSCI_DEBUG
 	help
diff --git a/commands/smc.c b/commands/smc.c
index 997103676eba..84102f3249bc 100644
--- a/commands/smc.c
+++ b/commands/smc.c
@@ -97,6 +97,11 @@ static int do_smc(int argc, char *argv[])
 	while ((opt = getopt(argc, argv, "nic")) > 0) {
 		switch (opt) {
 		case 'n':
+			if (!IS_ENABLED(CONFIG_ARM_SECURE_MONITOR)) {
+				printf("secure monitor support not compiled in\n");
+				return COMMAND_ERROR;
+			}
+
 			armv7_secure_monitor_install();
 			break;
 		case 'i':
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
