Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TLXuE-00074K-Ln
 for barebox@lists.infradead.org; Tue, 09 Oct 2012 11:23:24 +0000
Received: from mail428.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 56AAA104F3D7
 for <barebox@lists.infradead.org>; Tue,  9 Oct 2012 13:29:43 +0200 (CEST)
Date: Tue, 9 Oct 2012 13:20:57 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121009112057.GZ26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349734061-32339-5-git-send-email-carlo.caione@gmail.com>
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
Subject: Re: [PATCH 4/5] Add support for BCM2835 clocksource
References: <1349734061-32339-1-git-send-email-carlo.caione@gmail.com>
 <1349734061-32339-5-git-send-email-carlo.caione@gmail.com>
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On 00:07 Tue 09 Oct     , Carlo Caione wrote:
> Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
> ---
>  drivers/clocksource/Kconfig   |  4 +++
>  drivers/clocksource/Makefile  |  1 +
>  drivers/clocksource/bcm2835.c | 83 +++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 88 insertions(+)
>  create mode 100644 drivers/clocksource/bcm2835.c
> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 9d6d293..590d06d 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -2,6 +2,10 @@ config ARM_SMP_TWD
>  	bool
>  	depends on ARM && CPU_V7
>  
> +config CLOCKSOURCE_BCM2835
> +	bool
> +	depends on ARM
> +
>  config CLOCKSOURCE_NOMADIK
>  	bool
>  	depends on ARM
> diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
> index bef465c..92d7c13 100644
> --- a/drivers/clocksource/Makefile
> +++ b/drivers/clocksource/Makefile
> @@ -1,2 +1,3 @@
>  obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
> +obj-$(CONFIG_CLOCKSOURCE_BCM2835) += bcm2835.o
>  obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
> diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
> new file mode 100644
> index 0000000..c1aee62
> --- /dev/null
> +++ b/drivers/clocksource/bcm2835.c
> @@ -0,0 +1,83 @@
> +/*
> + * Author: Carlo Caione <carlo@carlocaione.org>
> + *
> + * Based on clocksource for nomadik
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + */
> +
> +
> +#include <common.h>
> +#include <clock.h>
> +#include <io.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <errno.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +
> +static __iomem void *stc_base;
> +
> +static uint64_t stc_read_cycles(void)
> +{
> +	return readl(stc_base + 0x04);
> +}
> +
> +static struct clocksource bcm2835_stc = {
> +	.read = stc_read_cycles,
> +	.mask = CLOCKSOURCE_MASK(32),
> +};
> +
> +static int bcm2835_cs_probe(struct device_d *dev)
> +{
> +	static struct clk *stc_clk;
> +	u32 rate;
> +	int ret;
> +
> +	stc_clk = clk_get(dev, NULL);
> +	if (IS_ERR(stc_clk)) {
> +		ret = PTR_ERR(stc_clk);
> +		dev_err(dev, "clock not found: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = clk_enable(stc_clk);
> +	if (ret < 0) {
if (ret)
clk_enable return 0 on success
> +		dev_err(dev, "clock failed to enable: %d\n", ret);
> +		clk_put(stc_clk);
> +		return ret;
> +	}
> +
> +	rate = clk_get_rate(stc_clk);
> +	stc_base = dev_request_mem_region(dev, 0);
> +
> +	clocks_calc_mult_shift(&bcm2835_stc.mult, &bcm2835_stc.shift, rate, NSEC_PER_SEC, 60);
> +	init_clock(&bcm2835_stc);
> +
> +	return 0;
> +}
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
