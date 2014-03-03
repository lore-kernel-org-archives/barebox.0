Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Message-ID: <5313FACC.8030202@atmel.com>
Date: Mon, 3 Mar 2014 11:45:16 +0800
From: Josh Wu <josh.wu@atmel.com>
MIME-Version: 1.0
References: <5310B108.8040800@celad.com>
In-Reply-To: <5310B108.8040800@celad.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: nand pmecc crash detected
To: Herve Codina <herve.codina@celad.com>
Cc: barebox@lists.infradead.org, linux-arm-kernel@lists.infradead.org

Dear Herve

On 2/28/2014 11:53 PM, Herve Codina wrote:
> Hi,
>
> I am using an sam5d35 and its pmecc nand ecc controller.
>
> In barebox, using similar atmel_nand.c the system crashes.
>
> The problem was a call to chip->ecc.hwctl from nand_write_subpage_hwecc
> (nand_base.c) when we write a sub page.
>
> chip->ecc.hwctl function is not set when we are using PMECC controller.
>
> As a workaround, i set NAND_NO_SUBPAGE_WRITE for PMECC controller in
> order to disable sub page access in nand_write_page.
>
> I think we can have the same problem in Linux. I do not performed
> subpage nand writes from Linux but i made the following patch according
> to my Barebox defect.

Thank you for catching this crash bug. The fix is fine for me. But I 
think it's better to send out the Linux kernel patch alone.

You can rebase your patch on the top of Linux-mtd git 
repo(git://git.infradead.org/l2-mtd.git) instead of your local Linux.
Then use 'git send-email' send to linux-mtd@lists.infradead.org and 
linux-arm-kernel@lists.infradead.org. I will ack your patch.

If the patch is merged in Linux-mtd, it should be easier port to barebox 
then.

>
> Here after are my patches (same modification) for 1st my local Barebox
> and 2nd my local Linux :
>
> ---8<-------------------
>  From 757e8dbf141619a55b7a5b1ca11780b2589eacc1 Mon Sep 17 00:00:00 2001
> From: Herve Codina <Herve.CODINA@celad.com>
> Date: Fri, 28 Feb 2014 08:39:08 +0100
> Subject: [PATCH 5/5] Disable Subpage nand write when using Atmel PMECC.
>
>
> Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
> ---
>   drivers/mtd/nand/atmel_nand.c |    1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index 2ff7427..cdbe685 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -837,6 +837,7 @@ static int __init
> atmel_pmecc_nand_init_params(struct device_d *dev,
>   		return err_no;
>   	}
>
> +	nand_chip->options |= NAND_NO_SUBPAGE_WRITE;
>   	nand_chip->ecc.read_page = atmel_nand_pmecc_read_page;
>   	nand_chip->ecc.write_page = atmel_nand_pmecc_write_page;
>

Best Regards,
Josh Wu

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
