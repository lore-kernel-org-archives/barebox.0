Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22f.google.com ([2607:f8b0:400e:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJPze-0005NJ-6Q
 for barebox@lists.infradead.org; Thu, 17 May 2018 20:59:37 +0000
Received: by mail-pf0-x22f.google.com with SMTP id p14-v6so2658471pfh.9
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 13:59:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 May 2018 13:58:17 -0700
Message-Id: <20180517205837.32421-9-andrew.smirnov@gmail.com>
In-Reply-To: <20180517205837.32421-1-andrew.smirnov@gmail.com>
References: <20180517205837.32421-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 08/28] sizes.h: Sync with Linux 4.16
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Sync with Linux 4.16 to get SZ_4G.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/phytec-som-imx6/lowlevel.c | 1 +
 include/linux/sizes.h                      | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index f9d70c745..05f918f6c 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -38,6 +38,7 @@ static inline void setup_uart(void)
 	putc_ll('>');
 }
 
+#undef SZ_4G
 #define SZ_4G 0xEFFFFFF8
 
 BAREBOX_IMD_TAG_STRING(physom_mx6_memsize_SZ_128M, IMD_TYPE_PARAMETER, "memsize=128", 0);
diff --git a/include/linux/sizes.h b/include/linux/sizes.h
index ce3e8150c..fbde0bc7e 100644
--- a/include/linux/sizes.h
+++ b/include/linux/sizes.h
@@ -8,6 +8,8 @@
 #ifndef __LINUX_SIZES_H__
 #define __LINUX_SIZES_H__
 
+#include <linux/const.h>
+
 #define SZ_1				0x00000001
 #define SZ_2				0x00000002
 #define SZ_4				0x00000004
@@ -44,4 +46,6 @@
 #define SZ_1G				0x40000000
 #define SZ_2G				0x80000000
 
+#define SZ_4G				_AC(0x100000000, ULL)
+
 #endif /* __LINUX_SIZES_H__ */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
