Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x244.google.com ([2607:f8b0:4003:c06::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cLvEJ-0000wd-8h
 for barebox@lists.infradead.org; Tue, 27 Dec 2016 17:08:06 +0000
Received: by mail-oi0-x244.google.com with SMTP id u15so48513900oie.3
 for <barebox@lists.infradead.org>; Tue, 27 Dec 2016 09:07:42 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1482356321-19996-1-git-send-email-c.hemp@phytec.de>
References: <1482356321-19996-1-git-send-email-c.hemp@phytec.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 27 Dec 2016 15:07:41 -0200
Message-ID: <CAOMZO5BoQ_2CFjWnJWsudE=B5dBsiYsf1i2OBrNerLaA_YBxug@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand_mxs: fix NAND error when change clk rate
To: Christian Hemp <c.hemp@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Christian,

On Wed, Dec 21, 2016 at 7:38 PM, Christian Hemp <c.hemp@phytec.de> wrote:
> The function "nand_enable_edo_mode" changed the NAND clk rate, without turning
> it off. In this case it is posible to get the following errors:
>     MXS NAND: Error sending command
>     MXS NAND: Error sending command
>     MXS NAND: DMA read error
>
> This can be fixed if the NAND clk is disabled before we change the clk
> rate.
>
> Tested with:
> nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
> MT29F4G08ABADAWP), 512MiB, page size: 2048, OOB size: 64
>
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
>  drivers/mtd/nand/nand_mxs.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index cba0bee..ce79bca 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -2047,7 +2047,9 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
>         nand->select_chip(mtd, -1);
>
>         /* [3] set the main IO clock, 100MHz for mode 5, 80MHz for mode 4. */
> +       clk_disable(info->clk);
>         clk_set_rate(info->clk, (mode == 5) ? 100000000 : 80000000);
> +       clk_enable(info->clk);

Yes, this is needed to fix erratum ERR007117.
(http://cache.nxp.com/assets/documents/data/en/errata/IMX6DQCE.pdf)

I will prepare the same fix for the kernel, thanks.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
