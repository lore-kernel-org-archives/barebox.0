Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCoS6-0001Bo-Jm
 for barebox@lists.infradead.org; Tue, 24 Sep 2019 17:18:15 +0000
Received: by mail-io1-xd41.google.com with SMTP id c25so6293760iot.12
 for <barebox@lists.infradead.org>; Tue, 24 Sep 2019 10:18:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190924132918.28710-1-bst@pengutronix.de>
 <20190924132918.28710-4-bst@pengutronix.de>
In-Reply-To: <20190924132918.28710-4-bst@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 24 Sep 2019 10:18:01 -0700
Message-ID: <CAHQ1cqGrgqbTMGwRbNBVZZmPh+5gL3+qusKwNC6Q9iP9zoRweQ@mail.gmail.com>
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
Subject: Re: [PATCH v3 3/4] nvmem: ocotp: set unique id as machine-id hashable
To: Bastian Krause <bst@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Sep 24, 2019 at 6:29 AM Bastian Krause <bst@pengutronix.de> wrote:
>
> Pass the OCOTP unique id as hashable information to machine id
> generation.
>
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  drivers/nvmem/ocotp.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
> index 3f9f162860..d5e9d72a52 100644
> --- a/drivers/nvmem/ocotp.c
> +++ b/drivers/nvmem/ocotp.c
> @@ -29,6 +29,7 @@
>  #include <regmap.h>
>  #include <linux/clk.h>
>  #include <mach/ocotp.h>
> +#include <machine_id.h>
>  #include <linux/nvmem-provider.h>
>
>  /*
> @@ -77,6 +78,9 @@
>  #define MAC_OFFSET_1                   (0x24 * 4)
>  #define MAX_MAC_OFFSETS                        2
>  #define MAC_BYTES                      8
> +#define UNIQUE_ID_NUM                  2
> +/* 0 <= n < UNIQUE_ID_NUM */
> +#define UNIQUE_ID(n)                   (OCOTP_WORD(0x410 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))

There already OCOTP_UNIQUE_ID() in
arch/arm/mach-imx/include/mach/ocotp-fusemap.h might make sense to
re-use it.

>
>  enum imx_ocotp_format_mac_direction {
>         OCOTP_HW_TO_MAC,
> @@ -548,6 +552,23 @@ static int imx_ocotp_read(struct device_d *dev, const int offset, void *val,
>         return regmap_bulk_read(priv->map, offset, val, bytes);
>  }
>
> +static int imx_ocotp_set_unique_machine_id(void)

The return value of this function is not used anywhere in this patch.
Maybe it would make sense to convert it to void and simplify the rest
of the code?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
