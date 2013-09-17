Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLqAf-0006Jf-QZ
 for barebox@lists.infradead.org; Tue, 17 Sep 2013 07:58:06 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 6A39D10281A3
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 09:57:44 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Sep 2013 09:58:53 +0200
Message-Id: <1379404733-7071-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] command: crc: add -V option to check the crc store in a
 file
To: barebox@lists.infradead.org

the format is %08x

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/crc.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/commands/crc.c b/commands/crc.c
index a0071b0..b7416e1 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -82,6 +82,19 @@ out:
 	return ret;
 }
 
+static int crc_from_file(const char* file, ulong *crc)
+{
+	char * buf;
+
+	buf= read_file(file, NULL);
+
+	if (!buf)
+		return -ENOMEM;
+
+	*crc = simple_strtoul(buf, NULL, 16);
+	return 0;
+}
+
 static int do_crc(int argc, char *argv[])
 {
 	loff_t start = 0, size = ~0;
@@ -92,7 +105,7 @@ static int do_crc(int argc, char *argv[])
 #endif
 	int opt, err = 0, filegiven = 0, verify = 0;
 
-	while((opt = getopt(argc, argv, "f:F:v:")) > 0) {
+	while((opt = getopt(argc, argv, "f:F:v:V:")) > 0) {
 		switch(opt) {
 		case 'f':
 			filename = optarg;
@@ -108,6 +121,10 @@ static int do_crc(int argc, char *argv[])
 			verify = 1;
 			vcrc = simple_strtoul(optarg, NULL, 0);
 			break;
+		case 'V':
+			if (!crc_from_file(optarg, &vcrc))
+				verify = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -153,6 +170,7 @@ BAREBOX_CMD_HELP_OPT  ("-f <file>", "Use file instead of memory.\n")
 BAREBOX_CMD_HELP_OPT  ("-F <file>", "Use file to compare.\n")
 #endif
 BAREBOX_CMD_HELP_OPT  ("-v <crc>",  "Verify\n")
+BAREBOX_CMD_HELP_OPT  ("-V <file>", "Verify\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(crc32)
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
