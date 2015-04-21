Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22a.google.com ([2607:f8b0:400e:c02::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkhY6-0005R4-Rx
 for barebox@lists.infradead.org; Tue, 21 Apr 2015 23:25:51 +0000
Received: by pdbnk13 with SMTP id nk13so255957949pdb.0
 for <barebox@lists.infradead.org>; Tue, 21 Apr 2015 16:25:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 21 Apr 2015 16:25:02 -0700
Message-Id: <1429658702-24553-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3] firmware: socfpga: Fix a bug in fpgamgr_program_write_buf()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Fix a bug in fpgamgr_program_write_buf() where .rbf file whose length
is not a multiple of 4 would cause an integer overflow which would
result in infinite loop.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/firmware/socfpga.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index a5dc607..14a7a14 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -324,13 +324,27 @@ static int fpgamgr_program_write_buf(struct firmware_handler *fh, const void *bu
 	const uint32_t *buf32 = buf;
 
 	/* write to FPGA Manager AXI data */
-	while (size) {
+	while (size >= sizeof(uint32_t)) {
 		writel(*buf32, mgr->regs_data);
 		readl(mgr->regs + FPGAMGRREGS_MON_GPIO_EXT_PORTA_ADDRESS);
 		buf32++;
 		size -= sizeof(uint32_t);
 	}
 
+	if (size) {
+		const uint8_t *buf8 = (const uint8_t *)buf32;
+		uint32_t word = 0;
+
+		while (size--) {
+			word |= *buf8;
+			word <<= 8;
+			buf8++;
+		}
+
+		writel(word, mgr->regs_data);
+		readl(mgr->regs + FPGAMGRREGS_MON_GPIO_EXT_PORTA_ADDRESS);
+	}
+
 	return 0;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
