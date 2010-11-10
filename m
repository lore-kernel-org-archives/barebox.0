Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC3p-0005Pn-7O
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:54:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2010 15:53:56 +0100
Message-Id: <1289400839-5937-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/13] imx nand: introduce overwritable check_int function
To: barebox@lists.infradead.org

needed for v3 support later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c |   29 ++++++++++++++++-------------
 1 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index b3191a7..9e2ba32 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -114,6 +114,7 @@ struct imx_nand_host {
 	void			(*send_page)(struct imx_nand_host *, unsigned int);
 	void			(*send_read_id)(struct imx_nand_host *);
 	uint16_t		(*get_dev_status)(struct imx_nand_host *);
+	int			(*check_int)(struct imx_nand_host *);
 };
 
 /*
@@ -175,16 +176,21 @@ static void memcpy32(void *trg, const void *src, int size)
 		*t++ = *s++;
 }
 
-/*
- * This function polls the NANDFC to wait for the basic operation to complete by
- * checking the INT bit of config2 register.
- *
- * @param       max_retries     number of retry attempts (separated by 1 us)
- * @param       param           parameter for debug
- */
+static int check_int_v1_v2(struct imx_nand_host *host)
+{
+	uint32_t tmp;
+
+	tmp = readw(host->regs + NFC_V1_V2_CONFIG2);
+	if (!(tmp & NFC_V1_V2_CONFIG2_INT))
+		return 0;
+
+	writew(tmp & ~NFC_V1_V2_CONFIG2_INT, host->regs + NFC_V1_V2_CONFIG2);
+
+	return 1;
+}
+
 static void wait_op_done(struct imx_nand_host *host)
 {
-	u32 tmp;
 	int i;
 
 	/* This is a timeout of roughly 15ms on my system. We
@@ -192,12 +198,8 @@ static void wait_op_done(struct imx_nand_host *host)
 	 * here as we might be here from nand booting.
 	 */
 	for (i = 0; i < 100000; i++) {
-		if (readw(host->regs + NFC_V1_V2_CONFIG2) & NFC_V1_V2_CONFIG2_INT) {
-			tmp = readw(host->regs + NFC_V1_V2_CONFIG2);
-			tmp  &= ~NFC_V1_V2_CONFIG2_INT;
-			writew(tmp, host->regs + NFC_V1_V2_CONFIG2);
+		if (host->check_int(host))
 			return;
-		}
 	}
 }
 
@@ -913,6 +915,7 @@ static int __init imxnd_probe(struct device_d *dev)
 		host->send_page = send_page_v1_v2;
 		host->send_read_id = send_read_id_v1_v2;
 		host->get_dev_status = get_dev_status_v1_v2;
+		host->check_int = check_int_v1_v2;
 	}
 
 	if (nfc_is_v21()) {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
