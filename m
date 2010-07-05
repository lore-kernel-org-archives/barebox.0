Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pw0-f49.google.com ([209.85.160.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OVZAH-00032q-3t
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 00:04:03 +0000
Received: by pwj5 with SMTP id 5so2269425pwj.36
	for <barebox@lists.infradead.org>; Sun, 04 Jul 2010 17:03:59 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 5 Jul 2010 08:03:59 +0800
Message-ID: <AANLkTinpo0s4FZGsfTMFIgAM8Q4hdcZq5NxY4smk1ohh@mail.gmail.com>
From: Randolph Chung <rchung42@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Fix typo in commands/gpio.c
To: barebox@lists.infradead.org

Please apply. -randolph

diff --git a/commands/gpio.c b/commands/gpio.c
index 2575c1e..91078cf 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -37,7 +37,7 @@ static int do_gpio_get_value(struct command *cmdtp, int argc,
 }

 static const __maybe_unused char cmd_gpio_get_value_help[] =
-"Usage: gpio_set_value <gpio>\n";
+"Usage: gpio_get_value <gpio>\n";

 BAREBOX_CMD_START(gpio_get_value)
        .cmd            = do_gpio_get_value,
@@ -90,7 +90,7 @@ static const __maybe_unused char cmd_do_gpio_direction_input_h

 BAREBOX_CMD_START(gpio_direction_input)
        .cmd            = do_gpio_direction_input,
-       .usage          = "set a gpio as output",
+       .usage          = "set a gpio as input",
        BAREBOX_CMD_HELP(cmd_do_gpio_direction_input_help)
 BAREBOX_CMD_END

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
