Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMdd1-0004mn-Ds
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 12:46:40 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 838A0DC8C94
 for <barebox@lists.infradead.org>; Thu, 19 Sep 2013 14:46:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Sep 2013 14:47:24 +0200
Message-Id: <1379594844-3701-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1 V2] command: crc: add -V option to check the crc store in
 a file
To: barebox@lists.infradead.org

the format is %08x

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v2:

	improve help description

Best Regards,
J.
 commands/crc.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/commands/crc.c b/commands/crc.c
index a0071b0..ee8dacf 100644
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
+BAREBOX_CMD_HELP_OPT  ("-V <file>", "Verify with crc read from <file>\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(crc32)
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
