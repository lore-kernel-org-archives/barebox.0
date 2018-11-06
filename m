Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gK8gi-00066T-KE
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 21:15:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id j26-v6so15176470wre.1
 for <barebox@lists.infradead.org>; Tue, 06 Nov 2018 13:14:54 -0800 (PST)
MIME-Version: 1.0
References: <20181106174254.21371-1-l.stach@pengutronix.de>
 <20181106174254.21371-2-l.stach@pengutronix.de>
In-Reply-To: <20181106174254.21371-2-l.stach@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 6 Nov 2018 13:14:41 -0800
Message-ID: <CAHQ1cqHXjSTqwBPv_NQoUJdg0dFdSUQtjoPau-TR5CxoMmFQNg@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] ARM: nxp-imx8mq-evk: add barebox and env partitions
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Nov 6, 2018 at 9:43 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> So we can have a persistent env and a bit safer barebox update. Also
> switch the environment and update default depending on the bootsource,
> as this is really helpful on an eval board where one might want to
> have totally different systems on eMMC and SD card.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mq-evk/board.c | 20 +++++++++++---
>  arch/arm/dts/imx8mq-evk.dts            | 37 ++++++++++++++++++++++++++
>  2 files changed, 54 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
> index 7918b5fb3e36..299d056e2777 100644
> --- a/arch/arm/boards/nxp-imx8mq-evk/board.c
> +++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
> @@ -17,11 +17,12 @@
>   *
>   */
>
> +#include <asm/memory.h>
> +#include <bootsource.h>
>  #include <common.h>
>  #include <init.h>
> -#include <asm/memory.h>
> -#include <linux/sizes.h>
>  #include <linux/phy.h>
> +#include <linux/sizes.h>
>  #include <mach/bbu.h>
>
>  #include <envfs.h>
> @@ -47,12 +48,25 @@ static int ar8031_phy_fixup(struct phy_device *phydev)
>
>  static int nxp_imx8mq_evk_init(void)
>  {
> +       int flags;
> +
>         if (!of_machine_is_compatible("fsl,imx8mq-evk"))
>                 return 0;
>
>         barebox_set_hostname("imx8mq-evk");
>
> -       imx8mq_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0", 0);
> +       flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
> +       imx8mq_bbu_internal_mmc_register_handler("eMMC",
> +                                                "/dev/mmc0.barebox", flags);
> +
> +       flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
> +       imx8mq_bbu_internal_mmc_register_handler("SD",
> +                                                "/dev/mmc1.barebox", flags);
> +
> +       if (bootsource_get_instance() == 0)
> +               of_device_enable_path("/chosen/environment-emmc");
> +       else
> +               of_device_enable_path("/chosen/environment-sd");

Optionally, you can probably simplify this to:

switch (bootsource_get_instance()) {
case 0:
    flags_emmc = BBU_HANDLER_FLAG_DEFAULT;
    flags_sd = 0;
    environment_path = "/chosen/envirnoment-emmc";
    break;
case 1:
    flags_emmc = 0;
    flags_sd = BBU_HANDLER_FLAGDEFAULT;
    environment_path = "/chosen/envirnoment-sd";
    break;
}

imx8mq_bbu_internal_mmc_register_handler("eMMC",
                                                "/dev/mmc0.barebox", flags_mmc);

imx8mq_bbu_internal_mmc_register_handler("SD",
                                               "/dev/mmc1.barebox", flags_sd);

of_device_enable_path(environment_path);

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
