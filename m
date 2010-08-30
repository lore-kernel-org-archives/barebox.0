Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Opt4g-00016m-Tr
	for barebox@lists.infradead.org; Mon, 30 Aug 2010 01:22:16 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Aug 2010 03:21:46 +0200
Message-Id: <1283131306-6696-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1283100783-23625-1-git-send-email-plagnioj@jcrosoft.com>
References: <1283100783-23625-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH V3] initcall: add postconsole_initcall
To: barebox@lists.infradead.org

this will allow us to print information as soon as the console will be enable

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
HI,

	this patch is a rebase version which is needed by at91 since the
	switch to linux clk framework

	which was forget

v3:

	add missing KEEP for linker script
Best Regards,
J.
 include/asm-generic/barebox.lds.h |    3 ++-
 include/init.h                    |    9 +++++----
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 99ccc5e..1d3f4f7 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -15,7 +15,8 @@
 	KEEP(*(.initcall.4))			\
 	KEEP(*(.initcall.5))			\
 	KEEP(*(.initcall.6))			\
-	KEEP(*(.initcall.7))
+	KEEP(*(.initcall.7))			\
+	KEEP(*(.initcall.8))
 
 #define BAREBOX_CMDS	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))
 
diff --git a/include/init.h b/include/init.h
index bc70874..8692b68 100644
--- a/include/init.h
+++ b/include/init.h
@@ -25,10 +25,11 @@ typedef int (*initcall_t)(void);
 #define core_initcall(fn)		__define_initcall("1",fn,1)
 #define postcore_initcall(fn)		__define_initcall("2",fn,2)
 #define console_initcall(fn)		__define_initcall("3",fn,3)
-#define coredevice_initcall(fn)		__define_initcall("4",fn,4)
-#define fs_initcall(fn)			__define_initcall("5",fn,5)
-#define device_initcall(fn)		__define_initcall("6",fn,6)
-#define late_initcall(fn)		__define_initcall("7",fn,7)
+#define postconsole_initcall(fn)	__define_initcall("4",fn,4)
+#define coredevice_initcall(fn)		__define_initcall("5",fn,5)
+#define fs_initcall(fn)			__define_initcall("6",fn,6)
+#define device_initcall(fn)		__define_initcall("7",fn,7)
+#define late_initcall(fn)		__define_initcall("8",fn,8)
 
 /* section for code used very early when
  * - we're not running from where we linked at
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
