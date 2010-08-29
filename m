Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Opl8M-0007oF-Er
	for barebox@lists.infradead.org; Sun, 29 Aug 2010 16:53:31 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 29 Aug 2010 18:53:03 +0200
Message-Id: <1283100783-23625-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1280840019-11421-1-git-send-email-plagnioj@jcrosoft.com>
References: <1280840019-11421-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH V2] initcall: add postconsole_initcall
To: barebox@lists.infradead.org

this will allow us to print information as soon as the console will be enable

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
HI,

	this patch is a rebase version which is needed by at91 since the
	switch to linux clk framework

	which was forget

Best Regards,
J.
 include/init.h |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/include/init.h b/include/init.h
index bc70874..9651f2a 100644
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
