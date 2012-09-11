Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f169.google.com ([209.85.212.169])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBJ2m-0004HP-BK
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 05:29:54 +0000
Received: by wibhm2 with SMTP id hm2so2439241wib.0
 for <barebox@lists.infradead.org>; Mon, 10 Sep 2012 22:29:49 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Tue, 11 Sep 2012 07:30:43 +0200
Message-Id: <1347341445-2476-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/3] sandbox-unaligned: better usement of ifdef
To: barebox@lists.infradead.org

GCC versions below 4.6 don't set __BYTE_ORDER__
with __ORDER_LITTLE_ENDIAN__. So it's better to use
__BYTE_ORDER and __LITTLE_ENDIAN instead.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/sandbox/include/asm/unaligned.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/include/asm/unaligned.h b/arch/sandbox/include/asm/unaligned.h
index 07c1ae4..d02da6e 100644
--- a/arch/sandbox/include/asm/unaligned.h
+++ b/arch/sandbox/include/asm/unaligned.h
@@ -8,7 +8,7 @@
 #include <linux/unaligned/access_ok.h>
 #include <linux/unaligned/generic.h>
 
-#if __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
+#if __BYTE_ORDER == __LITTLE_ENDIAN
 #define get_unaligned __get_unaligned_le
 #define put_unaligned __put_unaligned_le
 #else
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
