Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2EH-0005YI-K0
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:47 +0000
Received: by mail-pg1-x531.google.com with SMTP id u10-v6so1882231pgr.1
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:43 -0700
Message-Id: <20180824025243.19479-25-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 24/24] bbu: command: Make sure specified update handler
 exists
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to verify that update handler specified with either -t or of
-d exists before commencing the update procedure.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/barebox-update.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index 84798ab0d..f76aa19a5 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -24,6 +24,12 @@
 #include <bbu.h>
 #include <fs.h>
 
+static void print_handlers_list(void)
+{
+	printf("registered update handlers:\n");
+	bbu_handlers_list();
+}
+
 static int do_barebox_update(int argc, char *argv[])
 {
 	int opt, ret, repair = 0;
@@ -46,8 +52,7 @@ static int do_barebox_update(int argc, char *argv[])
 			data.flags |= BBU_FLAG_YES;
 			break;
 		case 'l':
-			printf("registered update handlers:\n");
-			bbu_handlers_list();
+			print_handlers_list();
 			return 0;
 		case 'r':
 			repair = 1;
@@ -57,6 +62,12 @@ static int do_barebox_update(int argc, char *argv[])
 		}
 	}
 
+	if (!barebox_update_handler_exists(&data)) {
+		printf("handler '%s' does not exist\n", data.handler_name);
+		print_handlers_list();
+		return COMMAND_ERROR;
+	}
+
 	if (argc - optind > 0) {
 		data.imagefile = argv[optind];
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
