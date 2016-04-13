Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m50-134.163.com ([123.125.50.134])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqJVM-0004Yr-Vg
 for barebox@lists.infradead.org; Wed, 13 Apr 2016 12:02:47 +0000
From: Du Huanpeng <d-hp@163.com>
Date: Wed, 13 Apr 2016 20:02:06 +0800
Message-Id: <1460548926-10462-1-git-send-email-d-hp@163.com>
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
Subject: [PATCH] NULL: define as a null pointer
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

From: Du Huanpeng <u74147@gmail.com>

ISO/IEC 9899:TC3 says:
The macros are
	NULL
which expands to an implementation-defined null pointer constant;

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 include/command.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/command.h b/include/command.h
index 3aca1a9..e41068a 100644
--- a/include/command.h
+++ b/include/command.h
@@ -27,7 +27,7 @@
 #include <linux/stringify.h>
 
 #ifndef NULL
-#define NULL	0
+#define NULL	((void *)0)
 #endif
 
 #ifndef	__ASSEMBLY__
-- 
1.9.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
