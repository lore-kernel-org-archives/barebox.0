Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC3p-0005Pk-7W
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:54:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2010 15:53:51 +0100
Message-Id: <1289400839-5937-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
References: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/13] imx_nand: make some internally used functions
	overwriteable
To: barebox@lists.infradead.org

This patch prepares the driver to add v3 controller support
later. The v3 controller is basically the same controller as v1
and v2, but with a completely different register layout.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c |   66 ++++++++++++++++++++++++++-----------------
 1 files changed, 40 insertions(+), 26 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 4b74974..22251e4 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -153,6 +153,12 @@ struct imx_nand_host {
 	unsigned int		buf_start;
 	int			spare_len;
 
+	void			(*preset)(struct mtd_info *);
+	void			(*send_cmd)(struct imx_nand_host *, uint16_t);
+	void			(*send_addr)(struct imx_nand_host *, uint16_t);
+	void			(*send_page)(struct imx_nand_host *, unsigned int);
+	void			(*send_read_id)(struct imx_nand_host *);
+	uint16_t		(*get_dev_status)(struct imx_nand_host *);
 };
 
 /*
@@ -246,7 +252,7 @@ static void wait_op_done(struct imx_nand_host *host)
  *
  * @param       cmd     command for NAND Flash
  */
-static void send_cmd(struct imx_nand_host *host, u16 cmd)
+static void send_cmd_v1_v2(struct imx_nand_host *host, u16 cmd)
 {
 	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_cmd(host, 0x%x)\n", cmd);
 
@@ -275,7 +281,7 @@ static void send_cmd(struct imx_nand_host *host, u16 cmd)
  * @param       addr    address to be written to NFC.
  * @param       islast  True if this is the last address cycle for command
  */
-static void send_addr(struct imx_nand_host *host, u16 addr)
+static void send_addr_v1_v2(struct imx_nand_host *host, u16 addr)
 {
 	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_addr(host, 0x%x %d)\n", addr, islast);
 
@@ -293,7 +299,7 @@ static void send_addr(struct imx_nand_host *host, u16 addr)
  * @param	buf_id	      Specify Internal RAM Buffer number (0-3)
  * @param       spare_only    set true if only the spare area is transferred
  */
-static void send_page(struct imx_nand_host *host,
+static void send_page_v1_v2(struct imx_nand_host *host,
 		unsigned int ops)
 {
 	int bufs, i;
@@ -318,7 +324,7 @@ static void send_page(struct imx_nand_host *host,
  * This function requests the NANDFC to perform a read of the
  * NAND device ID.
  */
-static void send_read_id(struct imx_nand_host *host)
+static void send_read_id_v1_v2(struct imx_nand_host *host)
 {
 	struct nand_chip *this = &host->nand;
 
@@ -352,7 +358,7 @@ static void send_read_id(struct imx_nand_host *host)
  *
  * @return  device status
  */
-static u16 get_dev_status(struct imx_nand_host *host)
+static u16 get_dev_status_v1_v2(struct imx_nand_host *host)
 {
 	void *main_buf = host->main_area0;
 	u32 store;
@@ -448,7 +454,7 @@ static u_char imx_nand_read_byte(struct mtd_info *mtd)
 
 	/* Check for status request */
 	if (host->status_request)
-		return get_dev_status(host) & 0xFF;
+		return host->get_dev_status(host) & 0xFF;
 
 	ret = *(uint8_t *)(host->data_buf + host->buf_start);
 	host->buf_start++;
@@ -616,32 +622,32 @@ static void mxc_do_addr_cycle(struct mtd_info *mtd, int column, int page_addr)
 		 * we will used the saved column adress to index into
 		 * the full page.
 		 */
-		send_addr(host, 0);
+		host->send_addr(host, 0);
 		if (host->pagesize_2k)
 			/* another col addr cycle for 2k page */
-			send_addr(host, 0);
+			host->send_addr(host, 0);
 	}
 
 	/*
 	 * Write out page address, if necessary
 	 */
 	if (page_addr != -1) {
-		send_addr(host, (page_addr & 0xff));	/* paddr_0 - p_addr_7 */
+		host->send_addr(host, (page_addr & 0xff));	/* paddr_0 - p_addr_7 */
 
 		if (host->pagesize_2k) {
-			send_addr(host, (page_addr >> 8) & 0xFF);
+			host->send_addr(host, (page_addr >> 8) & 0xFF);
 			if (mtd->size >= 0x10000000) {
-				send_addr(host, (page_addr >> 16) & 0xff);
+				host->send_addr(host, (page_addr >> 16) & 0xff);
 			}
 		} else {
 			/* One more address cycle for higher density devices */
 			if (mtd->size >= 0x4000000) {
 				/* paddr_8 - paddr_15 */
-				send_addr(host, (page_addr >> 8) & 0xff);
-				send_addr(host, (page_addr >> 16) & 0xff);
+				host->send_addr(host, (page_addr >> 8) & 0xff);
+				host->send_addr(host, (page_addr >> 16) & 0xff);
 			} else
 				/* paddr_8 - paddr_15 */
-				send_addr(host, (page_addr >> 8) & 0xff);
+				host->send_addr(host, (page_addr >> 8) & 0xff);
 		}
 	}
 }
@@ -678,7 +684,7 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 	case NAND_CMD_STATUS:
 		host->buf_start = 0;
 		host->status_request = 1;
-		send_cmd(host, command);
+		host->send_cmd(host, command);
 		mxc_do_addr_cycle(mtd, column, page_addr);
 		break;
 
@@ -691,14 +697,14 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 
 		command = NAND_CMD_READ0;
 
-		send_cmd(host, command);
+		host->send_cmd(host, command);
 		mxc_do_addr_cycle(mtd, column, page_addr);
 
 		if (host->pagesize_2k)
 			/* send read confirm command */
-			send_cmd(host, NAND_CMD_READSTART);
+			host->send_cmd(host, NAND_CMD_READSTART);
 
-		send_page(host, NFC_OUTPUT);
+		host->send_page(host, NFC_OUTPUT);
 
 		memcpy32(host->data_buf, host->main_area0, mtd->writesize);
 		copy_spare(mtd, 1);
@@ -722,15 +728,15 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 
 			/* Set program pointer to spare region */
 			if (!host->pagesize_2k)
-				send_cmd(host, NAND_CMD_READOOB);
+				host->send_cmd(host, NAND_CMD_READOOB);
 		} else {
 			host->buf_start = column;
 
 			/* Set program pointer to page start */
 			if (!host->pagesize_2k)
-				send_cmd(host, NAND_CMD_READ0);
+				host->send_cmd(host, NAND_CMD_READ0);
 		}
-		send_cmd(host, command);
+		host->send_cmd(host, command);
 		mxc_do_addr_cycle(mtd, column, page_addr);
 
 		break;
@@ -738,22 +744,22 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 	case NAND_CMD_PAGEPROG:
 		memcpy32(host->main_area0, host->data_buf, mtd->writesize);
 		copy_spare(mtd, 0);
-		send_page(host, NFC_INPUT);
-		send_cmd(host, command);
+		host->send_page(host, NFC_INPUT);
+		host->send_cmd(host, command);
 		mxc_do_addr_cycle(mtd, column, page_addr);
 		break;
 
 	case NAND_CMD_READID:
-		send_cmd(host, command);
+		host->send_cmd(host, command);
 		mxc_do_addr_cycle(mtd, column, page_addr);
 		host->buf_start = 0;
-		send_read_id(host);
+		host->send_read_id(host);
 		break;
 
 	case NAND_CMD_ERASE1:
 	case NAND_CMD_ERASE2:
 	case NAND_CMD_RESET:
-		send_cmd(host, command);
+		host->send_cmd(host, command);
 		mxc_do_addr_cycle(mtd, column, page_addr);
 		break;
 	}
@@ -848,6 +854,14 @@ static int __init imxnd_probe(struct device_d *dev)
 
 	host->main_area0 = host->base;
 
+	if (nfc_is_v1() || nfc_is_v21()) {
+		host->send_cmd = send_cmd_v1_v2;
+		host->send_addr = send_addr_v1_v2;
+		host->send_page = send_page_v1_v2;
+		host->send_read_id = send_read_id_v1_v2;
+		host->get_dev_status = get_dev_status_v1_v2;
+	}
+
 	if (nfc_is_v21()) {
 		host->regs = host->base + 0x1e00;
 		host->spare0 = host->base + 0x1000;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
