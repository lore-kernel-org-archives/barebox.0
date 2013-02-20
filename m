Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U87DN-0005s2-JC
 for barebox@lists.infradead.org; Wed, 20 Feb 2013 10:47:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Feb 2013 11:47:50 +0100
Message-Id: <1361357270-8700-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361357270-8700-1-git-send-email-s.hauer@pengutronix.de>
References: <1361357270-8700-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] libubi: Use global mtd_all_ff function
To: barebox@lists.infradead.org

We introduced a global function for this, so use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/libscan.c |   13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/lib/libscan.c b/lib/libscan.c
index af55269..202266b 100644
--- a/lib/libscan.c
+++ b/lib/libscan.c
@@ -33,17 +33,6 @@
 #include <mtd/ubi-media.h>
 #include <asm-generic/div64.h>
 
-static int all_ff(const void *buf, int len)
-{
-	int i;
-	const uint8_t *p = buf;
-
-	for (i = 0; i < len; i++)
-		if (p[i] != 0xFF)
-			return 0;
-	return 1;
-}
-
 int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **info,
 	     int verbose)
 {
@@ -95,7 +84,7 @@ int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **in
 			goto out_ec;
 
 		if (be32_to_cpu(ech.magic) != UBI_EC_HDR_MAGIC) {
-			if (all_ff(&ech, sizeof(struct ubi_ec_hdr))) {
+			if (mtd_all_ff(&ech, sizeof(struct ubi_ec_hdr))) {
 				si->empty_cnt += 1;
 				si->ec[eb] = EB_EMPTY;
 				if (v)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
