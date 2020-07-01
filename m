Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVEA-00055h-0w
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:24:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 07:23:27 +0200
Message-Id: <20200701052340.9462-16-a.fatoum@pengutronix.de>
In-Reply-To: <20200701052340.9462-1-a.fatoum@pengutronix.de>
References: <20200701052340.9462-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 15/28] pbl: add block I/O API
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We already have some PBL MCI implementations in barebox, but none
are used for chainloading a barebox from a file system.

There are some SoCs that would benefit from this however:
At least the Zynq, AT91, SoCFPGA and TI SoCs.

In preparation for supporting first stage boot on these where it's
customary for both the BootROM and first stage bootloader to load the
follow-up stage from FAT, add a very basic block I/O API that MCI
drivers can implement.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/pbl.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/pbl.h b/include/pbl.h
index f84ed3b7bfcf..83a058075dc6 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -6,6 +6,8 @@
 #ifndef __PBL_H__
 #define __PBL_H__
 
+#include <linux/types.h>
+
 extern unsigned long free_mem_ptr;
 extern unsigned long free_mem_end_ptr;
 
@@ -13,6 +15,18 @@ void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len
 
 #ifdef __PBL__
 #define IN_PBL	1
+
+struct pbl_bio {
+	void *priv;
+	int (*read)(struct pbl_bio *bio, off_t block_off, void *buf, unsigned nblocks);
+};
+
+static inline int pbl_bio_read(struct pbl_bio *bio, off_t block_off,
+			       void *buf, unsigned nblocks)
+{
+	return bio->read(bio, block_off, buf, nblocks);
+}
+
 #else
 #define IN_PBL	0
 #endif
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
