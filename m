Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aP6XT-0006kD-K6
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 10:44:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jan 2016 11:43:52 +0100
Message-Id: <1454064243-26558-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
References: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/23] scripts: imx-image: move check to context data
To: Barebox List <barebox@lists.infradead.org>

Move the config parsers check function to context data to make
it possible to pass in a different version of this function later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 29 ++++++++++++++++++++++-------
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 56c6464..04b650e 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -44,6 +44,7 @@ struct config_data {
 	uint32_t image_dcd_offset;
 	int header_version;
 	int cpu_type;
+	int (*check)(struct config_data *data, uint32_t cmd, uint32_t addr, uint32_t mask);
 	int (*write_mem)(struct config_data *data, uint32_t addr, uint32_t val, int width);
 };
 
@@ -314,6 +315,9 @@ static int do_cmd_check(struct config_data *data, int argc, char *argv[])
 		return -EINVAL;
 	}
 
+	if (!data->check)
+		return -ENOSYS;
+
 	width = strtoul(argv[1], NULL, 0) >> 3;
 	scmd = argv[2];
 	addr = strtoul(argv[3], NULL, 0);
@@ -346,13 +350,7 @@ static int do_cmd_check(struct config_data *data, int argc, char *argv[])
 
 	cmd = (TAG_CHECK << 24) | (i << 3) | width | ((sizeof(uint32_t) * 3) << 8);
 
-	check_last_dcd(cmd);
-
-	dcdtable[curdcd++] = htobe32(cmd);
-	dcdtable[curdcd++] = htobe32(addr);
-	dcdtable[curdcd++] = htobe32(mask);
-
-	return 0;
+	return data->check(data, cmd, addr, mask);
 }
 
 static int do_cmd_write_mem(struct config_data *data, int argc, char *argv[])
@@ -612,6 +610,22 @@ static int write_dcd(const char *outfile)
 	return 0;
 }
 
+static int check(struct config_data *data, uint32_t cmd, uint32_t addr, uint32_t mask)
+{
+	if (curdcd > MAX_DCD - 3) {
+		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
+		return -ENOMEM;
+	}
+
+	check_last_dcd(cmd);
+
+	dcdtable[curdcd++] = htobe32(cmd);
+	dcdtable[curdcd++] = htobe32(addr);
+	dcdtable[curdcd++] = htobe32(mask);
+
+	return 0;
+}
+
 static int write_mem(struct config_data *data, uint32_t addr, uint32_t val, int width)
 {
 	switch (data->header_version) {
@@ -640,6 +654,7 @@ int main(int argc, char *argv[])
 	struct config_data data = {
 		.image_dcd_offset = 0xffffffff,
 		.write_mem = write_mem,
+		.check = check,
 	};
 
 	while ((opt = getopt(argc, argv, "c:hf:o:bdp")) != -1) {
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
