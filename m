Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHOv-0000iK-IS
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:53:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 11:53:11 +0100
Message-Id: <1362826391-16215-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
References: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] gpio: allocate gpio_desc table dynamically
To: barebox@lists.infradead.org

Some systems are runnignfrom a very limited SRAM, but have a huge
malloc space in SDRAM. The bss normally is in SRAM, so we should
avoid having big structures there. The gpio_desc table is 3072 bytes
big, so allocate it dynamically instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpio.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
index d37f5a0..9d081c2 100644
--- a/drivers/gpio/gpio.c
+++ b/drivers/gpio/gpio.c
@@ -1,3 +1,4 @@
+#include <init.h>
 #include <common.h>
 #include <command.h>
 #include <complete.h>
@@ -13,7 +14,15 @@ struct gpio_info {
 	char *label;
 };
 
-static struct gpio_info gpio_desc[ARCH_NR_GPIOS];
+static struct gpio_info *gpio_desc;
+
+static int gpio_desc_alloc(void)
+{
+	gpio_desc = xzalloc(sizeof(struct gpio_info) * ARCH_NR_GPIOS);
+
+	return 0;
+}
+pure_initcall(gpio_desc_alloc);
 
 static int gpio_ensure_requested(struct gpio_info *gi, int gpio)
 {
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
