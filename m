Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmCqJ-00044y-8V
 for barebox@lists.infradead.org; Mon, 07 Dec 2020 09:30:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Dec 2020 10:29:50 +0100
Message-Id: <20201207092952.21438-1-s.hauer@pengutronix.de>
In-Reply-To: <20201207092840.GH3977@pengutronix.de>
References: <20201207092840.GH3977@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] imd command: specify outfile for crc tag generation
To: Barebox List <barebox@lists.infradead.org>
Cc: Yunus Bas <y.bas@phytec.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/imd.c       |  2 +-
 common/imd.c         | 11 +++++------
 scripts/bareboximd.c |  2 +-
 3 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/commands/imd.c b/commands/imd.c
index 9f7ac79f8f..5cb80db0f5 100644
--- a/commands/imd.c
+++ b/commands/imd.c
@@ -33,7 +33,7 @@ BAREBOX_CMD_HELP_OPT ("-n <no>", "for tags with multiple strings only show strin
 BAREBOX_CMD_HELP_OPT ("-s VARNAME",  "set variable VARNAME instead of showing information")
 BAREBOX_CMD_HELP_OPT ("-v", "Be verbose")
 BAREBOX_CMD_HELP_OPT ("-V",  "Verify checksum of FILE")
-BAREBOX_CMD_HELP_OPT ("-c", "Create checksum for FILE and write it to the crc32 tag.")
+BAREBOX_CMD_HELP_OPT ("-c OUTFILE", "Create checksum for FILE and write it to the crc32 tag.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Without options all information available is printed. Valid types are:")
 BAREBOX_CMD_HELP_TEXT("release, build, model, of_compatible")
diff --git a/common/imd.c b/common/imd.c
index 4aca8ea78f..044f04bcdd 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -435,15 +435,14 @@ int imd_command(int argc, char *argv[])
 	size_t size;
 	uint32_t type = IMD_TYPE_INVALID;
 	const struct imd_header *imd_start, *imd;
-	const char *filename;
+	const char *filename, *checksumfile = NULL;
 	const char *variable_name = NULL;
 	char *str;
-	uint32_t checksum = 0;
 	uint32_t verify = 0;
 
 	imd_command_verbose = 0;
 
-	while ((opt = getopt(argc, argv, "vt:s:n:cV")) > 0) {
+	while ((opt = getopt(argc, argv, "vt:s:n:c:V")) > 0) {
 		switch(opt) {
 		case 't':
 			type = imd_name_to_type(optarg);
@@ -462,7 +461,7 @@ int imd_command(int argc, char *argv[])
 			strno = simple_strtoul(optarg, NULL, 0);
 			break;
 		case 'c':
-			checksum = 1;
+			checksumfile = optarg;
 			break;
 		case 'V':
 			verify = 1;
@@ -489,8 +488,8 @@ int imd_command(int argc, char *argv[])
 		goto out;
 	}
 
-	if (checksum) {
-		ret = imd_write_crc32(buf, imd_start, filename, size);
+	if (checksumfile) {
+		ret = imd_write_crc32(buf, imd_start, checksumfile, size);
 		goto out;
 	}
 
diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index 0500e01cc2..1ae01e43d3 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -163,7 +163,7 @@ static void usage(const char *prgname)
 "-n <no>      for tags with multiple strings only show string <no>\n"
 "-v           Be verbose\n"
 "-V           Verify checksum of FILE\n"
-"-c           Create checksum for FILE and write it to the crc32 tag\n"
+"-c OUTFILE   Create checksum for FILE and write it to the crc32 tag\n"
 "\n"
 "Without options all information available is printed. Valid types are:\n"
 "release, build, model, of_compatible\n",
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
