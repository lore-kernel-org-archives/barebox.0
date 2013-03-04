Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5h-0005rX-U5
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:35 +0100
Message-Id: <1362390820-10333-33-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 32/37] of: memory: Use of_write_number
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory.c |   25 ++++++-------------------
 1 file changed, 6 insertions(+), 19 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 1d2e3a3..61cca0d 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -164,19 +164,6 @@ int release_sdram_region(struct resource *res)
 
 #ifdef CONFIG_OFTREE
 
-/*
- * Write a 4 or 8 byte big endian cell
- */
-static void write_cell(u8 *addr, u64 val, int size)
-{
-	int shift = (size - 1) * 8;
-
-	while (size-- > 0) {
-		*addr++ = (val >> shift) & 0xff;
-		shift -= 8;
-	}
-}
-
 static int of_memory_fixup(struct device_node *node)
 {
 	struct memory_bank *bank;
@@ -193,14 +180,14 @@ static int of_memory_fixup(struct device_node *node)
 	if (err)
 		return err;
 
-	addr_cell_len = of_n_addr_cells(memnode) * 4;
-	size_cell_len = of_n_size_cells(memnode) * 4;
+	addr_cell_len = of_n_addr_cells(memnode);
+	size_cell_len = of_n_size_cells(memnode);
 
 	for_each_memory_bank(bank) {
-		write_cell(tmp + len, bank->start, addr_cell_len);
-		len += addr_cell_len;
-		write_cell(tmp + len, bank->size, size_cell_len);
-		len += size_cell_len;
+		of_write_number(tmp + len, bank->start, addr_cell_len);
+		len += addr_cell_len * 4;
+		of_write_number(tmp + len, bank->size, size_cell_len);
+		len += size_cell_len * 4;
 	}
 
 	err = of_set_property(memnode, "reg", tmp, len, 1);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
