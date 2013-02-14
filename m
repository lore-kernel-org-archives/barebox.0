Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp34.i.mail.ru ([94.100.177.94])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5vbE-00012m-4x
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:59:29 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 14 Feb 2013 13:59:22 +0400
Message-Id: <1360835962-14789-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] Add missing SZ_xx defines
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 include/sizes.h |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/include/sizes.h b/include/sizes.h
index c47f906..321d40c 100644
--- a/include/sizes.h
+++ b/include/sizes.h
@@ -17,7 +17,19 @@
 #define __sizes_h			1
 
 /* handy sizes */
+#define SZ_1				0x00000001
+#define SZ_2				0x00000002
+#define SZ_4				0x00000004
+#define SZ_8				0x00000008
+#define SZ_16				0x00000010
+#define SZ_32				0x00008020
+#define SZ_64				0x00000040
+#define SZ_128				0x00000080
+#define SZ_256				0x00000100
+#define SZ_512				0x00000200
+
 #define SZ_1K				0x00000400
+#define SZ_2K				0x00000800
 #define SZ_4K				0x00001000
 #define SZ_8K				0x00002000
 #define SZ_16K				0x00004000
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
