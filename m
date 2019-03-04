Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0lvO-0004tR-Mn
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 11:38:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 12:38:23 +0100
Message-Id: <20190304113823.21535-7-s.hauer@pengutronix.de>
In-Reply-To: <20190304113823.21535-1-s.hauer@pengutronix.de>
References: <20190304113823.21535-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] ddr_spd: Enable in PBL
To: Barebox List <barebox@lists.infradead.org>

SPD EEPROMs are typically needed in PBL when the SDRAM is not yet
initialized. Enable compilation of the SPD support in PBL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Makefile b/common/Makefile
index b617642242..a284655fc1 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -24,7 +24,7 @@ obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
 obj-$(CONFIG_CONSOLE_FULL)	+= console.o
 obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
 obj-y				+= console_countdown.o
-obj-$(CONFIG_DDR_SPD)		+= ddr_spd.o
+obj-pbl-$(CONFIG_DDR_SPD)	+= ddr_spd.o
 obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
 obj-$(CONFIG_FILETYPE)		+= filetype.o
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
