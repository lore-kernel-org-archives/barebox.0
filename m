Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJhA7-0000PN-9t
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:50:55 +0100
Message-Id: <20181105155113.3434-5-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/22] ARM: at91sam926x: Add header for at91sam926x common
 base addresses
To: Barebox List <barebox@lists.infradead.org>

There are some base addresses common to at91sam926x. Add a separate
header for these.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/at91sam926x.h | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 arch/arm/mach-at91/include/mach/at91sam926x.h

diff --git a/arch/arm/mach-at91/include/mach/at91sam926x.h b/arch/arm/mach-at91/include/mach/at91sam926x.h
new file mode 100644
index 0000000000..ab5cf515ef
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91sam926x.h
@@ -0,0 +1,8 @@
+#ifndef __MACH_AT91SAM926X_H
+#define __MACH_AT91SAM926X_H
+
+#define AT91SAM926X_BASE_PMC	0xfffffc00
+#define AT91SAM926X_BASE_RSTC	0xfffffd00
+#define AT91SAM926X_BASE_WDT	0xfffffd40
+
+#endif /* __MACH_AT91SAM926X_H */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
