Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNXlg-00086z-Nt
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 08:47:22 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNXlf-0003VW-Qq
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 10:47:19 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNXlf-000174-BK
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 10:47:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 30 Sep 2020 10:47:12 +0200
Message-Id: <20200930084716.4200-5-m.felsch@pengutronix.de>
In-Reply-To: <20200930084716.4200-1-m.felsch@pengutronix.de>
References: <20200930084716.4200-1-m.felsch@pengutronix.de>
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
Subject: [PATCH v2 4/8] initcall: add of_populate_initcall
To: barebox@lists.infradead.org

Add dedicated initcall for of_probe() which is required for the following
device-on-demand/deep-probe mechanism.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- no changes

 include/asm-generic/barebox.lds.h |  1 +
 include/init.h                    | 10 +++++++---
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 6971e2c1d2..a7d32160d1 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -33,6 +33,7 @@
 	KEEP(*(.initcall.12))			\
 	KEEP(*(.initcall.13))			\
 	KEEP(*(.initcall.14))			\
+	KEEP(*(.initcall.15))			\
 	__barebox_initcalls_end = .;
 
 #define BAREBOX_EXITCALLS			\
diff --git a/include/init.h b/include/init.h
index 2d61bc8963..1bd5c94b14 100644
--- a/include/init.h
+++ b/include/init.h
@@ -47,6 +47,9 @@ typedef void (*exitcall_t)(void);
  * initializes variables that couldn't be statically initialized.
  *
  * This only exists for built-in code, not for modules.
+ *
+ * The only purpose for "of_populate" is to call of_probe() other functions are
+ * not allowed.
  */
 #define pure_initcall(fn)		__define_initcall("0",fn,0)
 
@@ -61,9 +64,10 @@ typedef void (*exitcall_t)(void);
 #define fs_initcall(fn)			__define_initcall("9",fn,9)
 #define device_initcall(fn)		__define_initcall("10",fn,10)
 #define crypto_initcall(fn)		__define_initcall("11",fn,11)
-#define late_initcall(fn)		__define_initcall("12",fn,12)
-#define environment_initcall(fn)	__define_initcall("13",fn,13)
-#define postenvironment_initcall(fn)	__define_initcall("14",fn,14)
+#define of_populate_initcall(fn)	__define_initcall("12",fn,15)
+#define late_initcall(fn)		__define_initcall("13",fn,12)
+#define environment_initcall(fn)	__define_initcall("14",fn,13)
+#define postenvironment_initcall(fn)	__define_initcall("15",fn,14)
 
 #define early_exitcall(fn)		__define_exitcall("0",fn,0)
 #define predevshutdown_exitcall(fn)	__define_exitcall("1",fn,1)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
