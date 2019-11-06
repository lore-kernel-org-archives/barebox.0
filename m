Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIRu-0000G1-53
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 10:22:03 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 11:21:46 +0100
Message-Id: <20191106102149.6858-4-a.fatoum@pengutronix.de>
In-Reply-To: <20191106102149.6858-1-a.fatoum@pengutronix.de>
References: <20191106102149.6858-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 3/6] ARM: psci: wire in smc command help
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The smc command has a help defined, but unused. Wire it in, so
help smc and smc -invalidoption work as expected.

While at it, remove the unimplemented -z option. It's unneeded,
because -c turns off the CPU after starting it again already.
Also it seems it's not implementable without interprocessor communication,
which is probably overkill here.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/psci.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index 8c5043d83c8c..22ce1dfd0e84 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -291,7 +291,10 @@ static int do_smc(int argc, char *argv[])
 		.a3 = 0xdeadbee3,
 	};
 
-	while ((opt = getopt(argc, argv, "nicz")) > 0) {
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	while ((opt = getopt(argc, argv, "nic")) > 0) {
 		switch (opt) {
 		case 'n':
 			armv7_secure_monitor_install();
@@ -321,7 +324,6 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-n",  "Install secure monitor and switch to nonsecure mode")
 BAREBOX_CMD_HELP_OPT ("-i",  "Show information about installed PSCI version")
 BAREBOX_CMD_HELP_OPT ("-c",  "Start secondary CPU core")
-BAREBOX_CMD_HELP_OPT ("-z",  "Turn off secondary CPU core")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(smc)
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
