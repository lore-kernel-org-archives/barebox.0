Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tun2b-0007FG-3R
 for barebox@lists.infradead.org; Mon, 14 Jan 2013 16:37:42 +0000
Received: from mail439.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 04BDEFF92C1
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2013 17:47:13 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 14 Jan 2013 17:36:08 +0100
Message-Id: <1358181372-24547-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130114163253.GD22953@game.jcrosoft.org>
References: <20130114163253.GD22953@game.jcrosoft.org>
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
Subject: [RESEND PATCH 1/5] w1: gpio: use int for gpio
To: barebox@lists.infradead.org

so we can use negative value for invalid gpio

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/linux/w1-gpio.h |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/w1-gpio.h b/include/linux/w1-gpio.h
index 065e3ae..ae961ee 100644
--- a/include/linux/w1-gpio.h
+++ b/include/linux/w1-gpio.h
@@ -16,10 +16,10 @@
  * @is_open_drain: GPIO pin is configured as open drain
  */
 struct w1_gpio_platform_data {
-	unsigned int pin;
+	int pin;
 	unsigned int is_open_drain:1;
 	void (*enable_external_pullup)(int enable);
-	unsigned int ext_pullup_enable_pin;
+	int ext_pullup_enable_pin;
 };
 
 #endif /* _LINUX_W1_GPIO_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
