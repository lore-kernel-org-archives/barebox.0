Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmwyl-0004H8-IK
 for barebox@lists.infradead.org; Mon, 15 Jul 2019 09:09:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jul 2019 11:09:00 +0200
Message-Id: <20190715090900.19123-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ubiformat: improve generation of UBI image sequence
To: Barebox List <barebox@lists.infradead.org>

The UBI ec_hdr has an image_seq field. During attaching UBI expects
that its value is the same for all eraseblocks. The value should be
changed with every ubiformat and is used to detect half written images.

In barebox we use a pseudo random number generated with rand() for this
value. The ubiformat command calls srand(get_time_ns()) to initialize
the pseudo random numbber generator. This is done in the option parser,
so when ubiformat() is called directly (from fastboot for example) the
pseudo random number generator is not initialized and we get the same
values after every barebox restart.

This patch moves the pseudo random number generator initialization
to the place where the numbers are generated. Also use random32()
rather than rand() to generate 32bit values rather than 15bit values
(0 - RAND_MAX).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubiformat.c | 1 -
 common/ubiformat.c   | 6 ++++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index a88672d6c2..7537e6b567 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -58,7 +58,6 @@
 static int parse_opt(int argc, char *argv[], struct ubiformat_args *args,
 		     char **node)
 {
-	srand(get_time_ns());
 	memset(args, 0, sizeof(*args));
 
 	while (1) {
diff --git a/common/ubiformat.c b/common/ubiformat.c
index 1968bd98f8..fe02270b78 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -481,8 +481,10 @@ int ubiformat(struct mtd_info *mtd, struct ubiformat_args *args)
 	if (!args->ubi_ver)
 		args->ubi_ver = 1;
 
-	if (!args->image_seq)
-		args->image_seq = rand();
+	if (!args->image_seq) {
+		srand(get_time_ns());
+		args->image_seq = random32();
+	}
 
 	if (!is_power_of_2(mtd->writesize)) {
 		errmsg("min. I/O size is %d, but should be power of 2",
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
