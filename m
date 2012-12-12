Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tiort-0002GU-US
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 16:09:11 +0000
Received: from mail613.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 4FD27104F1B8
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2012 17:17:35 +0100 (CET)
Date: Wed, 12 Dec 2012 17:07:22 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121212160722.GA26483@game.jcrosoft.org>
References: <1355321456-6334-1-git-send-email-maxime.ripard@free-electrons.com>
 <1355321456-6334-3-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355321456-6334-3-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: Re: [PATCH 2/3] ARM: cfa10036: Retrieve the board variant from the
 AT24
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

On 15:10 Wed 12 Dec     , Maxime Ripard wrote:
> The AT24 found on the expansion boards store the variant of the board it
> is soldered onto.
> 
> That means that we are that way able to determine what expansion board
> is currently plugged in if any. If we can't communicate with the EEPROM,
> we just assume that only the CFA-10036 is there.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
> ---
>  arch/arm/boards/crystalfontz-cfa10036/Makefile   |    2 +-
>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |    4 +
>  arch/arm/boards/crystalfontz-cfa10036/hwdetect.c |   97 ++++++++++++++++++++++
>  arch/arm/boards/crystalfontz-cfa10036/hwdetect.h |   22 +++++
>  4 files changed, 124 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/hwdetect.h
> 
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/Makefile b/arch/arm/boards/crystalfontz-cfa10036/Makefile
> index 75f0020..7e8d5e2 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/Makefile
> +++ b/arch/arm/boards/crystalfontz-cfa10036/Makefile
> @@ -1 +1 @@
> -obj-y += cfa10036.o
> +obj-y += cfa10036.o hwdetect.o
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> index df0ead9..b59dbab 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> +++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> @@ -42,6 +42,8 @@
>  
>  #include <generated/mach-types.h>
>  
> +#include "hwdetect.h"
> +
>  /* setup the CPU card internal signals */
>  static const uint32_t cfa10036_pads[] = {
>  	/* duart */
> @@ -120,6 +122,8 @@ static int cfa10036_devices_init(void)
>  	i2c_register_board_info(0, cfa10036_i2c_devices, ARRAY_SIZE(cfa10036_i2c_devices));
>  	add_generic_device_res("i2c-gpio", 0, NULL, 0, &i2c_gpio_pdata);
>  
> +	cfa10036_detect_hw();
> +
>  	return 0;
>  }
>  device_initcall(cfa10036_devices_init);
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
> new file mode 100644
> index 0000000..535a75f
> --- /dev/null
> +++ b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
> @@ -0,0 +1,97 @@
> +/*
> + * Copyright (C) 2012 Free Electrons
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
> + *
> + */
> +
> +#include <common.h>
> +
> +#include <environment.h>
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <libbb.h>
> +
> +#include <asm/armlinux.h>
> +
> +enum board_type {
> +	BOARD_ID_CFA10036 = 0,
> +	BOARD_ID_CFA10037 = 1,
> +	BOARD_ID_CFA10049 = 2,
> +};
> +
> +struct cfa_eeprom_info {
> +	u8 board_id;
> +}__attribute__ ((packed));
> +
> +static int cfa10036_read_eeprom(const char *file, struct cfa_eeprom_info *info)
> +{
> +	int fd;
> +	int ret;
> +
> +	fd = open(file, O_RDONLY);
> +	if (fd < 0) {
> +		ret = fd;
> +		goto err;
> +	}
> +
> +	ret = read_full(fd, info, sizeof(*info));
> +	if (ret < 0)
> +		goto err_open;
> +
> +	if (ret < sizeof(*info)) {
> +		ret =  -EINVAL;
> +		goto err_open;
> +	}
> +
> +	ret = 0;
> +
> +err_open:
> +	close(fd);
> +err:
> +	if (ret)
> +		pr_err("can not read eeprom %s (%s)\n", file, strerror(ret));
> +	return ret;
> +}
> +
> +void cfa10036_detect_hw(void)
> +{
> +	enum board_type cfa_type;
> +	struct cfa_eeprom_info info;
> +	char *board_name;
> +	int ret;
> +
> +	ret = cfa10036_read_eeprom("/dev/eeprom0", &info);
> +	if (ret)
> +		cfa_type = BOARD_ID_CFA10036;
> +	else
> +		cfa_type = info.board_id;
> +
> +	switch (cfa_type) {
> +	case BOARD_ID_CFA10036:
> +		board_name = "cfa10036";
> +		break;
> +	case BOARD_ID_CFA10037:
> +		board_name = "cfa10037";
> +		break;
> +	case BOARD_ID_CFA10049:
> +		board_name = "cfa10049";
> +		break;
> +	default:
> +		pr_err("Board ID not supported\n");
create a device as done on sam9x5ek will be more nive


Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
