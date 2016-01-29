Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aP6XY-0003e7-4W
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 10:44:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jan 2016 11:43:51 +0100
Message-Id: <1454064243-26558-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/23] scripts: imx-image: move write_mem to context data
To: Barebox List <barebox@lists.infradead.org>

Move the config parsers write_mem function to context data to make
it possible to pass in a different version of this function later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 707852b..56c6464 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -44,6 +44,7 @@ struct config_data {
 	uint32_t image_dcd_offset;
 	int header_version;
 	int cpu_type;
+	int (*write_mem)(struct config_data *data, uint32_t addr, uint32_t val, int width);
 };
 
 static uint32_t dcdtable[MAX_DCD];
@@ -394,14 +395,7 @@ static int do_cmd_write_mem(struct config_data *data, int argc, char *argv[])
 		return -EINVAL;
 	};
 
-	switch (data->header_version) {
-	case 1:
-		return write_mem_v1(addr, val, width);
-	case 2:
-		return write_mem_v2(addr, val, width);
-	default:
-		return -EINVAL;
-	}
+	return data->write_mem(data, addr, val, width);
 }
 
 static int do_loadaddr(struct config_data *data, int argc, char *argv[])
@@ -618,6 +612,18 @@ static int write_dcd(const char *outfile)
 	return 0;
 }
 
+static int write_mem(struct config_data *data, uint32_t addr, uint32_t val, int width)
+{
+	switch (data->header_version) {
+	case 1:
+		return write_mem_v1(addr, val, width);
+	case 2:
+		return write_mem_v2(addr, val, width);
+	default:
+		return -EINVAL;
+	}
+}
+
 int main(int argc, char *argv[])
 {
 	int opt, ret;
@@ -633,6 +639,7 @@ int main(int argc, char *argv[])
 	int now = 0;
 	struct config_data data = {
 		.image_dcd_offset = 0xffffffff,
+		.write_mem = write_mem,
 	};
 
 	while ((opt = getopt(argc, argv, "c:hf:o:bdp")) != -1) {
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
