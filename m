Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlIvz-0003hn-Ao
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 20:11:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlIvx-00064X-65
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 22:11:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlIvu-0001sf-Hb
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 22:11:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jul 2019 22:11:06 +0200
Message-Id: <20190710201112.9086-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/7] gpio: allow for arch-specific ARCH_NR_GPIOS > 256
To: barebox@lists.infradead.org

Some architectures have non-contiguous GPIO ranges where some GPIOs can
have identifiers exceeding the hardcoded ARCH_NR_GPIOs of 256.

One such example is the STM32MP, whose gpioz controller has identifiers
that go up to ('Z' - 'A' + 1) * 0x10 - 1 = 415.
Instead of increasing the array size for all architectures or doing
some sort of packing, allow architecture to define their own overriding
CONFIG_ARCH_NR_GPIO like the kernel does.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/gpio.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/gpio.h b/include/gpio.h
index e822fd53475d..1926edeca757 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -45,7 +45,11 @@ static inline int gpio_direction_active(unsigned gpio, int value)
 }
 #endif
 
+#if defined(CONFIG_ARCH_NR_GPIO) && CONFIG_ARCH_NR_GPIO > 0
+#define ARCH_NR_GPIOS CONFIG_ARCH_NR_GPIO
+#else
 #define ARCH_NR_GPIOS 256
+#endif
 
 static inline int gpio_is_valid(int gpio)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
