Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vx0-f177.google.com ([209.85.220.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwRv2-0004SM-B2
	for barebox@lists.infradead.org; Thu, 25 Aug 2011 04:51:57 +0000
Received: by vxj2 with SMTP id 2so1659729vxj.36
	for <barebox@lists.infradead.org>; Wed, 24 Aug 2011 21:51:51 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 25 Aug 2011 04:51:51 +0000
Message-ID: <CAK8HZO+K_PN2ojFMdV_T3z_owSSs2Vr-JUK607Hcf8UGfqRMbg@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
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
Subject: barebox and hardware_ecc
To: barebox@lists.infradead.org

Hi

Does barebox use by default hardware ECC on nand flash ?  I am on an
at91sam9263 board.

A previous mail by Sascha says that barebox uses hardware ecc while
u-boot uses software ecc by default.

After writing a  ubifs using:-

"tftp rootfs.ubifs.nat /dev/ubi0.data " ,

I  am able boot using a kernel that has MTD_NAND_ATMEL_ECC_SOFT,

but not with a kernel that has  MTD_NAND_ATMEL_ECC_HW.

Am I missing something? Tried adding  an ecc_mode in the following,
but in vain:-

static struct memory_platform_data ram_pdata = {
@@ -96,7 +96,12 @@ void at91_add_device_nand(struct atmel_nand_data *data)

        if (!data)
                return;
+/* Nataraj*************/
+
+        data->ecc_base = (void __iomem *)(AT91_BASE_SYS + AT91_ECC0);
+        data->ecc_mode = NAND_ECC_HW;

+/* Nataraj ************/
        csa = at91_sys_read(AT91_MATRIX_EBI0CSA);
        at91_sys_write(AT91_MATRIX_EBI0CSA, csa |
AT91_MATRIX_EBI0_CS3A_SMC_SMARTMEDIA);


May I have some help?

regards

Nataraj

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
