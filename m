Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta25.messagelabs.com ([195.245.230.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvfJK-0003SC-Sj
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 09:01:58 +0000
From: <Oleg.Karfich@wago.com>
Date: Fri, 31 Aug 2018 09:01:32 +0000
Message-ID: <1535706079-10439-3-git-send-email-oleg.karfich@wago.com>
References: <1535706079-10439-1-git-send-email-oleg.karfich@wago.com>
In-Reply-To: <1535706079-10439-1-git-send-email-oleg.karfich@wago.com>
Content-Language: en-US
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
Subject: [PATCH 2/3] commands: dhcp: add parameter for private data
To: barebox@lists.infradead.org
Cc: Oleg.Karfich@wago.com

Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
---
 commands/Kconfig |  5 +++--
 commands/dhcp.c  | 10 +++++++---
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 951a869..675bd1c 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1127,7 +1127,7 @@ config CMD_DHCP
 	help
 	  DHCP client to obtain IP or boot params
 
-	  Usage: dhcp [-HvcuUr]
+	  Usage: dhcp [-HvcuUro]
 
 	  Options:
 	          -H HOSTNAME     hostname to send to the DHCP server
@@ -1135,7 +1135,8 @@ config CMD_DHCP
 	          -c ID           DHCP Client ID (code 61) submitted in DHCP requests
 	          -u UUID         DHCP Client UUID (code 97) submitted in DHCP requests
 	          -U CLASS        DHCP User class (code 77) submitted in DHCP requests
-	          -r RETRY        retry limit (default 20)#
+	          -r RETRY        retry limit (default 20)
+		  -o PRIVATE DATA private data (code 224) submitted in DHCP requests
 
 config CMD_HOST
 	tristate
diff --git a/commands/dhcp.c b/commands/dhcp.c
index 1f07b2f..d9e844b 100644
--- a/commands/dhcp.c
+++ b/commands/dhcp.c
@@ -24,7 +24,7 @@ static int do_dhcp(int argc, char *argv[])
 	struct eth_device *edev;
 	const char *edevname;
 
-	while ((opt = getopt(argc, argv, "H:v:c:u:U:r:")) > 0) {
+	while ((opt = getopt(argc, argv, "H:v:c:u:U:r:o:")) > 0) {
 		switch (opt) {
 		case 'H':
 			dhcp_param.hostname = optarg;
@@ -44,6 +44,9 @@ static int do_dhcp(int argc, char *argv[])
 		case 'r':
 			dhcp_param.retries = simple_strtoul(optarg, NULL, 10);
 			break;
+		case 'o':
+			dhcp_param.option224 = optarg;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -72,13 +75,14 @@ BAREBOX_CMD_HELP_OPT("-v ID\t", "DHCP Vendor ID (code 60) submitted in DHCP requ
 BAREBOX_CMD_HELP_OPT("-c ID\t", "DHCP Client ID (code 61) submitted in DHCP requests")
 BAREBOX_CMD_HELP_OPT("-u UUID\t", "DHCP Client UUID (code 97) submitted in DHCP requests")
 BAREBOX_CMD_HELP_OPT("-U CLASS", "DHCP User class (code 77) submitted in DHCP requests")
-BAREBOX_CMD_HELP_OPT("-r RETRY", "retry limit (default 20)");
+BAREBOX_CMD_HELP_OPT("-r RETRY", "retry limit (default 20)")
+BAREBOX_CMD_HELP_OPT("-o PRIVATE DATA", "private data (code 224) submitted in DHCP requests");
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(dhcp)
 	.cmd		= do_dhcp,
 	BAREBOX_CMD_DESC("DHCP client to obtain IP or boot params")
-	BAREBOX_CMD_OPTS("[-HvcuUr] [device]")
+	BAREBOX_CMD_OPTS("[-HvcuUro] [device]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_dhcp_help)
 	BAREBOX_CMD_COMPLETE(eth_complete)
-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
