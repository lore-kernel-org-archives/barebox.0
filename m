Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PJ4WG-0005aS-Eu
	for barebox@lists.infradead.org; Thu, 18 Nov 2010 13:27:21 +0000
Received: by mail-fx0-f49.google.com with SMTP id 1so1559311fxm.36
	for <barebox@lists.infradead.org>; Thu, 18 Nov 2010 05:27:20 -0800 (PST)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 18 Nov 2010 14:29:29 +0100
Message-Id: <1290086971-5467-4-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1290086971-5467-1-git-send-email-marek.belisko@open-nandra.com>
References: <1290086971-5467-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 3/5] mtd: Fix sparse warning.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Patch fix following sparse warning:
drivers/mtd/nand/nand_base.c:123:16:
warning: incorrect type in argument 1 (different address spaces)
	expected void const volatile [noderef] <asn:2>*<noident>
	got void *IO_ADDR_R

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 include/linux/mtd/nand.h |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index cb35fd2..2befaf0 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -359,10 +359,11 @@ struct nand_buffers {
  *			(determine if errors are correctable)
  * @write_page:		[REPLACEABLE] High-level page write function
  */
-
+#define IOMEM(addr) ((void __force __iomem *)addr)
 struct nand_chip {
-	void		*IO_ADDR_R;
-	void		*IO_ADDR_W;
+	
+	void __iomem	*IO_ADDR_R;
+	void __iomem	*IO_ADDR_W;
 
 	uint8_t		(*read_byte)(struct mtd_info *mtd);
 	u16		(*read_word)(struct mtd_info *mtd);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
