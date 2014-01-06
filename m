Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([2a01:e0c:1:1599::13])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W05VG-0003O8-Hc
 for barebox@lists.infradead.org; Mon, 06 Jan 2014 08:25:43 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon,  6 Jan 2014 09:25:10 +0100
Message-Id: <1388996710-991-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] lib: libubigen math compile error fix
To: w.sang@pengutronix.de
Cc: barebox@lists.infradead.org

A compile error appears in libubigen on PXA architecture, because of a
division of an long long by a int :
/home/rj/mio_linux/barebox/lib/libubigen.c:105: undefined reference to
`__aeabi_ldivmod' arm-linux-gnueabi-ld: BFD (GNU Binutils for Debian)
2.20.1.20100303 assertion fail ../../bfd/elf32-arm.c:12497

Fix it by using div_u64 instead.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 lib/libubigen.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/libubigen.c b/lib/libubigen.c
index 4026f1d..9006329 100644
--- a/lib/libubigen.c
+++ b/lib/libubigen.c
@@ -29,6 +29,7 @@
 #include <errno.h>
 #include <crc.h>
 #include <fs.h>
+#include <linux/math64.h>
 
 #include <mtd/utils.h>
 #include <mtd/ubi-media.h>
@@ -102,7 +103,7 @@ int ubigen_add_volume(const struct ubigen_info *ui,
 	}
 
 	memset(vtbl_rec, 0, sizeof(struct ubi_vtbl_record));
-	tmp = (vi->bytes + ui->leb_size - 1) / ui->leb_size;
+	tmp = div_u64(vi->bytes + ui->leb_size - 1, ui->leb_size);
 	vtbl_rec->reserved_pebs = cpu_to_be32(tmp);
 	vtbl_rec->alignment = cpu_to_be32(vi->alignment);
 	vtbl_rec->vol_type = vi->type;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
