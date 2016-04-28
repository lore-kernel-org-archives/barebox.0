Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avmkQ-0004EZ-CF
 for barebox@lists.infradead.org; Thu, 28 Apr 2016 14:16:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Apr 2016 16:16:26 +0200
Message-Id: <1461852989-26399-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] scripts: imx: support set_bits/clear_bits
To: Barebox List <barebox@lists.infradead.org>

The i.MX SoCs support setting bits and clearing bits in their DCD table.
This adds commands for these in the imx-image tool.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/README           |  2 ++
 scripts/imx/imx-image.c      | 24 +++++++++++++++++++-----
 scripts/imx/imx-usb-loader.c |  3 ++-
 scripts/imx/imx.c            | 26 ++++++++++++++++++++++++--
 scripts/imx/imx.h            |  5 ++++-
 5 files changed, 51 insertions(+), 9 deletions(-)

diff --git a/scripts/imx/README b/scripts/imx/README
index 0d6d0d0..474b387 100644
--- a/scripts/imx/README
+++ b/scripts/imx/README
@@ -30,6 +30,8 @@ check <width> <cond> <addr> <mask>    Poll until condition becomes true.
                                       while_all_bits_set,
                                       while_any_bit_clear,
                                       while_any_bit_set
+set_bits <width> <addr> <bits>        set <bits> in register <addr>
+clear_bits <width> <addr> <bits>      clear <bits> in register <addr>
 
 the i.MX SoCs support a wide range of fancy things doing with the flash header.
 We limit ourselves to a very simple case, that is the flash header has a fixed
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 16f086a..0d315a2 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -252,8 +252,13 @@ static int add_header_v1(struct config_data *data, void *buf)
 	return 0;
 }
 
-static int write_mem_v1(uint32_t addr, uint32_t val, int width)
+static int write_mem_v1(uint32_t addr, uint32_t val, int width, int set_bits, int clear_bits)
 {
+	if (set_bits || clear_bits) {
+		fprintf(stderr, "This SoC does not support setting/clearing bits\n");
+		return -EINVAL;
+	}
+
 	if (curdcd > MAX_DCD - 3) {
 		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
 		return -ENOMEM;
@@ -362,12 +367,20 @@ static void check_last_dcd(uint32_t cmd)
 	}
 }
 
-static int write_mem_v2(uint32_t addr, uint32_t val, int width)
+static int write_mem_v2(uint32_t addr, uint32_t val, int width, int set_bits, int clear_bits)
 {
 	uint32_t cmd;
 
 	cmd = (TAG_WRITE << 24) | width;
 
+	if (set_bits && clear_bits)
+		return -EINVAL;
+
+	if (set_bits)
+		cmd |= 3 << 3;
+	if (clear_bits)
+		cmd |= 2 << 3;
+
 	if (curdcd > MAX_DCD - 3) {
 		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
 		return -ENOMEM;
@@ -449,13 +462,14 @@ static int check(struct config_data *data, uint32_t cmd, uint32_t addr, uint32_t
 	return 0;
 }
 
-static int write_mem(struct config_data *data, uint32_t addr, uint32_t val, int width)
+static int write_mem(struct config_data *data, uint32_t addr, uint32_t val, int width,
+		     int set_bits, int clear_bits)
 {
 	switch (data->header_version) {
 	case 1:
-		return write_mem_v1(addr, val, width);
+		return write_mem_v1(addr, val, width, set_bits, clear_bits);
 	case 2:
-		return write_mem_v2(addr, val, width);
+		return write_mem_v2(addr, val, width, set_bits, clear_bits);
 	default:
 		return -EINVAL;
 	}
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index ed27831..f35a4c3 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1203,7 +1203,8 @@ cleanup:
 	return ret;
 }
 
-static int write_mem(struct config_data *data, uint32_t addr, uint32_t val, int width)
+static int write_mem(struct config_data *data, uint32_t addr, uint32_t val, int width,
+		     int set_bits, int clear_bits)
 {
 	printf("wr 0x%08x 0x%08x\n", addr, val);
 
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 82ef97f..523368a 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -130,7 +130,8 @@ static int do_cmd_check(struct config_data *data, int argc, char *argv[])
 	return data->check(data, cmd, addr, mask);
 }
 
-static int do_cmd_write_mem(struct config_data *data, int argc, char *argv[])
+static int write_mem(struct config_data *data, int argc, char *argv[],
+		     int set_bits, int clear_bits)
 {
 	uint32_t addr, val, width;
 	char *end;
@@ -170,7 +171,22 @@ static int do_cmd_write_mem(struct config_data *data, int argc, char *argv[])
 		return -EINVAL;
 	};
 
-	return data->write_mem(data, addr, val, width);
+	return data->write_mem(data, addr, val, width, set_bits, clear_bits);
+}
+
+static int do_cmd_write_mem(struct config_data *data, int argc, char *argv[])
+{
+	return write_mem(data, argc, argv, 0, 0);
+}
+
+static int do_cmd_set_bits(struct config_data *data, int argc, char *argv[])
+{
+	return write_mem(data, argc, argv, 1, 0);
+}
+
+static int do_cmd_clear_bits(struct config_data *data, int argc, char *argv[])
+{
+	return write_mem(data, argc, argv, 0, 1);
 }
 
 static int do_loadaddr(struct config_data *data, int argc, char *argv[])
@@ -337,6 +353,12 @@ struct command cmds[] = {
 		.name = "wm",
 		.parse = do_cmd_write_mem,
 	}, {
+		.name = "set_bits",
+		.parse = do_cmd_set_bits,
+	}, {
+		.name = "clear_bits",
+		.parse = do_cmd_clear_bits,
+	}, {
 		.name = "check",
 		.parse = do_cmd_check,
 	}, {
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index 85071b4..a136958 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -31,6 +31,8 @@ struct imx_boot_data {
 #define TAG_DCD_HEADER	0xd2
 #define DCD_VERSION	0x40
 #define TAG_WRITE	0xcc
+#define PARAMETER_FLAG_MASK	(1 << 3)
+#define PARAMETER_FLAG_SET	(1 << 4)
 #define TAG_CHECK	0xcf
 
 struct imx_ivt_header {
@@ -64,7 +66,8 @@ struct config_data {
 	int header_version;
 	int cpu_type;
 	int (*check)(struct config_data *data, uint32_t cmd, uint32_t addr, uint32_t mask);
-	int (*write_mem)(struct config_data *data, uint32_t addr, uint32_t val, int width);
+	int (*write_mem)(struct config_data *data, uint32_t addr, uint32_t val, int width,
+			 int set_bits, int clear_bits);
 	int csf_space;
 	char *csf;
 };
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
