Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Ntj4f-0005Ag-Vk
	for barebox@lists.infradead.org; Mon, 22 Mar 2010 14:57:54 +0000
Received: by wwd20 with SMTP id 20so1819707wwd.36
	for <barebox@lists.infradead.org>; Mon, 22 Mar 2010 07:57:48 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 22 Mar 2010 15:57:47 +0100
Message-ID: <ba216b431003220757q3cc1dc6s267c6e760bb7f313@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] MX21: Fix nand booting
To: barebox@lists.infradead.org

Fixes booting from NAND on i.MX21-based systems.

Signed-off-by: Ivo Clarysse <ivo.clarysse@gmail.com>
---
diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
index afd5637..2eac6fe 100644
--- a/drivers/nand/nand_imx.c
+++ b/drivers/nand/nand_imx.c
@@ -1085,12 +1085,18 @@ void __nand_boot_init imx_nand_load_image(void
*dest, int size)
 	writew(0x4, host.regs + NFC_WRPROT);

 	tmp = readw(host.regs + NFC_CONFIG1);
+#ifdef CONFIG_ARCH_IMX21
+	tmp |= NFC_ECC_EN;
+	tmp &= ~NFC_INT_MSK;
+	writew(tmp, host.regs + NFC_CONFIG1);
+#else
 	tmp |= NFC_ECC_EN | NFC_INT_MSK;
 	if (nfc_is_v21())
 		/* currently no support for 218 byte OOB with stronger ECC */
 		tmp |= NFC_ECC_MODE;
 	tmp &= ~NFC_SP_EN;
 	writew(tmp, host.regs + NFC_CONFIG1);
+#endif /* CONFIG_ARCH_IMX21 */

 	if (nfc_is_v21()) {
 		if (host.pagesize_2k) {

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
