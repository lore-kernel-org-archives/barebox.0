Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4OOK-0004HW-JB
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 05:56:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 07:56:13 +0200
Message-Id: <1404798973-25399-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Do not use macros in command help
To: barebox@lists.infradead.org

The help texts are parsed by sphinx which cannot handle macros, so
replace them with their values.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadb.c  | 2 +-
 commands/loadxy.c | 2 +-
 net/dhcp.c        | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/loadb.c b/commands/loadb.c
index 28eebf4..7424bcc 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -701,7 +701,7 @@ static int do_load_serial_bin(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(loadb)
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default " DEF_FILE ")")
+BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default image.bin")
 BAREBOX_CMD_HELP_OPT("-o OFFS", "destination file OFFSet (default 0)")
 BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate")
 BAREBOX_CMD_HELP_OPT("-c",      "create file if not present")
diff --git a/commands/loadxy.c b/commands/loadxy.c
index 3044f37..df14043 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -242,7 +242,7 @@ static int do_loadx(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(loadx)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default " DEF_FILE ")")
+BAREBOX_CMD_HELP_OPT("-f FILE", "download to FILE (default image.bin")
 BAREBOX_CMD_HELP_OPT("-o OFFS", "destination file OFFSet (default 0)")
 BAREBOX_CMD_HELP_OPT("-b BAUD", "baudrate for download (default: console baudrate")
 BAREBOX_CMD_HELP_OPT("-t NAME", "console name to use (default: current)")
diff --git a/net/dhcp.c b/net/dhcp.c
index 070e3bc..9551d60 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -796,7 +796,7 @@ BAREBOX_CMD_HELP_OPT ("-v ID\t", "DHCP Vendor ID (code 60) submitted in DHCP req
 BAREBOX_CMD_HELP_OPT ("-c ID\t", "DHCP Client ID (code 61) submitted in DHCP requests")
 BAREBOX_CMD_HELP_OPT ("-u UUID\t", "DHCP Client UUID (code 97) submitted in DHCP requests")
 BAREBOX_CMD_HELP_OPT ("-U CLASS", "DHCP User class (code 77) submitted in DHCP requests")
-BAREBOX_CMD_HELP_OPT ("-r RETRY", "retry limit (default "__stringify(DHCP_DEFAULT_RETRY)")");
+BAREBOX_CMD_HELP_OPT ("-r RETRY", "retry limit (default 20)");
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(dhcp)
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
