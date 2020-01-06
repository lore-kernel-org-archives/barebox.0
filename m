Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWIP-0000HT-AK
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 17:36:08 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  6 Jan 2020 18:35:36 +0100
Message-Id: <20200106173540.20367-2-ahmad@a3f.at>
In-Reply-To: <20200106173540.20367-1-ahmad@a3f.at>
References: <20200106173540.20367-1-ahmad@a3f.at>
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
Subject: [RFC PATCH 1/5] pbl: add block I/O API
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de

We already have some PBL MCI implementations in barebox, but none
are used for chainloading a barebox from a file system.

In preparation for supporting first stage boot on SoCs where it's
customary for both the BootROM and first stage bootloader to load the
follow-up stage from FAT, add a very basic block I/O API that MCI
drivers can implement.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/pbl.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/pbl.h b/include/pbl.h
index 787bd8293ff1..7cc162dfd039 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -7,6 +7,8 @@
 #ifndef __PBL_H__
 #define __PBL_H__
 
+#include <linux/types.h>
+
 extern unsigned long free_mem_ptr;
 extern unsigned long free_mem_end_ptr;
 
@@ -14,6 +16,10 @@ void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len
 
 #ifdef __PBL__
 #define IN_PBL	1
+struct pbl_bio {
+	void *priv;
+	int (*read)(struct pbl_bio *bio, off_t block_off, void *buf, unsigned int nblocks);
+};
 #else
 #define IN_PBL	0
 #endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
