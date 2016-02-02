Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG1-0002Ps-Ha
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:58 +0100
Message-Id: <1454424497-7157-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/34] scripts: imx-image: Add context struct to config parsers
To: Barebox List <barebox@lists.infradead.org>

This adds a context struct to the config parser. This is a first
step to make the config parser usable from both imx-image and
imx-usb-loader which will be needed later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 66 +++++++++++++++++++++++++++----------------------
 1 file changed, 36 insertions(+), 30 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 162e710..957b651 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -36,12 +36,15 @@
 #define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
 #define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
 
-static uint32_t image_load_addr;
-static uint32_t image_dcd_offset = 0xffffffff;
+struct config_data {
+	uint32_t image_load_addr;
+	uint32_t image_dcd_offset;
+	int header_version;
+	int cpu_type;
+};
+
 static uint32_t dcdtable[MAX_DCD];
 static int curdcd;
-static int header_version;
-static int cpu_type;
 static int add_barebox_header;
 static int prepare_sign;
 
@@ -229,7 +232,7 @@ static int parse_line(char *line, char *argv[])
 
 struct command {
 	const char *name;
-	int (*parse)(int argc, char *argv[]);
+	int (*parse)(struct config_data *data, int argc, char *argv[]);
 };
 
 static uint32_t last_write_cmd;
@@ -296,7 +299,7 @@ static void do_cmd_check_usage(void)
 			"while_any_bit_set:    while ((*addr & mask) != 0)\n");
 }
 
-static int do_cmd_check(int argc, char *argv[])
+static int do_cmd_check(struct config_data *data, int argc, char *argv[])
 {
 	uint32_t addr, mask, cmd;
 	int i, width;
@@ -348,7 +351,7 @@ static int do_cmd_check(int argc, char *argv[])
 	return 0;
 }
 
-static int do_cmd_write_mem(int argc, char *argv[])
+static int do_cmd_write_mem(struct config_data *data, int argc, char *argv[])
 {
 	uint32_t addr, val, width;
 	char *end;
@@ -388,7 +391,7 @@ static int do_cmd_write_mem(int argc, char *argv[])
 		return -EINVAL;
 	};
 
-	switch (header_version) {
+	switch (data->header_version) {
 	case 1:
 		return write_mem_v1(addr, val, width);
 	case 2:
@@ -398,22 +401,22 @@ static int do_cmd_write_mem(int argc, char *argv[])
 	}
 }
 
-static int do_loadaddr(int argc, char *argv[])
+static int do_loadaddr(struct config_data *data, int argc, char *argv[])
 {
 	if (argc < 2)
 		return -EINVAL;
 
-	image_load_addr = strtoul(argv[1], NULL, 0);
+	data->image_load_addr = strtoul(argv[1], NULL, 0);
 
 	return 0;
 }
 
-static int do_dcd_offset(int argc, char *argv[])
+static int do_dcd_offset(struct config_data *data, int argc, char *argv[])
 {
 	if (argc < 2)
 		return -EINVAL;
 
-	image_dcd_offset = strtoul(argv[1], NULL, 0);
+	data->image_dcd_offset = strtoul(argv[1], NULL, 0);
 
 	return 0;
 }
@@ -432,7 +435,7 @@ static struct soc_type socs[] = {
 	{ .name = "imx6", .header_version = 2, .cpu_type = 6 },
 };
 
-static int do_soc(int argc, char *argv[])
+static int do_soc(struct config_data *data, int argc, char *argv[])
 {
 	char *soc;
 	int i;
@@ -444,8 +447,8 @@ static int do_soc(int argc, char *argv[])
 
 	for (i = 0; i < ARRAY_SIZE(socs); i++) {
 		if (!strcmp(socs[i].name, soc)) {
-			header_version = socs[i].header_version;
-			cpu_type = socs[i].cpu_type;
+			data->header_version = socs[i].header_version;
+			data->cpu_type = socs[i].cpu_type;
 			return 0;
 		}
 	}
@@ -477,7 +480,7 @@ struct command cmds[] = {
 	},
 };
 
-static char *readcmd(FILE *f)
+static char *readcmd(struct config_data *data, FILE *f)
 {
 	static char *buf;
 	char *str;
@@ -506,7 +509,7 @@ static char *readcmd(FILE *f)
 	}
 }
 
-static int parse_config(const char *filename)
+static int parse_config(struct config_data *data, const char *filename)
 {
 	FILE *f;
 	int lineno = 0;
@@ -521,7 +524,7 @@ static int parse_config(const char *filename)
 	}
 
 	while (1) {
-		line = readcmd(f);
+		line = readcmd(data, f);
 		if (!line)
 			break;
 
@@ -539,7 +542,7 @@ static int parse_config(const char *filename)
 
 		for (i = 0; i < ARRAY_SIZE(cmds); i++) {
 			if (!strcmp(cmds[i].name, argv[0])) {
-				ret = cmds[i].parse(nargs, argv);
+				ret = cmds[i].parse(data, nargs, argv);
 				if (ret) {
 					fprintf(stderr, "error in line %d: %s\n",
 							lineno, strerror(-ret));
@@ -625,6 +628,9 @@ int main(int argc, char *argv[])
 	int infd, outfd;
 	int dcd_only = 0;
 	int now = 0;
+	struct config_data data = {
+		.image_dcd_offset = 0xffffffff,
+	};
 
 	while ((opt = getopt(argc, argv, "c:hf:o:bdp")) != -1) {
 		switch (opt) {
@@ -678,7 +684,7 @@ int main(int argc, char *argv[])
 		image_size = s.st_size;
 	}
 
-	ret = parse_config(configfile);
+	ret = parse_config(&data, configfile);
 	if (ret)
 		exit(1);
 
@@ -686,18 +692,18 @@ int main(int argc, char *argv[])
 	if (!buf)
 		exit(1);
 
-	if (image_dcd_offset == 0xffffffff) {
+	if (data.image_dcd_offset == 0xffffffff) {
 		fprintf(stderr, "no dcd offset given ('dcdofs'). Defaulting to 0x%08x\n",
 			FLASH_HEADER_OFFSET);
-		image_dcd_offset = FLASH_HEADER_OFFSET;
+		data.image_dcd_offset = FLASH_HEADER_OFFSET;
 	}
 
-	if (!header_version) {
+	if (!data.header_version) {
 		fprintf(stderr, "no SoC given. (missing 'soc' in config)\n");
 		exit(1);
 	}
 
-	if (header_version == 2)
+	if (data.header_version == 2)
 		check_last_dcd(0);
 
 	if (dcd_only) {
@@ -717,19 +723,19 @@ int main(int argc, char *argv[])
 	 */
 	load_size = roundup(image_size + HEADER_LEN, 0x1000);
 
-	if (cpu_type == 35)
+	if (data.cpu_type == 35)
 		load_size += HEADER_LEN;
 
-	switch (header_version) {
+	switch (data.header_version) {
 	case 1:
-		add_header_v1(buf, image_dcd_offset, image_load_addr, load_size);
+		add_header_v1(buf, data.image_dcd_offset, data.image_load_addr, load_size);
 		break;
 	case 2:
-		add_header_v2(buf, image_dcd_offset, image_load_addr, load_size);
+		add_header_v2(buf, data.image_dcd_offset, data.image_load_addr, load_size);
 		break;
 	default:
 		fprintf(stderr, "Congratulations! You're welcome to implement header version %d\n",
-				header_version);
+				data.header_version);
 		exit(1);
 	}
 
@@ -763,7 +769,7 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	if (cpu_type == 35) {
+	if (data.cpu_type == 35) {
 		ret = xwrite(outfd, buf, HEADER_LEN);
 		if (ret < 0) {
 			perror("write");
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
