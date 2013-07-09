Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwVt2-0005F0-UY
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 11:15:14 +0000
Received: from mail631.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D7197DC5729
 for <barebox@lists.infradead.org>; Tue,  9 Jul 2013 13:14:51 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  9 Jul 2013 13:14:51 +0200
Message-Id: <1373368492-4627-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1373368492-4627-1-git-send-email-plagnioj@jcrosoft.com>
References: <1373368492-4627-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] ARM: at91 boards: remove empty config.h files
To: barebox@lists.infradead.org

We just keep one on rm9200ek as I did not yet convert this SoC init to C
struct and still use Macro.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/config.h        | 4 ----
 arch/arm/boards/at91sam9260ek/config.h    | 4 ----
 arch/arm/boards/at91sam9261ek/config.h    | 4 ----
 arch/arm/boards/at91sam9263ek/config.h    | 4 ----
 arch/arm/boards/at91sam9m10g45ek/config.h | 4 ----
 arch/arm/boards/at91sam9m10ihd/config.h   | 4 ----
 arch/arm/boards/at91sam9n12ek/config.h    | 4 ----
 arch/arm/boards/at91sam9x5ek/config.h     | 4 ----
 arch/arm/boards/dss11/config.h            | 4 ----
 arch/arm/boards/mmccpu/config.h           | 4 ----
 arch/arm/boards/pm9261/config.h           | 4 ----
 arch/arm/boards/pm9263/config.h           | 4 ----
 arch/arm/boards/pm9g45/config.h           | 4 ----
 arch/arm/boards/qil-a926x/config.h        | 4 ----
 arch/arm/boards/sama5d3xek/config.h       | 4 ----
 arch/arm/boards/telit-evk-pro3/config.h   | 4 ----
 arch/arm/boards/tny-a926x/config.h        | 4 ----
 arch/arm/boards/usb-a926x/config.h        | 4 ----
 18 files changed, 72 deletions(-)
 delete mode 100644 arch/arm/boards/animeo_ip/config.h
 delete mode 100644 arch/arm/boards/at91sam9260ek/config.h
 delete mode 100644 arch/arm/boards/at91sam9261ek/config.h
 delete mode 100644 arch/arm/boards/at91sam9263ek/config.h
 delete mode 100644 arch/arm/boards/at91sam9m10g45ek/config.h
 delete mode 100644 arch/arm/boards/at91sam9m10ihd/config.h
 delete mode 100644 arch/arm/boards/at91sam9n12ek/config.h
 delete mode 100644 arch/arm/boards/at91sam9x5ek/config.h
 delete mode 100644 arch/arm/boards/dss11/config.h
 delete mode 100644 arch/arm/boards/mmccpu/config.h
 delete mode 100644 arch/arm/boards/pm9261/config.h
 delete mode 100644 arch/arm/boards/pm9263/config.h
 delete mode 100644 arch/arm/boards/pm9g45/config.h
 delete mode 100644 arch/arm/boards/qil-a926x/config.h
 delete mode 100644 arch/arm/boards/sama5d3xek/config.h
 delete mode 100644 arch/arm/boards/telit-evk-pro3/config.h
 delete mode 100644 arch/arm/boards/tny-a926x/config.h
 delete mode 100644 arch/arm/boards/usb-a926x/config.h

diff --git a/arch/arm/boards/animeo_ip/config.h b/arch/arm/boards/animeo_ip/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/animeo_ip/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9260ek/config.h b/arch/arm/boards/at91sam9260ek/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/at91sam9260ek/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9261ek/config.h b/arch/arm/boards/at91sam9261ek/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/at91sam9261ek/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9263ek/config.h b/arch/arm/boards/at91sam9263ek/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/at91sam9263ek/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9m10g45ek/config.h b/arch/arm/boards/at91sam9m10g45ek/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/at91sam9m10g45ek/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9m10ihd/config.h b/arch/arm/boards/at91sam9m10ihd/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/at91sam9m10ihd/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9n12ek/config.h b/arch/arm/boards/at91sam9n12ek/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/at91sam9n12ek/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/at91sam9x5ek/config.h b/arch/arm/boards/at91sam9x5ek/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/at91sam9x5ek/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/dss11/config.h b/arch/arm/boards/dss11/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/dss11/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/mmccpu/config.h b/arch/arm/boards/mmccpu/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/mmccpu/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/pm9261/config.h b/arch/arm/boards/pm9261/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/pm9261/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/pm9263/config.h b/arch/arm/boards/pm9263/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/pm9263/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/pm9g45/config.h b/arch/arm/boards/pm9g45/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/pm9g45/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/qil-a926x/config.h b/arch/arm/boards/qil-a926x/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/qil-a926x/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/sama5d3xek/config.h b/arch/arm/boards/sama5d3xek/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/sama5d3xek/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/telit-evk-pro3/config.h b/arch/arm/boards/telit-evk-pro3/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/telit-evk-pro3/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/tny-a926x/config.h b/arch/arm/boards/tny-a926x/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/tny-a926x/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/usb-a926x/config.h b/arch/arm/boards/usb-a926x/config.h
deleted file mode 100644
index ca15136..0000000
--- a/arch/arm/boards/usb-a926x/config.h
+++ /dev/null
@@ -1,4 +0,0 @@
-#ifndef __CONFIG_H
-#define __CONFIG_H
-
-#endif	/* __CONFIG_H */
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
