Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fny-0003wV-Dc
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:21 +0100
Message-Id: <20200217124623.14520-41-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 40/42] scripts: imx-image: Add i.MX8MM support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 980173950f..fd119e3e4f 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -243,6 +243,7 @@ static struct soc_type socs[] = {
 	{ .name = "imx53",  .header_version = 2, .cpu_type = IMX_CPU_IMX53,  .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
 	{ .name = "imx6",   .header_version = 2, .cpu_type = IMX_CPU_IMX6,   .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
 	{ .name = "imx7",   .header_version = 2, .cpu_type = IMX_CPU_IMX7,   .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
+	{ .name = "imx8mm", .header_version = 2, .cpu_type = IMX_CPU_IMX8MM, .header_gap = SZ_32K, .first_opcode = 0x14000000 /* b 0x0000 (offset computed) */},
 	{ .name = "imx8mq", .header_version = 2, .cpu_type = IMX_CPU_IMX8MQ, .header_gap = SZ_32K, .first_opcode = 0x14000000 /* b 0x0000 (offset computed) */},
 	{ .name = "vf610",  .header_version = 2, .cpu_type = IMX_CPU_VF610,  .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
 };
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
