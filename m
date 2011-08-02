Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qo95P-0006de-Mb
	for barebox@lists.infradead.org; Tue, 02 Aug 2011 07:08:20 +0000
Received: by fxd20 with SMTP id 20so7320975fxd.36
	for <barebox@lists.infradead.org>; Tue, 02 Aug 2011 00:08:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  2 Aug 2011 11:08:08 +0400
Message-Id: <1312268888-16657-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands/led.c: fix return codes
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/led.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/led.c b/commands/led.c
index 360ce7c..afb3fd3 100644
--- a/commands/led.c
+++ b/commands/led.c
@@ -45,7 +45,7 @@ static int do_led(struct command *cmdtp, int argc, char *argv[])
 					led->max_value);
 			i++;
 		}
-		return 0;
+		return COMMAND_SUCCESS;
 	}
 
 	if (argc != 3)
@@ -54,7 +54,7 @@ static int do_led(struct command *cmdtp, int argc, char *argv[])
 	led = led_by_name_or_number(argv[1]);
 	if (!led) {
 		printf("no such LED: %s\n", argv[1]);
-		return 1;
+		return COMMAND_ERROR;
 	}
 
 	value = simple_strtoul(argv[optind + 1], NULL, 0);
@@ -62,10 +62,10 @@ static int do_led(struct command *cmdtp, int argc, char *argv[])
 	ret = led_set(led, value);
 	if (ret < 0) {
 		perror("led");
-		return 1;
+		return COMMAND_ERROR;
 	}
 
-	return 0;
+	return COMMAND_SUCCESS;
 }
 
 /**
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
