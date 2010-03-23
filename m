Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NtyrP-0005vO-JD
	for barebox@lists.infradead.org; Tue, 23 Mar 2010 07:49:12 +0000
Date: Tue, 23 Mar 2010 08:48:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100323074840.GL2241@pengutronix.de>
References: <ba216b431003220757q3cc1dc6s267c6e760bb7f313@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba216b431003220757q3cc1dc6s267c6e760bb7f313@mail.gmail.com>
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
Subject: Re: [PATCH] MX21: Fix nand booting
To: Ivo Clarysse <ivo.clarysse@gmail.com>
Cc: barebox@lists.infradead.org

Hi Ivo,

On Mon, Mar 22, 2010 at 03:57:47PM +0100, Ivo Clarysse wrote:
> Fixes booting from NAND on i.MX21-based systems.
> 
> Signed-off-by: Ivo Clarysse <ivo.clarysse@gmail.com>
> ---
> diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
> index afd5637..2eac6fe 100644
> --- a/drivers/nand/nand_imx.c
> +++ b/drivers/nand/nand_imx.c
> @@ -1085,12 +1085,18 @@ void __nand_boot_init imx_nand_load_image(void
> *dest, int size)
>  	writew(0x4, host.regs + NFC_WRPROT);
> 
>  	tmp = readw(host.regs + NFC_CONFIG1);
> +#ifdef CONFIG_ARCH_IMX21
> +	tmp |= NFC_ECC_EN;
> +	tmp &= ~NFC_INT_MSK;
> +	writew(tmp, host.regs + NFC_CONFIG1);
> +#else

I wonder that this patch helps you. Does your NAND work properly after
starting? I ask because in imxnd_probe() NFC_INT_MSK gets set again.

I tested on i.MX27 that clearing this bit doesn't harm, so I think we do
not need the ifdef but can clear it on every SoC, like this:

diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
index afd5637..5c910d8 100644
--- a/drivers/nand/nand_imx.c
+++ b/drivers/nand/nand_imx.c
@@ -1085,11 +1085,11 @@ void __nand_boot_init imx_nand_load_image(void *dest, int size)
 	writew(0x4, host.regs + NFC_WRPROT);
 
 	tmp = readw(host.regs + NFC_CONFIG1);
-	tmp |= NFC_ECC_EN | NFC_INT_MSK;
+	tmp |= NFC_ECC_EN;
 	if (nfc_is_v21())
 		/* currently no support for 218 byte OOB with stronger ECC */
 		tmp |= NFC_ECC_MODE;
-	tmp &= ~NFC_SP_EN;
+	tmp &= ~(NFC_SP_EN | NFC_INT_MSK);
 	writew(tmp, host.regs + NFC_CONFIG1);
 
 	if (nfc_is_v21()) {
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
