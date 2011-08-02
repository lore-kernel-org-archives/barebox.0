Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qo95k-0006de-F5
	for barebox@lists.infradead.org; Tue, 02 Aug 2011 07:08:40 +0000
Received: by mail-fx0-f49.google.com with SMTP id 20so7320975fxd.36
	for <barebox@lists.infradead.org>; Tue, 02 Aug 2011 00:08:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  2 Aug 2011 11:08:36 +0400
Message-Id: <1312268916-16694-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands/led.c: check registered LEDs
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/led.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/commands/led.c b/commands/led.c
index afb3fd3..774ba31 100644
--- a/commands/led.c
+++ b/commands/led.c
@@ -37,6 +37,12 @@ static int do_led(struct command *cmdtp, int argc, char *argv[])
 	if (argc == 1) {
 		int i = 0;
 
+		led = led_by_number(i);
+		if (!led) {
+			printf("no registered LEDs\n");
+			return COMMAND_ERROR;
+		}
+
 		printf("registered LEDs:\n");
 
 		while ((led = led_by_number(i))) {
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
