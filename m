Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UccJJ-0001GO-EJ
 for barebox@lists.infradead.org; Wed, 15 May 2013 14:04:08 +0000
Received: from mail243.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 6D122FFB87C
 for <barebox@lists.infradead.org>; Wed, 15 May 2013 16:03:41 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 15 May 2013 15:59:17 +0200
Message-Id: <1368626359-23966-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1368626359-23966-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130515135821.GG22508@game.jcrosoft.org>
 <1368626359-23966-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] ARM: at91: dt: add pinctrl pre-processor define
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/dt-bindings/pinctrl/at91.h |   35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 include/dt-bindings/pinctrl/at91.h

diff --git a/include/dt-bindings/pinctrl/at91.h b/include/dt-bindings/pinctrl/at91.h
new file mode 100644
index 0000000..d7988b4
--- /dev/null
+++ b/include/dt-bindings/pinctrl/at91.h
@@ -0,0 +1,35 @@
+/*
+ * This header provides constants for most at91 pinctrl bindings.
+ *
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#ifndef __DT_BINDINGS_AT91_PINCTRL_H__
+#define __DT_BINDINGS_AT91_PINCTRL_H__
+
+#define AT91_PINCTRL_NONE		(0 << 0)
+#define AT91_PINCTRL_PULL_UP		(1 << 0)
+#define AT91_PINCTRL_MULTI_DRIVE	(1 << 1)
+#define AT91_PINCTRL_DEGLITCH		(1 << 2)
+#define AT91_PINCTRL_PULL_DOWN		(1 << 3)
+#define AT91_PINCTRL_DIS_SCHMIT		(1 << 4)
+#define AT91_PINCTRL_DEBOUNCE		(1 << 16)
+#define AT91_PINCTRL_DEBOUNCE_VA(x)	(x << 17)
+
+#define AT91_PINCTRL_PULL_UP_DEGLITCH	(AT91_PINCTRL_PULL_UP | AT91_PINCTRL_DEGLITCH)
+
+#define AT91_PIOA	0
+#define AT91_PIOB	1
+#define AT91_PIOC	2
+#define AT91_PIOD	3
+#define AT91_PIOE	4
+
+#define AT91_PERIPH_GPIO	0
+#define AT91_PERIPH_A		1
+#define AT91_PERIPH_B		2
+#define AT91_PERIPH_C		3
+#define AT91_PERIPH_D		4
+
+#endif /* __DT_BINDINGS_AT91_PINCTRL_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
