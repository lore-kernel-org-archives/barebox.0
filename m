Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwmY7-0008Uj-BO
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 10:57:42 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 12:57:11 +0200
Message-Id: <20180903105715.24263-2-m.niestroj@grinn-global.com>
In-Reply-To: <20180903105715.24263-1-m.niestroj@grinn-global.com>
References: <20180903105715.24263-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH 1/5] scripts: imx: add optional argument to hab_blocks command
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

hab_blocks command is used to specify image authentication blocks for
HAB. Currently it was configured to authenticate full barebox
image. However in case of booting from SD card and adding MBR
partition table, HAB authentication fails, as final boot image is
modified.

Add an optional argument to hab_blocks command, to select between
3 types of authentication areas:
 - full: whole barebox image will be authenticated (this is default to
   keep compatibility),
 - from-dcdofs: image area up to dcdofs is not authenticated, so any
   changes up to dcdofs are possible,
 - skip-mbr: image area from 440 to 512 bytes is excluded from beeing
   authenticated, which allows to add / modify MBR partition table
   after building barebox image.

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
Changes rfc -> v1: none

 scripts/imx/imx.c | 31 ++++++++++++++++++++++++++++---
 1 file changed, 28 insertions(+), 3 deletions(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index d3786b6e1..21206387e 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -317,15 +317,40 @@ static int do_hab(struct config_data *data, int argc, char *argv[])
 
 static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 {
+	const char *type;
 	char *str;
 	int ret;
 
 	if (!data->csf)
 		return -EINVAL;
 
-	ret = asprintf(&str, "Blocks = 0x%08x 0 %d \"%s\"\n",
-		       data->image_load_addr,
-		       data->load_size, data->outfile);
+	if (argc < 2)
+		type = "full";
+	else
+		type = argv[1];
+
+	if (!strcmp(type, "full")) {
+		ret = asprintf(&str, "Blocks = 0x%08x 0 %d \"%s\"\n",
+			       data->image_load_addr, data->load_size,
+			       data->outfile);
+	} else if (!strcmp(type, "from-dcdofs")) {
+		ret = asprintf(&str, "Blocks = 0x%08x 0x%x %d \"%s\"\n",
+			       data->image_load_addr + data->image_dcd_offset,
+			       data->image_dcd_offset,
+			       data->load_size - data->image_dcd_offset,
+			       data->outfile);
+	} else if (!strcmp(type, "skip-mbr")) {
+		ret = asprintf(&str,
+			       "Blocks = 0x%08x 0 440 \"%s\", \\\n"
+			       "         0x%08x 512 %d \"%s\"\n",
+			       data->image_load_addr, data->outfile,
+			       data->image_load_addr + 512,
+			       data->load_size - 512, data->outfile);
+	} else {
+		fprintf(stderr, "Invalid hab_blocks option: %s\n", type);
+		return -EINVAL;
+	}
+
 	if (ret < 0)
 		return -ENOMEM;
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
