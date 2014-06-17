Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WwmI6-0006vG-SD
 for barebox@lists.infradead.org; Tue, 17 Jun 2014 05:50:43 +0000
Received: by mail-lb0-f176.google.com with SMTP id w7so1728278lbi.21
 for <barebox@lists.infradead.org>; Mon, 16 Jun 2014 22:50:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 17 Jun 2014 09:50:10 +0400
Message-Id: <1402984210-21081-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands: gpio_direction_output: add missed VALUE parameter
 to help message
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/gpio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/gpio.c b/commands/gpio.c
index 9d9d169..4f2d93e 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -104,7 +104,7 @@ static int do_gpio_direction_output(int argc, char *argv[])
 BAREBOX_CMD_START(gpio_direction_output)
 	.cmd		= do_gpio_direction_output,
 	BAREBOX_CMD_DESC("set direction of a GPIO pin to output")
-	BAREBOX_CMD_OPTS("GPIO")
+	BAREBOX_CMD_OPTS("GPIO VALUE")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 BAREBOX_CMD_END
 
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
