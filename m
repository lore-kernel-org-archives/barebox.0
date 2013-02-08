Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qa0-f42.google.com ([209.85.216.42])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3r6R-0007Jr-QM
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 16:47:09 +0000
Received: by mail-qa0-f42.google.com with SMTP id cr7so401196qab.15
 for <barebox@lists.infradead.org>; Fri, 08 Feb 2013 08:47:06 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1360231566-9514-1-git-send-email-h.feurstein@gmail.com>
References: <1360231566-9514-1-git-send-email-h.feurstein@gmail.com>
Date: Fri, 8 Feb 2013 17:47:06 +0100
Message-ID: <CAFfN3gUJiZ=NNxNJaL4rchWfHwOS9gjM-O_EEPUCK0JToqx5=A@mail.gmail.com>
From: Hubert Feurstein <h.feurstein@gmail.com>
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
Subject: Re: [PATCH] net fec_imx: add support for i.MX6 1000Mbps mode
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

Any comments on this?

2013/2/7 Hubert Feurstein <h.feurstein@gmail.com>:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  drivers/net/fec_imx.c | 14 ++++++++++----
>  drivers/net/fec_imx.h |  1 +
>  2 files changed, 11 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 2378a19..7320f07 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -361,12 +361,18 @@ static int fec_init(struct eth_device *dev)
>  static void fec_update_linkspeed(struct eth_device *edev)
>  {
>         struct fec_priv *fec = (struct fec_priv *)edev->priv;
> +       int speed = edev->phydev->speed;
> +       u32 rcntl = readl(fec->regs + FEC_R_CNTRL) & ~FEC_R_CNTRL_RMII_10T;
> +       u32 ecntl = readl(fec->regs + FEC_ECNTRL) & ~FEC_ECNTRL_SPEED;
>
> -       if (edev->phydev->speed == SPEED_10) {
> -               u32 rcntl = readl(fec->regs + FEC_R_CNTRL);
> +       if (speed == SPEED_10)
>                 rcntl |= FEC_R_CNTRL_RMII_10T;
> -               writel(rcntl, fec->regs + FEC_R_CNTRL);
> -       }
> +
> +       if (speed == SPEED_1000)
> +               ecntl |= FEC_ECNTRL_SPEED;
> +
> +       writel(rcntl, fec->regs + FEC_R_CNTRL);
> +       writel(ecntl, fec->regs + FEC_ECNTRL);
>  }
>
>  /**
> diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
> index 1eb1eba..29aea85 100644
> --- a/drivers/net/fec_imx.h
> +++ b/drivers/net/fec_imx.h
> @@ -92,6 +92,7 @@
>
>  #define FEC_ECNTRL_RESET                0x00000001     /**< reset the FEC */
>  #define FEC_ECNTRL_ETHER_EN             0x00000002     /**< enable the FEC */
> +#define FEC_ECNTRL_SPEED                0x00000020     /**< i.MX6: enable 1000Mbps mode */
>
>  /**
>   * @brief Descriptor buffer alignment
> --
> 1.8.1
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
