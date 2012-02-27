Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S26C8-00055d-8O
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 19:25:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Feb 2012 20:24:52 +0100
Message-Id: <1330370693-1591-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1330370693-1591-1-git-send-email-s.hauer@pengutronix.de>
References: <1330370693-1591-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM boot[zu]: return COMMAND_ERROR_USAGE instead of
 calling barebox_cmd_usage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootu.c |    6 ++----
 arch/arm/lib/bootz.c |    6 ++----
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
index 89d793a..d93c5fa 100644
--- a/arch/arm/lib/bootu.c
+++ b/arch/arm/lib/bootu.c
@@ -12,10 +12,8 @@ static int do_bootu(struct command *cmdtp, int argc, char *argv[])
 	void *kernel = NULL;
 	void *oftree = NULL;
 
-	if (argc != 2) {
-		barebox_cmd_usage(cmdtp);
-		return 1;
-	}
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
 
 	fd = open(argv[1], O_RDONLY);
 	if (fd > 0)
diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index 40facf6..dcfedbc 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -31,10 +31,8 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 	int usemap = 0;
 	struct memory_bank *bank = list_first_entry(&memory_banks, struct memory_bank, list);
 
-	if (argc != 2) {
-		barebox_cmd_usage(cmdtp);
-		return 1;
-	}
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
 
 	fd = open(argv[1], O_RDONLY);
 	if (fd < 0) {
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
