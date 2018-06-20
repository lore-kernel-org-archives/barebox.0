Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x241.google.com ([2607:f8b0:4001:c0b::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVhXS-0004O4-RA
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 18:09:09 +0000
Received: by mail-it0-x241.google.com with SMTP id l6-v6so942456iti.2
 for <barebox@lists.infradead.org>; Wed, 20 Jun 2018 11:08:52 -0700 (PDT)
MIME-Version: 1.0
References: <20180620095112.14944-1-l.stach@pengutronix.de>
In-Reply-To: <20180620095112.14944-1-l.stach@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 20 Jun 2018 11:08:39 -0700
Message-ID: <CAHQ1cqHVnWig-YaV6Wq+pF7jpgTz0oadecEe_edTdw06Yjuw0g@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: rdu2: program e1000 iNVM
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jun 20, 2018 at 2:51 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Check if the iNVM is already correctly written. If it isn't write
> the correct value in, so the device uses the correct PCI ID for the
> Linux driver.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/zii-imx6q-rdu2/board.c | 29 ++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
>
> diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
> index 265f97e2f464..984ca42a3772 100644
> --- a/arch/arm/boards/zii-imx6q-rdu2/board.c
> +++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
> @@ -15,6 +15,7 @@
>
>  #include <common.h>
>  #include <envfs.h>
> +#include <fs.h>
>  #include <gpio.h>
>  #include <init.h>
>  #include <mach/bbu.h>
> @@ -151,3 +152,31 @@ static int rdu2_devices_init(void)
>         return 0;
>  }
>  device_initcall(rdu2_devices_init);
> +
> +static int rdu2_i210_invm(void)
> +{
> +       int fd;
> +       u32 val;
> +
> +       if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
> +           !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
> +               return 0;
> +
> +       fd = open("/dev/e1000-invm0", O_RDWR);
> +       if (fd < 0) {
> +               pr_err("could not open e1000 iNVM device!\n");
> +               return fd;
> +       }
> +
> +       pread(fd, &val, sizeof(val), 0);

I know that pread() will succeed 99.9% of the time, but wrapping it in
WARN_ON (or any other form of error indication) might be helpful in
cases where it doesn't.

> +       if (val == 0x157b1a11) {
> +               pr_debug("i210 already programmed correctly\n");
> +               return 0;
> +       }
> +
> +       val = 0x157b1a11;

Speaking of magic, maybe this would be better as a named constant?

> +       pwrite(fd, &val, sizeof(val), 0);
> +

Maybe some error indication here as well?

> +       return 0;

I don't see the file being close here or in the early return above, is
this intentional?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
