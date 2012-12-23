Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TmqKs-0006Ty-T2
 for barebox@lists.infradead.org; Sun, 23 Dec 2012 18:31:44 +0000
Received: from mail643.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 1BB5C104E231
 for <barebox@lists.infradead.org>; Sun, 23 Dec 2012 19:40:29 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 23 Dec 2012 19:30:01 +0100
Message-Id: <1356287402-10701-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] w1: gpio: use int for gpio
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
