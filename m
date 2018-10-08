Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P8m-0006DL-6z
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:36:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id az3-v6so9584609plb.4
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:35:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:35:17 -0700
Message-Id: <20181008063518.18164-4-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063518.18164-1-andrew.smirnov@gmail.com>
References: <20181008063518.18164-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 3/4] bbu: command: Make sure specified update handler exists
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to verify that update handler specified with either -t or of
-d exists before commencing the update procedure.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/barebox-update.c | 46 ++++++++++++++++++++++++++++++---------
 1 file changed, 36 insertions(+), 10 deletions(-)

diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index 903b4068d..53af2a851 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -24,12 +24,20 @@
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
 	struct bbu_data data = {};
 	struct bbu_handler *handler;
 	void *image = NULL;
+	const char *name;
+	const char *fmt;
 
 	while ((opt = getopt(argc, argv, "t:yf:ld:r")) > 0) {
 		switch (opt) {
@@ -47,8 +55,7 @@ static int do_barebox_update(int argc, char *argv[])
 			data.flags |= BBU_FLAG_YES;
 			break;
 		case 'l':
-			printf("registered update handlers:\n");
-			bbu_handlers_list();
+			print_handlers_list();
 			return 0;
 		case 'r':
 			repair = 1;
@@ -58,6 +65,33 @@ static int do_barebox_update(int argc, char *argv[])
 		}
 	}
 
+	if (data.handler_name && data.devicefile) {
+		printf("Both TARGET and DEVICE are provided. "
+		       "Ignoring the latter\n");
+
+		data.devicefile = NULL;
+	}
+
+	if (data.handler_name) {
+		handler = bbu_find_handler_by_name(data.handler_name);
+		fmt = "handler '%s' does not exist\n";
+		name = data.handler_name;
+	} else if (data.devicefile) {
p+		handler = bbu_find_handler_by_device(data.devicefile);
+		fmt = "handler for '%s' does not exist\n";
+		name = data.devicefile;
+	} else {
+		handler = bbu_find_handler_by_name(NULL);
+		fmt = "default handler does not exist\n";
+		name = NULL;
+	}
+
+	if (!handler) {
+		printf(fmt, name);
+		print_handlers_list();
+		return COMMAND_ERROR;
+	}
+
 	if (argc - optind > 0) {
 		data.imagefile = argv[optind];
 
@@ -70,14 +104,6 @@ static int do_barebox_update(int argc, char *argv[])
 			return COMMAND_ERROR_USAGE;
 	}
 
-	handler = bbu_find_handler_by_device(data.devicefile);
-
-	if (!handler)
-		handler = bbu_find_handler_by_name(data.handler_name);
-
-	if (!handler)
-		return COMMAND_ERROR_USAGE;
-
 	ret = barebox_update(&data, handler);
 
 	free(image);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
