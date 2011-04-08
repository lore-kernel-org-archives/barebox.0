Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8D6k-000195-NV
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:56:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:56:15 +0200
Message-Id: <1302274579-11158-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
References: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/8] arm: compile icache command only when command support is
	present
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 346f8dc..cf30789 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -97,7 +97,7 @@ void arch_shutdown(void)
  * default setting we are running in barebox, there's no special preparation
  * required.
  */
-
+#ifdef CONFIG_COMMAND
 static int do_icache(struct command *cmdtp, int argc, char *argv[])
 {
 	if (argc == 1) {
@@ -121,3 +121,4 @@ BAREBOX_CMD_START(icache)
 	.usage		= "show/change icache status",
 	BAREBOX_CMD_HELP(cmd_icache_help)
 BAREBOX_CMD_END
+#endif
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
