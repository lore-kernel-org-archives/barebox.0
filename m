Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WKNe4-0005q0-Hh
 for barebox@lists.infradead.org; Mon, 03 Mar 2014 07:50:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Mar 2014 08:50:13 +0100
Message-Id: <1393833013-7783-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: nand: disable subpage reads
To: barebox@lists.infradead.org
Cc: "Hattink, Tjalling [FINT]" <T.Hattink@fugro.nl>

The default nand_read_subpage implementation returns -ENOSUPP, so we have
to make sure that barebox never uses this implementation. By setting the
NAND_SUBPAGE_READ flag to 0x0 we ensure NAND_HAS_SUBPAGE_READ() never returns
true and also give the compiler a chance to optimize away some unused code.

subpage reads are a rather exotic feature even in Linux. It is only used on
largepage NANDs with soft ecc. Even if we have this case it needs non page
aligned reads to actually profit from this feature.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Hattink, Tjalling [FINT] <T.Hattink@fugro.nl>
---

Hi Tjalling,
I had a closer look at the subpage read stuff and saw that this
is really an exotic feature that even if we could support it doesn't
help very much. So I decided to go back to a variant of your first
patch: Fix subpage reads by disabling them completely.


 include/linux/mtd/nand.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 74ea0b4..3c7509f 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -162,7 +162,8 @@ typedef enum {
 #define NAND_ROM		0x00000800
 
 /* Device supports subpage reads */
-#define NAND_SUBPAGE_READ	0x00001000
+/* Disabled in barebox for smaller binary sizes */
+#define NAND_SUBPAGE_READ	(__BAREBOX__ ? 0x0 : 0x00001000)
 
 /* Options valid for Samsung large page devices */
 #define NAND_SAMSUNG_LP_OPTIONS NAND_CACHEPRG
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
