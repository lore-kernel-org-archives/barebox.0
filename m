Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTTUY-0005Hj-QD
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 10:58:59 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu,  5 Mar 2015 11:58:31 +0100
Message-Id: <1425553111-8816-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1425553111-8816-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1425553111-8816-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: socfpga: socdk: statify sys_mgr_init_table
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The socdk can't be build in a multiboard environment, i.e. when other
socfgpa boards are also build.

Fix this.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/altera-socdk/pinmux_config.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/altera-socdk/pinmux_config.c b/arch/arm/boards/altera-socdk/pinmux_config.c
index 0965e133792f..ff784bbecf93 100644
--- a/arch/arm/boards/altera-socdk/pinmux_config.c
+++ b/arch/arm/boards/altera-socdk/pinmux_config.c
@@ -30,7 +30,7 @@
 #include <common.h>
 
 /* pin MUX configuration data */
-unsigned long sys_mgr_init_table[] = {
+static unsigned long sys_mgr_init_table[] = {
 	0,			/* EMACIO0 */
 	2,			/* EMACIO1 */
 	2,			/* EMACIO2 */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
