Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZXLf-00020x-Rr
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 07:32:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jan 2018 08:32:14 +0100
Message-Id: <20180111073214.1353-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ubiformat: Lower message printing frequency
To: Barebox List <barebox@lists.infradead.org>

During scanning and formatting printing the messages on a serial line
has significant overhead up to the point where it takes longer to print
the messages than it takes to do the work. Lower the message printing
frequency to improve performance.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ubiformat.c | 18 ++++++++++++++----
 lib/libscan.c      |  9 +++++++--
 2 files changed, 21 insertions(+), 6 deletions(-)

diff --git a/common/ubiformat.c b/common/ubiformat.c
index aaa1f5d6bc..0f05f09c0f 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -190,6 +190,7 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 	int fd, img_ebs, eb, written_ebs = 0, ret = -1, eb_cnt;
 	off_t st_size;
 	char *buf = NULL;
+	uint64_t lastprint = 0;
 
 	eb_cnt = mtd_num_pebs(mtd);
 
@@ -229,8 +230,12 @@ static int flash_image(struct ubiformat_args *args, struct mtd_info *mtd,
 		long long ec;
 
 		if (!args->quiet && !args->verbose) {
-			printf("\rubiformat: flashing eraseblock %d -- %2u %% complete  ",
-			       eb, (eb + 1) * 100 / eb_cnt);
+			if (is_timeout(lastprint, 300 * MSECOND) ||
+			    eb == eb_cnt - 1) {
+				printf("\rubiformat: flashing eraseblock %d -- %2u %% complete  ",
+					eb, (eb + 1) * 100 / eb_cnt);
+				lastprint = get_time_ns();
+			}
 		}
 
 		if (si->ec[eb] == EB_BAD)
@@ -325,6 +330,7 @@ static int format(struct ubiformat_args *args, struct mtd_info *mtd,
 	struct ubi_vtbl_record *vtbl;
 	int eb1 = -1, eb2 = -1;
 	long long ec1 = -1, ec2 = -1;
+	uint64_t lastprint = 0;
 
 	eb_cnt = mtd_num_pebs(mtd);
 
@@ -340,8 +346,12 @@ static int format(struct ubiformat_args *args, struct mtd_info *mtd,
 		long long ec;
 
 		if (!args->quiet && !args->verbose) {
-			printf("\rubiformat: formatting eraseblock %d -- %2u %% complete  ",
-			       eb, (eb + 1 - start_eb) * 100 / (eb_cnt - start_eb));
+			if (is_timeout(lastprint, 300 * MSECOND) ||
+			    eb == eb_cnt - 1) {
+				printf("\rubiformat: formatting eraseblock %d -- %2u %% complete  ",
+					eb, (eb + 1 - start_eb) * 100 / (eb_cnt - start_eb));
+				lastprint = get_time_ns();
+			}
 		}
 
 		if (si->ec[eb] == EB_BAD)
diff --git a/lib/libscan.c b/lib/libscan.c
index 74a24b5011..c4139e69d1 100644
--- a/lib/libscan.c
+++ b/lib/libscan.c
@@ -39,6 +39,7 @@ int libscan_ubi_scan(struct mtd_info *mtd, struct ubi_scan_info **info,
 	int eb, v = (verbose == 2), pr = (verbose == 1), eb_cnt;
 	struct ubi_scan_info *si;
 	unsigned long long sum = 0;
+	uint64_t lastprint = 0;
 
 	eb_cnt = mtd_div_by_eb(mtd->size, mtd);
 
@@ -66,8 +67,12 @@ int libscan_ubi_scan(struct mtd_info *mtd, struct ubi_scan_info **info,
 		if (v)
 			normsg_cont("scanning eraseblock %d", eb);
 		if (pr) {
-			printf("\r" PROGRAM_NAME ": scanning eraseblock %d -- %2u %% complete  ",
-			       eb, (eb + 1) * 100 / eb_cnt);
+			if (is_timeout(lastprint, 300 * MSECOND) ||
+			    eb == eb_cnt - 1) {
+				printf("\r" PROGRAM_NAME ": scanning eraseblock %d -- %2u %% complete  ",
+					eb, (eb + 1) * 100 / eb_cnt);
+				lastprint = get_time_ns();
+			}
 		}
 
 		ret = mtd_peb_is_bad(mtd, eb);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
