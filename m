Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aQcG6-0004if-Ob
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:48:08 +0100
Message-Id: <1454424497-7157-26-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 25/34] scripts: imx: Create CSF files from imx config file
To: Barebox List <barebox@lists.infradead.org>

This is the first step to support creating signed images directly
with the imx-image tool. i.MX images must be signed using the Freescale
CST tool. CST needs informations already present in the imx-image tool,
so it's convenient to call CST directly from imx-image.
CST takes CSF files (Command Sequence Files) as input. This patch
supports generating CSF files from the imx-image configuration file.
This adds three new commands to the config file:

hab <str>:  All options to the hab command are directly passed through to
            the CSF.
hab_blocks: This generates the "Blocks =" line in the CSF. This is the
            place where the CSF needs information which is contained in
	    the imx-image tool: The image size, the image filename and
	    the load address.
super_root_key <file>: For HABv3 the super root key hash is needed in
                       the i.MX flash header. This command is used to
		       specify the path to the super root key. Needed
		       for HABv3 only.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx.c | 108 +++++++++++++++++++++++++++++++++++++++++++++++++++++-
 scripts/imx/imx.h |   2 +
 2 files changed, 109 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 0e260c4..6b397fc 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -16,6 +16,7 @@
  *
  */
 
+#define _GNU_SOURCE
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
@@ -25,7 +26,7 @@
 
 #include "imx.h"
 
-#define MAXARGS 5
+#define MAXARGS 32
 
 static int parse_line(char *line, char *argv[])
 {
@@ -232,6 +233,102 @@ static int do_soc(struct config_data *data, int argc, char *argv[])
 	return -EINVAL;
 }
 
+static int hab_add_str(struct config_data *data, const char *str)
+{
+	int len = strlen(str);
+
+	if (data->csf_space < len)
+		return -ENOMEM;
+
+	strcat(data->csf, str);
+
+	data->csf_space -= len;
+
+	return 0;
+}
+
+static int do_hab(struct config_data *data, int argc, char *argv[])
+{
+	int i, ret;
+
+	if (!data->csf) {
+		data->csf_space = 0x10000;
+
+		data->csf = malloc(data->csf_space + 1);
+		if (!data->csf)
+			return -ENOMEM;
+	}
+
+	for (i = 1; i < argc; i++) {
+		ret = hab_add_str(data, argv[i]);
+		if (ret)
+			return ret;
+
+		ret = hab_add_str(data, " ");
+		if (ret)
+			return ret;
+	}
+
+	ret = hab_add_str(data, "\n");
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
+{
+	char *str;
+	int ret;
+
+	if (!data->csf)
+		return -EINVAL;
+
+	ret = asprintf(&str, "Blocks = 0x%08x 0 %d \"%s\"\n",
+		       data->image_load_addr,
+		       data->load_size, data->outfile);
+	if (ret < 0)
+		return -ENOMEM;
+
+	ret = hab_add_str(data, str);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int do_super_root_key(struct config_data *data, int argc, char *argv[])
+{
+	int len;
+	char *srkfile;
+
+	if (argc != 2) {
+		fprintf(stderr, "usage: super_root_key <keyfile>\n");
+		return -EINVAL;
+	}
+
+	if (data->cpu_type != 35 && data->cpu_type != 25) {
+		fprintf(stderr, "Warning: The super_root_key command is meaningless "
+			"on non HABv3 based SoCs\n");
+		return 0;
+	}
+
+	srkfile = argv[1];
+
+	if (*srkfile == '"')
+		srkfile++;
+
+	data->srkfile = strdup(srkfile);
+	if (!data->srkfile)
+		return -ENOMEM;
+
+	len = strlen(data->srkfile);
+	if (data->srkfile[len - 1] == '"')
+		data->srkfile[len - 1] = 0;
+
+	return 0;
+}
+
 struct command cmds[] = {
 	{
 		.name = "wm",
@@ -248,6 +345,15 @@ struct command cmds[] = {
 	}, {
 		.name = "soc",
 		.parse = do_soc,
+	}, {
+		.name = "hab",
+		.parse = do_hab,
+	}, {
+		.name = "hab_blocks",
+		.parse = do_hab_blocks,
+	}, {
+		.name = "super_root_key",
+		.parse = do_super_root_key,
 	},
 };
 
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index bc7d4ee..0876370 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -62,6 +62,8 @@ struct config_data {
 	int cpu_type;
 	int (*check)(struct config_data *data, uint32_t cmd, uint32_t addr, uint32_t mask);
 	int (*write_mem)(struct config_data *data, uint32_t addr, uint32_t val, int width);
+	int csf_space;
+	char *csf;
 };
 
 int parse_config(struct config_data *data, const char *filename);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
