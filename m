Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V8Txy-0002Ci-RC
 for barebox@lists.infradead.org; Sun, 11 Aug 2013 11:37:49 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Sun, 11 Aug 2013 14:36:40 +0300
Message-Id: <dab4bd27cb87dade31bafdaa3a59da2e9a5834b5.1376220958.git.baruch@tkos.co.il>
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
Subject: [PATCH] fs: tftp: don't duplicate timeout information
To: barebox@lists.infradead.org

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
Untested.

 fs/tftp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 50efe0d..b641faf 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -40,7 +40,7 @@
 #define TFTP_RESEND_TIMEOUT	SECOND
 
 /* After this time without progress we will bail out */
-#define TFTP_TIMEOUT		(5 * SECOND)
+#define TFTP_TIMEOUT		(TIMEOUT * SECOND)
 
 /*
  *	TFTP operations.
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
