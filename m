Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grXz9-0003OE-9G
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 00:56:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id z3so9692922wrv.3
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 16:56:07 -0800 (PST)
MIME-Version: 1.0
References: <20190206074921.11115-1-s.hauer@pengutronix.de>
 <20190206074921.11115-7-s.hauer@pengutronix.de>
In-Reply-To: <20190206074921.11115-7-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 6 Feb 2019 16:55:54 -0800
Message-ID: <CAHQ1cqGPim3-3nayOZ4H_6aBSr71b0kNhdG16QwNZmcLEseidQ@mail.gmail.com>
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
Subject: Re: [PATCH 6/8] mci: imx-esdhc: implement static inline io wrappers
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Feb 5, 2019 at 11:49 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Layerscape will need accesses in big endian mode. To make this
> possible create static inline wrappers for the io accessors.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/imx-esdhc.c | 149 ++++++++++++++++++++++++----------------
>  drivers/mci/imx-esdhc.h |   6 --
>  2 files changed, 91 insertions(+), 64 deletions(-)
>
> diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
> index 9ccc34fbd5..b7d5c01fb5 100644
> --- a/drivers/mci/imx-esdhc.c
> +++ b/drivers/mci/imx-esdhc.c
> @@ -106,6 +106,47 @@ static inline int esdhc_is_usdhc(struct fsl_esdhc_host *data)
>         return !!(data->socdata->flags & ESDHC_FLAG_USDHC);
>  }
>
> +static inline u32 esdhc_read32(struct fsl_esdhc_host *host, unsigned int reg)
> +{
> +       return readl(host->regs + reg);
> +}
> +
> +static inline void esdhc_write32(struct fsl_esdhc_host *host, unsigned int reg,
> +                                u32 val)
> +{
> +       writel(val, host->regs + reg);
> +}
> +
> +static inline void esdhc_clrsetbits32(struct fsl_esdhc_host *host, unsigned int reg,
> +                                     u32 clear, u32 set)
> +{
> +       u32 val;
> +
> +       val = esdhc_read32(host, reg);
> +       val &= ~clear;
> +       val |= set;
> +       esdhc_write32(host, reg, val);
> +}
> +
> +static inline void esdhc_clrbits32(struct fsl_esdhc_host *host, unsigned int reg,
> +                                     u32 clear)
> +{
> +       u32 val;
> +
> +       val = esdhc_read32(host, reg);
> +       val &= ~clear;
> +       esdhc_write32(host, reg, val);

You can simplify this to:

esdhc_clrsetbits32(host, reg, clear, 0);

> +}
> +
> +static inline void esdhc_setbits32(struct fsl_esdhc_host *host, unsigned int reg,
> +                                  u32 set)
> +{
> +       u32 val;
> +
> +       val = esdhc_read32(host, reg);
> +       val |= set;
> +       esdhc_write32(host, reg, val);

and this to:

esdhc_clrsetbits32(host, reg, 0, set);


Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
