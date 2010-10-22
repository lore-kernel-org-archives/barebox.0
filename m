Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9DTU-0004VK-M9
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 08:59:45 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P9DTT-0006NZ-3C
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 10:59:43 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 22 Oct 2010 10:59:29 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010221059.29399.jbe@pengutronix.de>
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
Subject: [PATCH] Fix a simple typo to less confusing the user
To: barebox@lists.infradead.org

From: Juergen Beisert <jbe@pengutronix.de>
Subject: Fix a simple typo to less confusing the user

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 commands/gpio.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: barebox-2010.10.0/commands/gpio.c
===================================================================
--- barebox-2010.10.0.orig/commands/gpio.c
+++ barebox-2010.10.0/commands/gpio.c
@@ -37,7 +37,7 @@ static int do_gpio_get_value(struct comm
 }
 
 static const __maybe_unused char cmd_gpio_get_value_help[] =
-"Usage: gpio_set_value <gpio>\n";
+"Usage: gpio_get_value <gpio>\n";
 
 BAREBOX_CMD_START(gpio_get_value)
 	.cmd		= do_gpio_get_value,

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
