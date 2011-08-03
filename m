Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoWtp-0005er-EA
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 08:33:58 +0000
Received: by fxd20 with SMTP id 20so888597fxd.36
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 01:33:56 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 Aug 2011 12:33:52 +0400
Message-Id: <1312360432-26595-1-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <20110803072910.GO31404@pengutronix.de>
References: <20110803072910.GO31404@pengutronix.de>
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
Subject: [PATCH] commands/led.c: fix return code
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/led.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/led.c b/commands/led.c
index 7fd9d44..6bda797 100644
--- a/commands/led.c
+++ b/commands/led.c
@@ -40,7 +40,7 @@ static int do_led(struct command *cmdtp, int argc, char *argv[])
 		led = led_by_number(i);
 		if (!led) {
 			printf("no registered LEDs\n");
-			return COMMAND_ERROR;
+			return 1;
 		}
 
 		printf("registered LEDs:\n");
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
