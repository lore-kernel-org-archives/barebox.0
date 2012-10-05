Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5xv-0005ob-6S
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 11:21:11 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 76C1010506F3
 for <barebox@lists.infradead.org>; Fri,  5 Oct 2012 13:27:26 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  5 Oct 2012 13:18:41 +0200
Message-Id: <1349435923-29233-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1349435923-29233-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121005110435.GR26553@game.jcrosoft.org>
 <1349435923-29233-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] gpio: provide generic gpio header
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/asm-generic/gpio.h |   10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 include/asm-generic/gpio.h

diff --git a/include/asm-generic/gpio.h b/include/asm-generic/gpio.h
new file mode 100644
index 0000000..1997888
--- /dev/null
+++ b/include/asm-generic/gpio.h
@@ -0,0 +1,10 @@
+#ifndef __ASM_GENERIC_GPIO_H
+#define __ASM_GENERIC_GPIO_H
+
+void gpio_set_value(unsigned gpio, int value);
+int gpio_get_value(unsigned gpio);
+int gpio_direction_output(unsigned gpio, int value);
+int gpio_direction_input(unsigned gpio);
+
+#endif /* __ASM_GENERIC_GPIO_H */
+
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
