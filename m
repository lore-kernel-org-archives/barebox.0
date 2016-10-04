Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x242.google.com ([2607:f8b0:4002:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1brQ06-0006Hy-6F
 for barebox@lists.infradead.org; Tue, 04 Oct 2016 13:43:22 +0000
Received: by mail-yw0-x242.google.com with SMTP id t193so1202240ywc.2
 for <barebox@lists.infradead.org>; Tue, 04 Oct 2016 06:43:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161004064923.txvdncnm57xwor5h@pengutronix.de>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
 <1475505657-898-11-git-send-email-andrew.smirnov@gmail.com>
 <20161004064923.txvdncnm57xwor5h@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 4 Oct 2016 06:43:01 -0700
Message-ID: <CAHQ1cqE3UduSbJ5u_y4Rpi4qUcFD3EYzqCDxv5iQckw3cAv9qQ@mail.gmail.com>
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
Subject: Re: [PATCH 10/20] i.MX: clk: Port imx_check_clocks() and
 imx_obtain_fixed_clock()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Oct 3, 2016 at 11:49 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Oct 03, 2016 at 07:40:47AM -0700, Andrey Smirnov wrote:
>> Port imx_check_clocks() and imx_obtain_fixed_clock() from Linux kernel.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/mach-imx/clk.h  |  4 ++++
>>  drivers/clk/Makefile     |  1 +
>>  drivers/clk/imx/Makefile |  1 +
>>  drivers/clk/imx/clk.c    | 49 ++++++++++++++++++++++++++++++++++++++++++++++++
>>  4 files changed, 55 insertions(+)
>>  create mode 100644 drivers/clk/imx/Makefile
>>  create mode 100644 drivers/clk/imx/clk.c
>>
>> diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
>> index 35e480f..f96e5d2 100644
>> --- a/arch/arm/mach-imx/clk.h
>> +++ b/arch/arm/mach-imx/clk.h
>> @@ -109,4 +109,8 @@ static inline struct clk *imx_clk_busy_mux(const char *name, void __iomem *reg,
>>  struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
>>               void __iomem *reg, u8 shift, u32 exclusive_mask);
>>
>> +void imx_check_clocks(struct clk *clks[], unsigned int count);
>> +struct clk * __init imx_obtain_fixed_clock(const char *name, unsigned long rate);
>> +
>> +
>>  #endif /* __IMX_CLK_H */
>> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
>> index 0fe8f1e..6dc82ea 100644
>> --- a/drivers/clk/Makefile
>> +++ b/drivers/clk/Makefile
>> @@ -9,3 +9,4 @@ obj-$(CONFIG_ARCH_ROCKCHIP)   += rockchip/
>>  obj-$(CONFIG_ARCH_TEGRA)     += tegra/
>>  obj-$(CONFIG_CLK_SOCFPGA)    += socfpga.o
>>  obj-$(CONFIG_MACH_MIPS_ATH79)        += clk-ar933x.o
>> +obj-$(CONFIG_COMMON_CLK)     += imx/
>> diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
>> new file mode 100644
>> index 0000000..0303c0b
>> --- /dev/null
>> +++ b/drivers/clk/imx/Makefile
>> @@ -0,0 +1 @@
>> +obj-y += clk.o
>> diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
>> new file mode 100644
>> index 0000000..0357048
>> --- /dev/null
>> +++ b/drivers/clk/imx/clk.c
>
> We currently have the i.MX clock support in arch/arm/mach-imx/. This may
> or may not be changed, but until it is, other i.MX clock support code
> should go to arch/arm/mach-imx/ aswell.

My preference would be to try to move the rest of i.MX clock code to
drivers/clk, to reconcile with how it is done in Linux kernel. Is that
OK with you or would you rather I move everything to
arch/arm/mach-imx?

>
>> @@ -0,0 +1,49 @@
>> +#include <common.h>
>> +#include <init.h>
>> +#include <driver.h>
>> +#include <linux/clk.h>
>> +#include <io.h>
>> +#include <of.h>
>> +#include <linux/clkdev.h>
>> +#include <linux/err.h>
>> +
>> +#include "../../../arch/arm/mach-imx/clk.h"
>
> #include <mach/clk.h>
>
>> +
>> +void __init imx_check_clocks(struct clk *clks[], unsigned int count)
>> +{
>> +     unsigned i;
>> +
>> +     for (i = 0; i < count; i++)
>> +             if (IS_ERR(clks[i]))
>> +                     pr_err("i.MX clk %u: register failed with %ld\n",
>> +                            i, PTR_ERR(clks[i]));
>> +}
>> +
>> +static struct clk * __init imx_obtain_fixed_clock_from_dt(const char *name)
>> +{
>> +     struct of_phandle_args phandle;
>> +     struct clk *clk = ERR_PTR(-ENODEV);
>> +     char *path;
>> +
>> +     path = basprintf("/clocks/%s", name);
>> +     if (!path)
>> +             return ERR_PTR(-ENOMEM);
>> +
>> +     phandle.np = of_find_node_by_path(path);
>> +     kfree(path);
>> +
>> +     if (phandle.np)
>> +             clk = of_clk_get_from_provider(&phandle);
>> +
>> +     return clk;
>> +}
>
> Do we need this anyway? We already have clk providers for fixed-clock.
> Hm, looking further, maybe a later patch explains.

OK, I'll remove it and add DT fixes if needed in v2.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
