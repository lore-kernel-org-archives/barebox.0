Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fk68f-0002bZ-1d
 for barebox@lists.infradead.org; Mon, 30 Jul 2018 11:14:59 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon, 30 Jul 2018 13:14:36 +0200
Message-Id: <20180730111437.23453-3-r.hieber@pengutronix.de>
In-Reply-To: <20180730111437.23453-1-r.hieber@pengutronix.de>
References: <20180730111437.23453-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 3/4] gpio: fix missing includes for bool and struct list_head
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 include/gpio.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/gpio.h b/include/gpio.h
index f5262aac42..e42fa23383 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -1,6 +1,9 @@
 #ifndef __GPIO_H
 #define __GPIO_H
 
+#include <linux/types.h>
+#include <linux/list.h>
+
 #ifdef CONFIG_GENERIC_GPIO
 void gpio_set_value(unsigned gpio, int value);
 int gpio_get_value(unsigned gpio);
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
