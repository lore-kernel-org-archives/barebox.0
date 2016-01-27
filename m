Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOOfy-0001xj-OD
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 11:54:20 +0000
Received: by mail-wm0-x242.google.com with SMTP id p63so2888033wmp.1
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 03:53:58 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 12:53:05 +0100
Message-Id: <1453895589-20941-4-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1453895589-20941-1-git-send-email-yegorslists@googlemail.com>
References: <1453895589-20941-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 4/8] fs: move pgoff_t definition to include/linux/types.h
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/ubifs/ubifs.h      | 2 --
 include/linux/types.h | 5 +++++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 53c0813..9a2d2f5 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -58,8 +58,6 @@ extern unsigned int ubifs_msg_flags;
 extern unsigned int ubifs_chk_flags;
 extern unsigned int ubifs_tst_flags;
 
-#define pgoff_t		unsigned long
-
 /*
  * We "simulate" the Linux page struct much simpler here
  */
diff --git a/include/linux/types.h b/include/linux/types.h
index ce1a0ec..9f8eb67 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -157,6 +157,11 @@ typedef __u32 __bitwise __wsum;
 #define __aligned_be64 __be64 __attribute__((aligned(8)))
 #define __aligned_le64 __le64 __attribute__((aligned(8)))
 
+/*
+ * The type of an index into the pagecache.
+ */
+#define pgoff_t unsigned long
+
 /* A dma_addr_t can hold any valid DMA or bus address for the platform */
 #ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
 typedef u64 dma_addr_t;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
