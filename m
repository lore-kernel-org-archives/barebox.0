Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCqBq-0003o5-Is
 for barebox@lists.infradead.org; Tue, 24 Sep 2019 19:09:36 +0000
Received: by mail-io1-xd41.google.com with SMTP id v2so7142507iob.10
 for <barebox@lists.infradead.org>; Tue, 24 Sep 2019 12:09:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190923191117.954-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190923191117.954-1-andrew.smirnov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 24 Sep 2019 12:09:20 -0700
Message-ID: <CAHQ1cqHVB+Wp9ERrZqc2EqLyL9JG2NR46y6SBYu=DjA5vXZftg@mail.gmail.com>
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
Subject: Re: [PATCH v2] net: dsa: mv88e6xxx: Wait for EEPROM done after HW
 reset
To: Barebox List <barebox@lists.infradead.org>
Cc: Chris Healy <cphealy@gmail.com>

On Mon, Sep 23, 2019 at 12:11 PM Andrey Smirnov
<andrew.smirnov@gmail.com> wrote:
>
> Based on a unpublished patch from Andrew Lunn:
>
>     When the switch is hardware reset, it reads the contents of the
>     EEPROM. This can contain instructions for programming values into
>     registers and to perform waits between such programming. Reading
>     the EEPROM can take longer than the 100ms
>     mv88e6xxx_hardware_reset() waits after deasserting the reset
>     GPIO. So poll the EEPROM done bit to ensure it is complete.
>
>     Signed-off-by: Andrew Lunn <andrew@lunn.ch>
>
> orignal patch augmented to have necessary Global 1 plubming, ported to
> Barebox and slightly changed.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/net/phy/mv88e6xxx/Makefile  |  1 +
>  drivers/net/phy/mv88e6xxx/chip.c    | 34 +++++++++++++++++++
>  drivers/net/phy/mv88e6xxx/chip.h    |  1 +
>  drivers/net/phy/mv88e6xxx/global1.c | 51 +++++++++++++++++++++++++++++
>  drivers/net/phy/mv88e6xxx/global1.h | 37 +++++++++++++++++++++
>  5 files changed, 124 insertions(+)
>  create mode 100644 drivers/net/phy/mv88e6xxx/global1.c
>  create mode 100644 drivers/net/phy/mv88e6xxx/global1.h
>
> diff --git a/drivers/net/phy/mv88e6xxx/Makefile b/drivers/net/phy/mv88e6xxx/Makefile
> index e09ea0aa47..e1d4b1b9d7 100644
> --- a/drivers/net/phy/mv88e6xxx/Makefile
> +++ b/drivers/net/phy/mv88e6xxx/Makefile
> @@ -1,5 +1,6 @@
>  obj-y += mv88e6xxx.o
>
>  mv88e6xxx-objs := chip.o
> +mv88e6xxx-objs += global1.o
>  mv88e6xxx-objs += global2.o
>  mv88e6xxx-objs += port.o
> diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
> index 9688dbd1be..3af2b64eda 100644
> --- a/drivers/net/phy/mv88e6xxx/chip.c
> +++ b/drivers/net/phy/mv88e6xxx/chip.c
> @@ -11,6 +11,7 @@
>  #include <of_gpio.h>
>
>  #include "chip.h"
> +#include "global1.h"
>  #include "global2.h"
>  #include "port.h"
>
> @@ -342,6 +343,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6085",
>                 .num_ports = 10,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6085_ops,
>         },
> @@ -352,6 +354,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6095/88E6095F",
>                 .num_ports = 11,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6095_ops,
>         },
> @@ -362,6 +365,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6097/88E6097F",
>                 .num_ports = 11,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6097_ops,
>         },
> @@ -372,6 +376,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6123",
>                 .num_ports = 3,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6123_ops,
>         },
> @@ -382,6 +387,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6131",
>                 .num_ports = 8,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6131_ops,
>         },
> @@ -392,6 +398,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6341",
>                 .num_ports = 6,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6141_ops,
>         },
> @@ -402,6 +409,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6161",
>                 .num_ports = 6,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6161_ops,
>         },
> @@ -412,6 +420,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6165",
>                 .num_ports = 6,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6165_ops,
>         },
> @@ -422,6 +431,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6171",
>                 .num_ports = 7,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6171_ops,
>         },
> @@ -432,6 +442,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6172",
>                 .num_ports = 7,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6172_ops,
>         },
> @@ -442,6 +453,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6175",
>                 .num_ports = 7,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6175_ops,
>         },
> @@ -452,6 +464,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6176",
>                 .num_ports = 7,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6176_ops,
>         },
> @@ -462,6 +475,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6185",
>                 .num_ports = 10,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6185_ops,
>         },
> @@ -472,6 +486,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6190",
>                 .num_ports = 11,        /* 10 + Z80 */
>                 .port_base_addr = 0x0,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6190_ops,
>         },
> @@ -482,6 +497,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6190X",
>                 .num_ports = 11,        /* 10 + Z80 */
>                 .port_base_addr = 0x0,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6190x_ops,
>         },
> @@ -492,6 +508,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6191",
>                 .num_ports = 11,        /* 10 + Z80 */
>                 .port_base_addr = 0x0,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6191_ops,
>         },
> @@ -502,6 +519,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6240",
>                 .num_ports = 7,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6240_ops,
>         },
> @@ -512,6 +530,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6290",
>                 .num_ports = 11,        /* 10 + Z80 */
>                 .port_base_addr = 0x0,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6290_ops,
>         },
> @@ -522,6 +541,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6320",
>                 .num_ports = 7,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6320_ops,
>         },
> @@ -532,6 +552,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6321",
>                 .num_ports = 7,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6321_ops,
>         },
> @@ -542,6 +563,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6341",
>                 .num_ports = 6,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6341_ops,
>         },
> @@ -552,6 +574,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6350",
>                 .num_ports = 7,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6350_ops,
>         },
> @@ -562,6 +585,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6351",
>                 .num_ports = 7,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6351_ops,
>         },
> @@ -572,6 +596,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6352",
>                 .num_ports = 7,
>                 .port_base_addr = 0x10,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6352_ops,
>         },
> @@ -582,6 +607,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6390",
>                 .num_ports = 11,        /* 10 + Z80 */
>                 .port_base_addr = 0x0,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6390_ops,
>         },
> @@ -592,6 +618,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
>                 .name = "Marvell 88E6390X",
>                 .num_ports = 11,        /* 10 + Z80 */
>                 .port_base_addr = 0x0,
> +               .global1_addr = 0x1b,
>                 .global2_addr = 0x1c,
>                 .ops = &mv88e6390x_ops,
>         },
> @@ -741,6 +768,8 @@ static void mv88e6xxx_hardware_reset(struct mv88e6xxx_chip *chip)
>                 mv88e6xxx_hardware_reset_delay();
>                 gpio_set_active(chip->reset, 0);
>                 mv88e6xxx_hardware_reset_delay();
> +
> +               mv88e6xxx_g1_wait_eeprom_done(chip);
>         }
>  }
>
> @@ -836,6 +865,11 @@ static int mv88e6xxx_probe(struct device_d *dev)
>                  */
>                 mv88e6xxx_hardware_reset_delay();
>         }
> +       /*
> +        * Switch will not return valid data over MDIO until EEPROM is
> +        * loaded
> +        */
> +       mv88e6xxx_g1_wait_eeprom_done(chip);
>
>         err = mv88e6xxx_detect(chip);
>         if (err)
> diff --git a/drivers/net/phy/mv88e6xxx/chip.h b/drivers/net/phy/mv88e6xxx/chip.h
> index 7548358de0..57f74a39a0 100644
> --- a/drivers/net/phy/mv88e6xxx/chip.h
> +++ b/drivers/net/phy/mv88e6xxx/chip.h
> @@ -34,6 +34,7 @@ struct mv88e6xxx_info {
>         const char *name;
>         unsigned int num_ports;
>         unsigned int port_base_addr;
> +       unsigned int global1_addr;
>         unsigned int global2_addr;
>
>         const struct mv88e6xxx_ops *ops;
> diff --git a/drivers/net/phy/mv88e6xxx/global1.c b/drivers/net/phy/mv88e6xxx/global1.c
> new file mode 100644
> index 0000000000..218f877de3
> --- /dev/null
> +++ b/drivers/net/phy/mv88e6xxx/global1.c
> @@ -0,0 +1,51 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Marvell 88E6xxx Switch Global (1) Registers support
> + *
> + * Copyright (c) 2008 Marvell Semiconductor
> + *
> + * Copyright (c) 2016-2017 Savoir-faire Linux Inc.
> + *     Vivien Didelot <vivien.didelot@savoirfairelinux.com>
> + */
> +
> +#include <clock.h>
> +#include <linux/bitfield.h>
> +
> +#include "chip.h"
> +#include "global1.h"
> +
> +static int mv88e6xxx_g1_read(struct mv88e6xxx_chip *chip, int reg, u16 *val)
> +{
> +       int addr = chip->info->global1_addr;
> +
> +       return mv88e6xxx_read(chip, addr, reg, val);
> +}
> +
> +void mv88e6xxx_g1_wait_eeprom_done(struct mv88e6xxx_chip *chip)
> +{
> +       const uint64_t start   = get_time_ns();
> +       const uint64_t timeout = SECOND;
> +       u16 val;
> +       int err;
> +
> +       /* Wait up to 1 second for the switch to finish reading the
> +        * EEPROM.
> +        */
> +       while (!is_timeout(start, timeout)) {
> +               err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_STS, &val);
> +               if (err) {
> +                       dev_err(chip->dev, "Error reading status");

Ugh, didn't catch that newlines were missing. Will update in v3.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
