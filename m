Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gK2Sn-0004qj-QF
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 14:36:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gK2Sb-0002dE-O8
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 15:36:05 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  6 Nov 2018 15:36:05 +0100
Message-Id: <20181106143605.29820-1-l.stach@pengutronix.de>
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
Subject: [PATCH] scripts: imx-image: fix first instruction in i.MX8MQ header
To: barebox@lists.infradead.org

The instruction being patched in was a branch to 0x24000, instead of
the intended 0x9000. This doesn't matter when starting the image from
a regular boot source, but breaks starting the image via bootm, as we
rely on the jump in the first header instruction taking us to the
actual code.

Fixes: 6d2132a9ded7 (scripts: imx-image: Add i.MX8MQ support)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 scripts/imx/imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 2341732b2fdd..b6fbc5aea5a3 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -243,7 +243,7 @@ static struct soc_type socs[] = {
 	{ .name = "imx53",  .header_version = 2, .cpu_type = IMX_CPU_IMX53,  .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
 	{ .name = "imx6",   .header_version = 2, .cpu_type = IMX_CPU_IMX6,   .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
 	{ .name = "imx7",   .header_version = 2, .cpu_type = IMX_CPU_IMX7,   .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
-	{ .name = "imx8mq", .header_version = 2, .cpu_type = IMX_CPU_IMX8MQ, .header_gap = SZ_32K, .first_opcode = 0x14009000 /* b 0x9000 */},
+	{ .name = "imx8mq", .header_version = 2, .cpu_type = IMX_CPU_IMX8MQ, .header_gap = SZ_32K, .first_opcode = 0x14002400 /* b 0x9000 */},
 	{ .name = "vf610",  .header_version = 2, .cpu_type = IMX_CPU_VF610,  .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
 };
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
