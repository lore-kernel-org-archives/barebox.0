Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSGht-0000Pa-Pl
 for barebox@lists.infradead.org; Sun, 28 Oct 2012 00:26:29 +0000
Received: from mail409.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id C367EFFA517
 for <barebox@lists.infradead.org>; Sun, 28 Oct 2012 02:33:27 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 28 Oct 2012 02:24:05 +0200
Message-Id: <1351383852-8488-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121028002134.GD28904@game.jcrosoft.org>
References: <20121028002134.GD28904@game.jcrosoft.org>
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
Subject: [PATCH 1/8] arm: at91: add gpio_is_valid support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/include/mach/gpio.h |   11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index 3533bf9..4edfd25 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -22,6 +22,17 @@
 
 /* these pin numbers double as IRQ numbers, like AT91xxx_ID_* values */
 
+#define ARCH_NR_GPIOS 256
+
+static inline int gpio_is_valid(int gpio)
+{
+	if (gpio < 0)
+		return 0;
+	if (gpio < ARCH_NR_GPIOS)
+		return 1;
+	return 0;
+}
+
 #define	AT91_PIN_PA0	(PIN_BASE + 0x00 + 0)
 #define	AT91_PIN_PA1	(PIN_BASE + 0x00 + 1)
 #define	AT91_PIN_PA2	(PIN_BASE + 0x00 + 2)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
