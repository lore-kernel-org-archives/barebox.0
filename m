Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTLkC-0000Gi-Rt
 for barebox@lists.infradead.org; Thu, 14 Jun 2018 06:28:41 +0000
Received: by mail-pf0-x241.google.com with SMTP id b17-v6so2705121pfi.0
 for <barebox@lists.infradead.org>; Wed, 13 Jun 2018 23:28:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 Jun 2018 23:27:49 -0700
Message-Id: <20180614062751.29856-9-andrew.smirnov@gmail.com>
In-Reply-To: <20180614062751.29856-1-andrew.smirnov@gmail.com>
References: <20180614062751.29856-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v6 08/10] scripts: imx-image: Add i.MX8MQ support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 scripts/imx/imx-image.c | 54 +++++++++++++++++++++++++++++++++++++----
 scripts/imx/imx.c       | 23 ++++++++++++------
 scripts/imx/imx.h       |  2 ++
 3 files changed, 66 insertions(+), 13 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 4a08581fb..6ebae2256 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -57,8 +57,7 @@ static char *prgname;
  */
 
 
-static uint32_t bb_header[] = {
-	0xea0003fe,	/* b 0x1000 */
+static uint32_t bb_header_aarch32[] = {
 	0xeafffffe,	/* 1: b 1b  */
 	0xeafffffe,	/* 1: b 1b  */
 	0xeafffffe,	/* 1: b 1b  */
@@ -66,6 +65,30 @@ static uint32_t bb_header[] = {
 	0xeafffffe,	/* 1: b 1b  */
 	0xeafffffe,	/* 1: b 1b  */
 	0xeafffffe,	/* 1: b 1b  */
+	0xeafffffe,	/* 1: b 1b  */
+	0x65726162,	/* 'bare'   */
+	0x00786f62,	/* 'box\0'  */
+	0x00000000,
+	0x00000000,
+	0x55555555,
+	0x55555555,
+	0x55555555,
+	0x55555555,
+	0x55555555,
+	0x55555555,
+	0x55555555,
+	0x55555555,
+};
+
+static uint32_t bb_header_aarch64[] = {
+	0x14000000,	/* 1: b 1b  */
+	0x14000000,	/* 1: b 1b  */
+	0x14000000,	/* 1: b 1b  */
+	0x14000000,	/* 1: b 1b  */
+	0x14000000,	/* 1: b 1b  */
+	0x14000000,	/* 1: b 1b  */
+	0x14000000,	/* 1: b 1b  */
+	0x14000000,	/* 1: b 1b  */
 	0x65726162,	/* 'bare'   */
 	0x00786f62,	/* 'box\0'  */
 	0x00000000,
@@ -652,6 +675,11 @@ static void *read_file(const char *filename, size_t *size)
 	return buf;
 }
 
+static bool cpu_is_aarch64(const struct config_data *data)
+{
+	return data->cpu_type == IMX_CPU_IMX8MQ;
+}
+
 int main(int argc, char *argv[])
 {
 	int opt, ret;
@@ -674,6 +702,8 @@ int main(int argc, char *argv[])
 		.check = check,
 		.nop = nop,
 	};
+	uint32_t *bb_header;
+	size_t sizeof_bb_header;
 
 	prgname = argv[0];
 
@@ -803,6 +833,15 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
+	if (cpu_is_aarch64(&data)) {
+		bb_header = bb_header_aarch64;
+		sizeof_bb_header = sizeof(bb_header_aarch64);
+	} else {
+		bb_header = bb_header_aarch32;
+		sizeof_bb_header = sizeof(bb_header_aarch32);
+	}
+
+	bb_header[0] = data.first_opcode;
 	bb_header[ARM_HEAD_SIZE_INDEX] = barebox_image_size;
 
 	infile = read_file(imagename, &insize);
@@ -819,14 +858,19 @@ int main(int argc, char *argv[])
 
 	for (i = 0; i < header_copies; i++) {
 		ret = xwrite(outfd, add_barebox_header ? bb_header : buf,
-			     sizeof(bb_header));
+			     sizeof_bb_header);
 		if (ret < 0) {
 			perror("write");
 			exit(1);
 		}
 
-		ret = xwrite(outfd, buf + sizeof(bb_header),
-			     HEADER_LEN - sizeof(bb_header));
+		if (lseek(outfd, data.header_gap, SEEK_CUR) < 0) {
+			perror("lseek");
+			exit(1);
+		}
+
+		ret = xwrite(outfd, buf + sizeof_bb_header,
+			     HEADER_LEN - sizeof_bb_header);
 		if (ret < 0) {
 			perror("write");
 			exit(1);
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index fb6ac001e..d3786b6e1 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -222,17 +222,22 @@ struct soc_type {
 	char *name;
 	int header_version;
 	int cpu_type;
+	off_t header_gap;
+	uint32_t first_opcode;
 };
 
+#define SZ_32K	(32 * 1024)
+
 static struct soc_type socs[] = {
-	{ .name = "imx25", .header_version = 1, .cpu_type = IMX_CPU_IMX25 },
-	{ .name = "imx35", .header_version = 1, .cpu_type = IMX_CPU_IMX35 },
-	{ .name = "imx50", .header_version = 2, .cpu_type = IMX_CPU_IMX50 },
-	{ .name = "imx51", .header_version = 1, .cpu_type = IMX_CPU_IMX51 },
-	{ .name = "imx53", .header_version = 2, .cpu_type = IMX_CPU_IMX53 },
-	{ .name = "imx6", .header_version = 2, .cpu_type = IMX_CPU_IMX6 },
-	{ .name = "imx7", .header_version = 2, .cpu_type = IMX_CPU_IMX7 },
-	{ .name = "vf610", .header_version = 2, .cpu_type = IMX_CPU_VF610 },
+	{ .name = "imx25",  .header_version = 1, .cpu_type = IMX_CPU_IMX25,  .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
+	{ .name = "imx35",  .header_version = 1, .cpu_type = IMX_CPU_IMX35,  .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
+	{ .name = "imx50",  .header_version = 2, .cpu_type = IMX_CPU_IMX50,  .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
+	{ .name = "imx51",  .header_version = 1, .cpu_type = IMX_CPU_IMX51,  .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
+	{ .name = "imx53",  .header_version = 2, .cpu_type = IMX_CPU_IMX53,  .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
+	{ .name = "imx6",   .header_version = 2, .cpu_type = IMX_CPU_IMX6,   .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
+	{ .name = "imx7",   .header_version = 2, .cpu_type = IMX_CPU_IMX7,   .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
+	{ .name = "imx8mq", .header_version = 2, .cpu_type = IMX_CPU_IMX8MQ, .header_gap = SZ_32K, .first_opcode = 0x14009000 /* b 0x9000 */},
+	{ .name = "vf610",  .header_version = 2, .cpu_type = IMX_CPU_VF610,  .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
 };
 
 static int do_soc(struct config_data *data, int argc, char *argv[])
@@ -249,6 +254,8 @@ static int do_soc(struct config_data *data, int argc, char *argv[])
 		if (!strcmp(socs[i].name, soc)) {
 			data->header_version = socs[i].header_version;
 			data->cpu_type = socs[i].cpu_type;
+			data->header_gap = socs[i].header_gap;
+			data->first_opcode = socs[i].first_opcode;
 
 			if (data->cpu_type == IMX_CPU_IMX35)
 				data->load_size += HEADER_LEN;
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index c7677f81a..92a3fd316 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -72,6 +72,8 @@ struct config_data {
 	char *outfile;
 	char *srkfile;
 	int header_version;
+	off_t header_gap;
+	uint32_t first_opcode;
 	int cpu_type;
 	int (*check)(const struct config_data *data, uint32_t cmd,
 		     uint32_t addr, uint32_t mask);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
