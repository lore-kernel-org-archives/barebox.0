Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmCX6-00087o-TM
 for barebox@lists.infradead.org; Mon, 07 Dec 2020 09:10:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Dec 2020 10:10:10 +0100
Message-Id: <20201207091010.2759-2-s.hauer@pengutronix.de>
In-Reply-To: <20201207091010.2759-1-s.hauer@pengutronix.de>
References: <20201207091010.2759-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] imd command: Document verbose option
To: Barebox List <barebox@lists.infradead.org>

imd understands -v for verbose mode, document it in the options list.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/imd.c       | 1 +
 scripts/bareboximd.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/commands/imd.c b/commands/imd.c
index 912f065c9e..9f7ac79f8f 100644
--- a/commands/imd.c
+++ b/commands/imd.c
@@ -31,6 +31,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-t <type>", "only show information of <type>")
 BAREBOX_CMD_HELP_OPT ("-n <no>", "for tags with multiple strings only show string <no>")
 BAREBOX_CMD_HELP_OPT ("-s VARNAME",  "set variable VARNAME instead of showing information")
+BAREBOX_CMD_HELP_OPT ("-v", "Be verbose")
 BAREBOX_CMD_HELP_OPT ("-V",  "Verify checksum of FILE")
 BAREBOX_CMD_HELP_OPT ("-c", "Create checksum for FILE and write it to the crc32 tag.")
 BAREBOX_CMD_HELP_TEXT("")
diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index 48c3e8ab3f..0500e01cc2 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -161,6 +161,7 @@ static void usage(const char *prgname)
 "Options:\n"
 "-t <type>    only show information of <type>\n"
 "-n <no>      for tags with multiple strings only show string <no>\n"
+"-v           Be verbose\n"
 "-V           Verify checksum of FILE\n"
 "-c           Create checksum for FILE and write it to the crc32 tag\n"
 "\n"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
