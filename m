Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1biO0m-0006Au-A5
 for barebox@lists.infradead.org; Fri, 09 Sep 2016 15:46:42 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Fri,  9 Sep 2016 17:43:40 +0200
Message-Id: <1473435824-7830-2-git-send-email-akurz@blala.de>
In-Reply-To: <1473435824-7830-1-git-send-email-akurz@blala.de>
References: <1473435824-7830-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 2/6] scripts: imx: add support for i.MX50
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Add imximg support for i.MX50 processors which use the i.MX flash
header v2 format.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-image.c      | 2 +-
 scripts/imx/imx-usb-loader.c | 3 +++
 scripts/imx/imx.c            | 1 +
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index fb2c295..650a67f 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -274,7 +274,7 @@ static int write_mem_v1(uint32_t addr, uint32_t val, int width, int set_bits, in
 
 /*
  * ============================================================================
- * i.MX flash header v2 handling. Found on i.MX53 and i.MX6
+ * i.MX flash header v2 handling. Found on i.MX50, i.MX53 and i.MX6
  * ============================================================================
  */
 
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index b5c1531..c0aaa7d 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -90,6 +90,9 @@ struct mach_id imx_ids[] = {
 		.vid = 0x15a2,
 		.pid = 0x0052,
 		.name = "i.MX50",
+		.header_type = HDR_MX53,
+		.mode = MODE_HID,
+		.max_transfer = 1024,
 	}, {
 		.vid = 0x15a2,
 		.pid = 0x0054,
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 4ec8c89..c8ee309 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -219,6 +219,7 @@ struct soc_type {
 static struct soc_type socs[] = {
 	{ .name = "imx25", .header_version = 1, .cpu_type = IMX_CPU_IMX25 },
 	{ .name = "imx35", .header_version = 1, .cpu_type = IMX_CPU_IMX35 },
+	{ .name = "imx50", .header_version = 2, .cpu_type = IMX_CPU_IMX50 },
 	{ .name = "imx51", .header_version = 1, .cpu_type = IMX_CPU_IMX51 },
 	{ .name = "imx53", .header_version = 2, .cpu_type = IMX_CPU_IMX53 },
 	{ .name = "imx6", .header_version = 2, .cpu_type = IMX_CPU_IMX6 },
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
