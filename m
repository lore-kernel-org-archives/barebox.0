Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-x230.google.com ([2607:f8b0:400e:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UimKl-0008LZ-OL
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 13:59:04 +0000
Received: by mail-pb0-f48.google.com with SMTP id md4so3622726pbc.7
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2013 06:58:38 -0700 (PDT)
From: monaka@monami-ya.jp
Date: Sat,  1 Jun 2013 22:58:25 +0900
Message-Id: <1370095105-63468-1-git-send-email-monaka@monami-ya.com>
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
Subject: [PATCH] Enables to build bootm command on generic_x86.
To: barebox@lists.infradead.org
Cc: Masaki Muranaka <monaka@monami-ya.jp>

From: Masaki Muranaka <monaka@monami-ya.jp>

I'm not sure but I guess we don't need defined(__I386__) check.
I kept it for now.

Signed-off-by: Masaki Muranaka <monaka@monami-ya.com>
---
 include/image.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/image.h b/include/image.h
index 219419b..0c8a4b1 100644
--- a/include/image.h
+++ b/include/image.h
@@ -89,7 +89,7 @@
 #define IH_ARCH IH_ARCH_PPC
 #elif defined(__ARM__)
 #define IH_ARCH IH_ARCH_ARM
-#elif defined(__I386__) || defined(__x86_64__)
+#elif defined(__I386__) || defined(__x86_64__) || defined(__i386__)
 #define IH_ARCH IH_ARCH_I386
 #elif defined(__mips__)
 #define IH_ARCH IH_ARCH_MIPS
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
