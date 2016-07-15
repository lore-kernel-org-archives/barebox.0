Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bO6ru-0001lH-5z
 for barebox@lists.infradead.org; Fri, 15 Jul 2016 17:25:46 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Fri, 15 Jul 2016 19:23:16 +0200
Message-Id: <1468603396-29108-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] scripts: imx: const function arguments
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-image.c      | 9 +++++----
 scripts/imx/imx-usb-loader.c | 4 ++--
 scripts/imx/imx.h            | 7 ++++---
 3 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 3f62228..c0bf9c0 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -278,7 +278,7 @@ static int write_mem_v1(uint32_t addr, uint32_t val, int width, int set_bits, in
  * ============================================================================
  */
 
-static int add_header_v2(struct config_data *data, void *buf)
+static int add_header_v2(const struct config_data *data, void *buf)
 {
 	struct imx_flash_header_v2 *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
@@ -447,7 +447,8 @@ static int write_dcd(const char *outfile)
 	return 0;
 }
 
-static int check(struct config_data *data, uint32_t cmd, uint32_t addr, uint32_t mask)
+static int check(const struct config_data *data, uint32_t cmd, uint32_t addr,
+		 uint32_t mask)
 {
 	if (curdcd > MAX_DCD - 3) {
 		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
@@ -463,8 +464,8 @@ static int check(struct config_data *data, uint32_t cmd, uint32_t addr, uint32_t
 	return 0;
 }
 
-static int write_mem(struct config_data *data, uint32_t addr, uint32_t val, int width,
-		     int set_bits, int clear_bits)
+static int write_mem(const struct config_data *data, uint32_t addr,
+		     uint32_t val, int width, int set_bits, int clear_bits)
 {
 	switch (data->header_version) {
 	case 1:
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index cf9d610..97ed044 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1239,8 +1239,8 @@ cleanup:
 	return ret;
 }
 
-static int write_mem(struct config_data *data, uint32_t addr, uint32_t val, int width,
-		     int set_bits, int clear_bits)
+static int write_mem(const struct config_data *data, uint32_t addr,
+		     uint32_t val, int width, int set_bits, int clear_bits)
 {
 	return modify_memory(addr, val, width, set_bits, clear_bits);
 }
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index a136958..8db7e7b 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -65,9 +65,10 @@ struct config_data {
 	char *srkfile;
 	int header_version;
 	int cpu_type;
-	int (*check)(struct config_data *data, uint32_t cmd, uint32_t addr, uint32_t mask);
-	int (*write_mem)(struct config_data *data, uint32_t addr, uint32_t val, int width,
-			 int set_bits, int clear_bits);
+	int (*check)(const struct config_data *data, uint32_t cmd,
+		     uint32_t addr, uint32_t mask);
+	int (*write_mem)(const struct config_data *data, uint32_t addr,
+			 uint32_t val, int width, int set_bits, int clear_bits);
 	int csf_space;
 	char *csf;
 };
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
