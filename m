Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifUE8-0001mz-UK
 for barebox@lists.infradead.org; Thu, 12 Dec 2019 19:34:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Dec 2019 20:34:17 +0100
Message-Id: <20191212193417.24093-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] commands: led: print actual error code when led_set fails
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

If led_set fails, the error code is the return value, not errno.
Fix this. While at replace the magic value in the command return code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/led.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/led.c b/commands/led.c
index a53f0df6a200..b608fcfa2cdb 100644
--- a/commands/led.c
+++ b/commands/led.c
@@ -101,8 +101,8 @@ static int do_led(int argc, char *argv[])
 
 	ret = led_set(led, value);
 	if (ret < 0) {
-		perror("led");
-		return 1;
+		printf("led: %s\n", strerror(-ret));
+		return COMMAND_ERROR;
 	}
 
 	return 0;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
