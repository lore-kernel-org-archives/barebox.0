Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0g0T-0002yH-Fp
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 05:51:36 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 07:51:04 +0200
Message-Id: <20190822055114.931-2-ahmad@a3f.at>
In-Reply-To: <20190822055114.931-1-ahmad@a3f.at>
References: <20190822055114.931-1-ahmad@a3f.at>
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
Subject: [PATCH 01/11] linux/kbuild.h: sync with upstream
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

Clang doesn't like literal ASCII in the listing.
Copy over the Linux v5.2 state of the file to fix this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/linux/kbuild.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/linux/kbuild.h b/include/linux/kbuild.h
index 359d4a8682a1..e7be517aaaf6 100644
--- a/include/linux/kbuild.h
+++ b/include/linux/kbuild.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef __LINUX_KBUILD_H
 #define __LINUX_KBUILD_H
 
 #define DEFINE(sym, val) \
-	asm volatile("\n->" #sym " %0 " #val : : "i" (val))
+	asm volatile("\n.ascii \"->" #sym " %0 " #val "\"" : : "i" (val))
 
-#define BLANK() asm volatile("\n->" : : )
+#define BLANK() asm volatile("\n.ascii \"->\"" : : )
 
 #define OFFSET(sym, str, mem) \
 	DEFINE(sym, offsetof(struct str, mem))
 
 #define COMMENT(x) \
-	asm volatile("\n->#" x)
+	asm volatile("\n.ascii \"->#" x "\"")
 
 #endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
