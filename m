Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnimZ-0001Ue-1b
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:15:59 +0200
Message-Id: <20200623131606.16316-14-s.hauer@pengutronix.de>
In-Reply-To: <20200623131606.16316-1-s.hauer@pengutronix.de>
References: <20200623131606.16316-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/20] scripts: imx-image: Add i.MX8MP support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx.c | 1 +
 scripts/imx/imx.h | 9 ++++++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 5eacfdf76b..4d2f65af9b 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -240,6 +240,7 @@ static struct soc_type socs[] = {
 	{ .name = "imx6",   .header_version = 2, .cpu_type = IMX_CPU_IMX6,   .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
 	{ .name = "imx7",   .header_version = 2, .cpu_type = IMX_CPU_IMX7,   .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
 	{ .name = "imx8mm", .header_version = 2, .cpu_type = IMX_CPU_IMX8MM, .header_gap = SZ_32K, .first_opcode = 0x14000000 /* b 0x0000 (offset computed) */},
+	{ .name = "imx8mp", .header_version = 2, .cpu_type = IMX_CPU_IMX8MP, .header_gap = SZ_32K, .first_opcode = 0x14000000 /* b 0x0000 (offset computed) */},
 	{ .name = "imx8mq", .header_version = 2, .cpu_type = IMX_CPU_IMX8MQ, .header_gap = SZ_32K, .first_opcode = 0x14000000 /* b 0x0000 (offset computed) */},
 	{ .name = "vf610",  .header_version = 2, .cpu_type = IMX_CPU_VF610,  .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
 };
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index d466e5dad0..7a3ac31cd2 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -4,7 +4,14 @@
 
 static inline int cpu_is_mx8m(const struct config_data *data)
 {
-	return data->cpu_type == IMX_CPU_IMX8MQ || data->cpu_type == IMX_CPU_IMX8MM;
+	switch (data->cpu_type) {
+	case IMX_CPU_IMX8MQ:
+	case IMX_CPU_IMX8MM:
+	case IMX_CPU_IMX8MP:
+		return true;
+	default:
+		return false;
+	}
 }
 
 int parse_config(struct config_data *data, const char *filename);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
