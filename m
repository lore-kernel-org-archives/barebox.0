Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGrGM-00060G-TG
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 15:44:11 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 29 Jan 2015 16:43:48 +0100
Message-Id: <1422546228-22674-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] commands: crc: support setting environment variables
To: barebox@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 commands/crc.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/commands/crc.c b/commands/crc.c
index 9b6a3e2..58b750e 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -46,9 +46,10 @@ static int do_crc(int argc, char *argv[])
 #ifdef CONFIG_CMD_CRC_CMP
 	char *vfilename = NULL;
 #endif
+	char *crcvarname = NULL, *sizevarname = NULL;
 	int opt, err = 0, filegiven = 0, verify = 0;
 
-	while((opt = getopt(argc, argv, "f:F:v:V:")) > 0) {
+	while((opt = getopt(argc, argv, "f:F:v:V:r:s:")) > 0) {
 		switch(opt) {
 		case 'f':
 			filename = optarg;
@@ -60,6 +61,12 @@ static int do_crc(int argc, char *argv[])
 			vfilename = optarg;
 			break;
 #endif
+		case 'r':
+			crcvarname = optarg;
+			break;
+		case 's':
+			sizevarname = optarg;
+			break;
 		case 'v':
 			verify = 1;
 			vcrc = simple_strtoul(optarg, NULL, 0);
@@ -89,6 +96,18 @@ static int do_crc(int argc, char *argv[])
 	printf("CRC32 for %s 0x%08lx ... 0x%08lx ==> 0x%08lx",
 			filename, (ulong)start, (ulong)start + total - 1, crc);
 
+	if (crcvarname) {
+		char *crcstr = asprintf("0x%lx", crc);
+		setenv(crcvarname, crcstr);
+		kfree(crcstr);
+	}
+
+	if (sizevarname) {
+		char *sizestr = asprintf("0x%lx", total);
+		setenv(sizevarname, sizestr);
+		kfree(sizestr);
+	}
+
 #ifdef CONFIG_CMD_CRC_CMP
 	if (vfilename) {
 		size = total;
@@ -118,6 +137,8 @@ BAREBOX_CMD_HELP_OPT ("-F FILE", "Use file to compare.")
 #endif
 BAREBOX_CMD_HELP_OPT ("-v CRC",  "Verify")
 BAREBOX_CMD_HELP_OPT ("-V FILE", "Verify with CRC read from FILE")
+BAREBOX_CMD_HELP_OPT  ("-r <var>",  "Set <var> to the checksum result\n")
+BAREBOX_CMD_HELP_OPT  ("-s <var>",  "Set <var> to the data size\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(crc32)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
