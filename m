Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.z9.com ([64.142.101.243])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2SSg-0000A5-BI
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 20:16:20 +0000
Received: from GPontisPC by z9.com (MDaemon PRO v12.5.8)
 with ESMTP id md50000244580.msg
 for <barebox@lists.infradead.org>; Mon, 04 Feb 2013 12:16:13 -0800
From: "George Pontis" <GPontis@z9.com>
References: <009d01ce0163$5629e7a0$027db6e0$@com>
 <CAA4bVAFm-82XbexDM9sPUmfYUmh8bp9Y2o2eM20PXmqiqDU=Lg@mail.gmail.com>
In-Reply-To: <CAA4bVAFm-82XbexDM9sPUmfYUmh8bp9Y2o2eM20PXmqiqDU=Lg@mail.gmail.com>
Date: Mon, 4 Feb 2013 12:16:07 -0800
Message-ID: <004901ce0314$7742f870$65c8e950$@com>
MIME-Version: 1.0
Content-Language: en-us
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
Subject: RE: Lost access to M25Pxx in move to 2013.01
To: barebox@lists.infradead.org

> -----Original Message-----
> From: Antony Pavlov [mailto:antonynpavlov@gmail.com]
> Sent: Saturday, February 02, 2013 9:56 AM
> To: George Pontis
> Cc: barebox@lists.infradead.org
> Subject: Re: Lost access to M25Pxx in move to 2013.01
> 

...


> 
> Here is part of my board code. It works for old barebox release:
> 
> static struct spi_board_info board_spi_devs[] __initdata = {
>        {
>                /* Spansion S25FL004A SPI flash */
>                .name           = "m25p",
>                .max_speed_hz   = 50000000,
>                .bus_num        = 0,
>                .chip_select    = 0,
>                .mode           = SPI_MODE_3,
>                .platform_data  = &lig32_spi0_flash_data,
>        }
> ...
>        spi_register_board_info(board_spi_devs,
> ARRAY_SIZE(board_spi_devs));
> 
> I changed the 'name' field from "m25p" to "m25p80", and it works again!
> 
> 

This fixed it for me too, thanks for posting. This behavior is different
from the way that at least some kernels work. I was working with 3.4.6, and
there it prefers to see the name be the same as the actual hardware device.
So in my case the kernel expects .name to be "m25p32", and if it gets m25p80
it squawks a message saying what it really found was "m25p32".

GP



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
