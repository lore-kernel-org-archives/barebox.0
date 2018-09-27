Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5Nf4-0007xq-DX
 for barebox@lists.infradead.org; Thu, 27 Sep 2018 04:12:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id m77-v6so875405pfi.8
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2018 21:11:53 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 26 Sep 2018 21:11:28 -0700
Message-Id: <20180927041129.29584-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180927041129.29584-1-andrew.smirnov@gmail.com>
References: <20180927041129.29584-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] bbu: command: Make sure specified update handler exists
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to verify that update handler specified with either -t or of
-d exists before commencing the update procedure.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/barebox-update.c | 36 ++++++++++++++++++++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index 84798ab0d..c5c11c27e 100644
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
@@ -57,6 +62,30 @@ static int do_barebox_update(int argc, char *argv[])
 		}
 	}
 
+	if (data.handler_name && data.devicefile) {
+		printf("Both TARGET and DEVICE are provided. "
+		       "Ignoring the latter\n");
+
+		data.devicefile = NULL;
+	}
+
+	if (data.handler_name &&
+	    !bbu_find_handler_by_name(data.handler_name)) {
+		printf("handler '%s' does not exist\n",
+		       data.handler_name);
+		goto error;
+	} else if (data.devicefile &&
+		   !bbu_find_handler_by_device(data.devicefile)) {
+		printf("handler for '%s' does not exist\n",
+		       data.devicefile);
+		goto error;
+	} if (!data.handler_name &&
+	      !data.devicefile &&
+	      !bbu_find_handler_by_name(NULL)) {
+		printf("default handler does not exist\n");
+		goto error;
+	}
+
 	if (argc - optind > 0) {
 		data.imagefile = argv[optind];
 
@@ -74,6 +103,9 @@ static int do_barebox_update(int argc, char *argv[])
 	free(image);
 
 	return ret;
+error:
+	print_handlers_list();
+	return COMMAND_ERROR;
 }
 
 BAREBOX_CMD_HELP_START(barebox_update)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
