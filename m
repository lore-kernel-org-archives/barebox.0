Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f46.google.com ([209.85.220.46])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WiV3X-0005Yi-BS
 for barebox@lists.infradead.org; Thu, 08 May 2014 20:36:40 +0000
Received: by mail-pa0-f46.google.com with SMTP id kx10so3342694pab.33
 for <barebox@lists.infradead.org>; Thu, 08 May 2014 13:36:15 -0700 (PDT)
Received: from [172.16.16.185] ([184.71.143.130])
 by mx.google.com with ESMTPSA id gg3sm3602599pbc.34.2014.05.08.13.36.14
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Thu, 08 May 2014 13:36:15 -0700 (PDT)
Message-ID: <536BEABE.9060705@exegin.com>
Date: Thu, 08 May 2014 13:36:14 -0700
From: Owen Kirby <osk@exegin.com>
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
Subject: [PATCH] Fix the options and protocols used by the loadx command.
To: barebox@lists.infradead.org

From 3cd970250ff17ac406e46e18ebb26aa35949d1db Mon Sep 17 00:00:00 2001
From: Owen Kirby <osk@exegin.com>
Date: Thu, 8 May 2014 13:27:11 -0700
Subject: [PATCH] Fix the options and protocols used by the loadx command.

It seems like the loadx command was improperly copy/pasted from the loady
implementation, and was trying to load files using the ymodem protocol. This
patch should fix the command so that it uses xmodem, implements the -t option
and outputs the correct baudrate being used.

Signed-off-by: Owen Kirby <osk@exegin.com>
---
 commands/loadxy.c |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index 7a91286..e023468 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -156,7 +156,7 @@ static int do_loadx(int argc, char *argv[])
 	char *output_file = NULL, *cname = NULL;
 	struct console_device *cdev = NULL;
 
-	while ((opt = getopt(argc, argv, "f:b:o:c")) > 0) {
+	while ((opt = getopt(argc, argv, "f:b:t:o:c")) > 0) {
 		switch (opt) {
 		case 'f':
 			output_file = optarg;
@@ -211,12 +211,12 @@ static int do_loadx(int argc, char *argv[])
 	}
 
 	current_baudrate = console_change_speed(cdev, load_baudrate);
-	printf("## Ready for binary (X-Modem) download "
+	printf("## Ready for binary (xmodem) download "
 	       "to 0x%08lX offset on %s device at %d bps...\n", offset,
-	       output_file, load_baudrate);
-	rcode = do_load_serial_ymodem(cdev);
+	       output_file, load_baudrate ? load_baudrate : current_baudrate);
+	rcode = do_load_serial_xmodem(cdev, ofd);
 	if (rcode < 0) {
-		printf("## Binary (kermit) download aborted (%d)\n", rcode);
+		printf("## Binary (xmodem) download aborted (%d)\n", rcode);
 		rcode = 1;
 	}
 	console_change_speed(cdev, current_baudrate);
-- 
1.7.9.5



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
