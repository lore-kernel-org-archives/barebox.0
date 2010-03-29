Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP1-00088b-Cs
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:36:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:13 +0200
Message-Id: <1269855383-22716-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] nand_imx: use optimized memcpy
To: barebox@lists.infradead.org

The internal SRAM buffer of the i.MX NAND controller does not
allow byte accesses. We use the memcpy32 function to handle this.
If we have assembler optimized string functions we can do better
because they won't do byte accesses when source and target are word
aligned.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nand/nand_imx.c |   19 +++++++++++++++++--
 1 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
index afd5637..da9b2d5 100644
--- a/drivers/nand/nand_imx.c
+++ b/drivers/nand/nand_imx.c
@@ -200,12 +200,17 @@ static struct nand_ecclayout nandv2_hw_eccoob_largepage = {
 	}
 };
 
-static void __nand_boot_init memcpy32(void *trg, const void *src, int size)
+static void memcpy32(void *trg, const void *src, int size)
 {
 	int i;
 	unsigned int *t = trg;
 	unsigned const int *s = src;
 
+#ifdef CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS
+	if (!((unsigned long)trg & 0x3) && !((unsigned long)src & 0x3))
+		memcpy(trg, src, size);
+	else
+#endif
 	for (i = 0; i < (size >> 2); i++)
 		*t++ = *s++;
 }
@@ -1025,6 +1030,16 @@ static void __nand_boot_init nfc_addr(struct imx_nand_host *host, u32 offs)
 	}
 }
 
+static void __nand_boot_init __memcpy32(void *trg, const void *src, int size)
+{
+	int i;
+	unsigned int *t = trg;
+	unsigned const int *s = src;
+
+	for (i = 0; i < (size >> 2); i++)
+		*t++ = *s++;
+}
+
 void __nand_boot_init imx_nand_load_image(void *dest, int size)
 {
 	struct imx_nand_host host;
@@ -1135,7 +1150,7 @@ void __nand_boot_init imx_nand_load_image(void *dest, int size)
 					continue;
 			}
 
-			memcpy32(dest, host.base, pagesize);
+			__memcpy32(dest, host.base, pagesize);
 			dest += pagesize;
 			size -= pagesize;
 
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
