Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kXp-0003Og-OK
 for barebox@lists.infradead.org; Sat, 07 Sep 2019 23:55:06 +0000
Received: by mail-pf1-x444.google.com with SMTP id b13so6832984pfo.8
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 16:55:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 16:54:55 -0700
Message-Id: <20190907235456.21535-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190907235456.21535-1-andrew.smirnov@gmail.com>
References: <20190907235456.21535-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/4] mtd: ubi: Compile fastmap.c with
 -Wno-address-of-packed-member
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

GCC9 for ARM produces the following warnings:

fastmap.c: In function 'ubi_attach_fastmap':
fastmap.c:700:31: warning: taking address of packed member of 'struct ubi_fm_scan_pool' may result in an unaligned pointer value [-Waddress-of-packed-member]
  700 |  ret = scan_pool(ubi, ai, fmpl->pebs, pool_size, &max_sqnum, &lfree);
      |                           ~~~~^~~~~~
fastmap.c:704:34: warning: taking address of packed member of 'struct ubi_fm_scan_pool' may result in an unaligned pointer value [-Waddress-of-packed-member]
  704 |  ret = scan_pool(ubi, ai, fmpl_wl->pebs, wl_pool_size, &max_sqnum, &lfree);
      |                           ~~~~~~~^~~~~~

the offending code seems OK and there doesn't seem to be a way to fix
this in code, so disable the warning for that file.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mtd/ubi/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/ubi/Makefile b/drivers/mtd/ubi/Makefile
index 33ac39026c..6ffb4ae2bc 100644
--- a/drivers/mtd/ubi/Makefile
+++ b/drivers/mtd/ubi/Makefile
@@ -2,4 +2,5 @@ obj-$(CONFIG_MTD_UBI) += ubi.o
 
 ubi-y += vtbl.o vmt.o upd.o build.o barebox.o kapi.o eba.o io.o wl.o attach.o
 ubi-y += misc.o debug.o
+CFLAGS_fastmap.o := -Wno-address-of-packed-member
 ubi-$(CONFIG_MTD_UBI_FASTMAP) += fastmap.o
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
