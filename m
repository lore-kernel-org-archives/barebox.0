Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YulSV-0002LS-KH
 for barebox@lists.infradead.org; Tue, 19 May 2015 17:37:40 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 19 May 2015 19:37:11 +0200
Message-Id: <1432057031-19366-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] habv4: habv4_get_status(): fix warning with no-op static
 inline function
To: barebox@lists.infradead.org

This patch fixes the following warning:

  CC      arch/arm/boards/foo/board.o
  In file included from arch/arm/boards/foo/board.c:22:0:
  include/habv4.h:24:19: warning: function declaration isn't a prototype [-Wstrict-prototypes]
   static inline int habv4_get_status()
                      ^

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/habv4.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/habv4.h b/include/habv4.h
index fb6ed99d8207..f9bf74f3b936 100644
--- a/include/habv4.h
+++ b/include/habv4.h
@@ -21,7 +21,7 @@
 #ifdef CONFIG_HABV4
 int habv4_get_status(void);
 #else
-static inline int habv4_get_status()
+static inline int habv4_get_status(void)
 {
 	return -EPERM;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
