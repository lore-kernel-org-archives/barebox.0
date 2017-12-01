Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKj6q-0000pr-Jm
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:03:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:03:26 +0100
Message-Id: <20171201110326.31598-8-s.hauer@pengutronix.de>
In-Reply-To: <20171201110326.31598-1-s.hauer@pengutronix.de>
References: <20171201110326.31598-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] ARM: psci command: Add to misc group
To: Barebox List <barebox@lists.infradead.org>

Explicitly add psci command to the misc group to get rid of
the warning that the command has no group.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/psci.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index eafb361a0a..0a7e48f8fe 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -303,7 +303,8 @@ BAREBOX_CMD_HELP_OPT ("-z",  "Turn off secondary CPU core")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(smc)
-        .cmd            = do_smc,
-        BAREBOX_CMD_DESC("secure monitor test command")
+	.cmd = do_smc,
+	BAREBOX_CMD_DESC("secure monitor test command")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 BAREBOX_CMD_END
 #endif
\ No newline at end of file
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
