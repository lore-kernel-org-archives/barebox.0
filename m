Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsD6d-0001xq-5g
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 20:18:24 +0000
Received: by mail-it0-x243.google.com with SMTP id s7-v6so47895itb.4
 for <barebox@lists.infradead.org>; Tue, 21 Aug 2018 13:18:12 -0700 (PDT)
MIME-Version: 1.0
References: <20180821152001.5747-1-aleksander@aleksander.es>
 <20180821152001.5747-4-aleksander@aleksander.es>
In-Reply-To: <20180821152001.5747-4-aleksander@aleksander.es>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 21 Aug 2018 13:18:00 -0700
Message-ID: <CAHQ1cqHQrZrZ-iZGbsbZvAg47SQB4=X-Enm8sFy3Nh8306kPAw@mail.gmail.com>
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
Subject: Re: [PATCH 3/4] ratp: implement support for GPIO commands
To: Aleksander Morgado <aleksander@aleksander.es>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Aug 21, 2018 at 8:20 AM Aleksander Morgado
<aleksander@aleksander.es> wrote:
>
> Introduce three new RATP commands that allow getting and setting GPIO
> values as well as configuring the direction of the GPIO pins.
>

I avoided repeating nits I already mentioned in i2c patch, some
additional nits are below

> Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
> ---
>  common/ratp/Makefile |   1 +
>  common/ratp/gpio.c   | 148 +++++++++++++++++++++++++++++++++++++++++++
>  include/ratp_bb.h    |   6 ++
>  3 files changed, 155 insertions(+)
>  create mode 100644 common/ratp/gpio.c
>
> diff --git a/common/ratp/Makefile b/common/ratp/Makefile
> index 0234b55c1..3b5e495ab 100644
> --- a/common/ratp/Makefile
> +++ b/common/ratp/Makefile
> @@ -5,3 +5,4 @@ obj-y += md.o
>  obj-y += mw.o
>  obj-y += reset.o
>  obj-y += i2c.o
> +obj-y += gpio.o
> diff --git a/common/ratp/gpio.c b/common/ratp/gpio.c
> new file mode 100644
> index 000000000..d247cd614
> --- /dev/null
> +++ b/common/ratp/gpio.c
> @@ -0,0 +1,148 @@
> +/*
> + * Copyright (c) 2018 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <ratp_bb.h>
> +#include <malloc.h>
> +#include <environment.h>
> +#include <gpio.h>
> +#include <errno.h>
> +
> +struct ratp_bb_gpio_get_value_request {
> +       struct ratp_bb header;
> +       uint32_t       gpio;
> +} __attribute__((packed));
> +
> +struct ratp_bb_gpio_get_value_response {
> +       struct ratp_bb header;
> +       uint8_t        value;
> +} __attribute__((packed));
> +
> +static int ratp_cmd_gpio_get_value(const struct ratp_bb *req, int req_len,
> +                                  struct ratp_bb **rsp, int *rsp_len)
> +{
> +       struct ratp_bb_gpio_get_value_request *gpio_req = (struct ratp_bb_gpio_get_value_request *)req;
> +       struct ratp_bb_gpio_get_value_response *gpio_rsp;
> +       int gpio_rsp_len;
> +       uint32_t gpio;
> +       uint8_t value;
> +
> +       if (req_len < sizeof (*gpio_req)) {
> +               printf ("ratp gpio get value request ignored: size mismatch (%d < %zu)\n", req_len, sizeof (*gpio_req));
> +               return 2;

Hmm, i2c code was using negative error numbers as returns, but this
just returns 2. Is this correct? If so, the it might be worth putting
a comment explaining it here, maybe?

> +       }
> +
> +       gpio = be32_to_cpu (gpio_req->gpio);
> +       value = !!gpio_get_value(gpio);

Is this value variable really needed? It doesn't seem to be use
anywhere else but in the assignment below.

> +
> +       gpio_rsp_len = sizeof(struct ratp_bb_gpio_get_value_response);
> +       gpio_rsp = xzalloc(gpio_rsp_len);
> +       gpio_rsp->header.type = cpu_to_be16(BB_RATP_TYPE_GPIO_GET_VALUE_RETURN);
> +       gpio_rsp->value = value;
> +
> +       *rsp_len = gpio_rsp_len;
> +       *rsp = (struct ratp_bb *)gpio_rsp;
> +       return 0;
> +}
> +
> +BAREBOX_RATP_CMD_START(GPIO_GET_VALUE)
> +       .request_id = BB_RATP_TYPE_GPIO_GET_VALUE,
> +       .response_id = BB_RATP_TYPE_GPIO_GET_VALUE_RETURN,
> +       .cmd = ratp_cmd_gpio_get_value
> +BAREBOX_RATP_CMD_END
> +
> +
> +struct ratp_bb_gpio_set_value_request {
> +       struct ratp_bb header;
> +       uint32_t       gpio;
> +       uint8_t        value;
> +} __attribute__((packed));
> +
> +static int ratp_cmd_gpio_set_value(const struct ratp_bb *req, int req_len,
> +                                  struct ratp_bb **rsp, int *rsp_len)
> +{
> +       struct ratp_bb_gpio_set_value_request *gpio_req = (struct ratp_bb_gpio_set_value_request *)req;
> +       uint32_t gpio;
> +
> +       if (req_len < sizeof (*gpio_req)) {
> +               printf ("ratp gpio set value request ignored: size mismatch (%d < %zu)\n", req_len, sizeof (*gpio_req));
> +               return 2;
> +       }
> +
> +       gpio = be32_to_cpu (gpio_req->gpio);
> +       gpio_set_value(gpio, gpio_req->value);
> +

Not saying that you should do anything about it, but FYI this will end
up a no-op if specified GPIO is cannot be requested.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
