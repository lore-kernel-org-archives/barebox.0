Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22f.google.com ([2607:f8b0:400e:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkAxx-000279-8H
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 12:38:21 +0000
Received: by paboj16 with SMTP id oj16so205715773pab.0
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 05:37:59 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 Apr 2015 05:37:43 -0700
Message-Id: <1429533463-5625-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 1/2] firmware: socfpga: Fix a bug in
 fpgamgr_program_write_buf()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Fix a bug in fpgamgr_program_write_buf() where .rbf file whose length
is not a multiple of 4 would cause an integer overflow which would
result in infinite loop.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/firmware/socfpga.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index a5dc607..71f260f 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -321,14 +321,28 @@ static int fpgamgr_program_write_buf(struct firmware_handler *fh, const void *bu
 		size_t size)
 {
 	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
-	const uint32_t *buf32 = buf;
+	const uint8_t *buffer = buf;
+	uint32_t word;
+	size_t chunk_size;
+	size_t offset = 0;
 
 	/* write to FPGA Manager AXI data */
-	while (size) {
-		writel(*buf32, mgr->regs_data);
-		readl(mgr->regs + FPGAMGRREGS_MON_GPIO_EXT_PORTA_ADDRESS);
-		buf32++;
+	while (size >= sizeof(uint32_t)) {
 		size -= sizeof(uint32_t);
+
+		word = *(uint32_t *)(buffer + offset);
+		offset += sizeof(uint32_t);
+
+		writel(word, mgr->regs_data);
+		readl(mgr->regs + FPGAMGRREGS_MON_GPIO_EXT_PORTA_ADDRESS);
+	}
+	
+	if (size) {
+		word = 0;
+		while (chunk_size--) {
+			word |= buffer[offset++];
+			word <<= 8;
+		}
 	}
 
 	return 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
