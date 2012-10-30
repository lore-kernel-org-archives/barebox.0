Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTIxH-0008Uv-8G
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 21:02:36 +0000
Received: from mail643.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 3D35C104E85F
 for <barebox@lists.infradead.org>; Tue, 30 Oct 2012 22:09:38 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 30 Oct 2012 22:00:15 +0100
Message-Id: <1351630822-20803-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121030205459.GE29599@game.jcrosoft.org>
References: <20121030205459.GE29599@game.jcrosoft.org>
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
index 3533bf9..fa695a6 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -22,6 +22,17 @@
 
 /* these pin numbers double as IRQ numbers, like AT91xxx_ID_* values */
 
+#define ARCH_NR_GPIOS 256
+
+static inline int gpio_is_valid(int gpio)
+{
+	if (gpio < 1)
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
