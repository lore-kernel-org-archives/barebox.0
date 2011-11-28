Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAc-0003rL-JN
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:16 +0100
Message-Id: <1322467340-10596-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/14] bootm: do not require -L after -r
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |   13 +++++--------
 include/boot.h   |    1 +
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index c62df4f..86470c2 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -148,11 +148,11 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 	struct image_handle *os_handle = NULL;
 	struct image_handler *handler;
 	struct image_data data;
-	u32 initrd_start;
 	int ret = 1;
 
 	memset(&data, 0, sizeof(struct image_data));
 	data.verify = 1;
+	data.initrd_address = ~0;
 
 	while ((opt = getopt(argc, argv, "nr:L:")) > 0) {
 		switch(opt) {
@@ -160,13 +160,7 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 			data.verify = 0;
 			break;
 		case 'L':
-			if (!data.initrd) {
-				eprintf("Warning -L ingnored. Specify the initrd first\n");
-				break;
-			}
-			initrd_start = simple_strtoul(optarg, NULL, 0);
-			printf("initrd_start=0x%x\n", initrd_start);
-			data.initrd->header.ih_load = cpu_to_uimage(initrd_start);
+			data.initrd_address = simple_strtoul(optarg, NULL, 0);
 			break;
 		case 'r':
 			printf("use initrd %s\n", optarg);
@@ -186,6 +180,9 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 		}
 	}
 
+	if (data.initrd && data.initrd_address != ~0)
+		data.initrd->header.ih_load = cpu_to_uimage(data.initrd_address);
+
 	if (optind == argc) {
 		ret = COMMAND_ERROR_USAGE;
 		goto err_out;
diff --git a/include/boot.h b/include/boot.h
index 4901598..b22514b 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -9,6 +9,7 @@ struct image_data {
 	struct image_handle *initrd;
 	const char *oftree;
 	int verify;
+	unsigned long initrd_address;
 };
 
 struct image_handler {
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
