Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3dSL-00010b-I0
 for barebox@lists.infradead.org; Fri, 20 May 2016 05:58:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 May 2016 07:58:11 +0200
Message-Id: <1463723892-18753-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ubiformat: Ignore bitflip errors
To: Barebox List <barebox@lists.infradead.org>

Fixes: 1d88c66 ubiformat: Use mtd-peb API

bit flips are no error, when encountering them during scanning of a
device just ignore them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/libscan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/libscan.c b/lib/libscan.c
index bf298a7..13bd625 100644
--- a/lib/libscan.c
+++ b/lib/libscan.c
@@ -82,7 +82,7 @@ int libscan_ubi_scan(struct mtd_info *mtd, struct ubi_scan_info **info,
 		}
 
 		ret = mtd_peb_read(mtd, &ech, eb, 0, sizeof(struct ubi_ec_hdr));
-		if (ret < 0)
+		if (ret < 0 && !mtd_is_bitflip(ret))
 			goto out_ec;
 
 		if (be32_to_cpu(ech.magic) != UBI_EC_HDR_MAGIC) {
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
