Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1hKI-0007bi-6A
 for barebox@lists.infradead.org; Sat, 02 Feb 2013 17:56:32 +0000
Received: by mail-la0-f42.google.com with SMTP id fe20so3608236lab.1
 for <barebox@lists.infradead.org>; Sat, 02 Feb 2013 09:56:26 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <009d01ce0163$5629e7a0$027db6e0$@com>
References: <009d01ce0163$5629e7a0$027db6e0$@com>
Date: Sat, 2 Feb 2013 21:56:26 +0400
Message-ID: <CAA4bVAFm-82XbexDM9sPUmfYUmh8bp9Y2o2eM20PXmqiqDU=Lg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: Lost access to M25Pxx in move to 2013.01
To: George Pontis <GPontis@z9.com>
Cc: barebox@lists.infradead.org

On 2 February 2013 20:35, George Pontis <GPontis@z9.com> wrote:
> Under 2012.11 I created a new board support package for custom hardware,
> which included a M25P32. I store barebox and its environment there, and boot
> from it. The board file also defines partitions for it. The first three look
> like this:
>
>         devfs_add_partition("m25p0",        0, 0x050000,
> DEVFS_PARTITION_FIXED, "barebox");
>         devfs_add_partition("m25p0", 0x050000, 0x010000,
> DEVFS_PARTITION_FIXED, "env0");
>         devfs_add_partition("m25p0", 0x060000, 0x330000,
> DEVFS_PARTITION_FIXED, "kernel");
>
> This created devices /dev/barebox, /dev/env0, and so on. It also allowed for
> simple commands like "erase /dev/barebox", "tftp barebox.bin /dev/barebox",
> etc.
>
> More recently I updated to the 2013.01 release. My config file is not much
> different and it still has enabled CONFIG_MTD, CONFIG_MTD_M25P80,
> CONFIG_MTD_WRITE. The new release starts up just fine and boots the kernel
> as usual. However, it does not see the M25P32.
>
> With the earlier release, I saw a line displayed at startup as so:
>
> m25p m25p0: m25p32 (4096 Kbytes)
>
> Also, devinfo listed the partitions on the part. That m25p line is not
> displayed with the 2013.01 release and there are no partitions. Devinfo does
> show one line for the m25p driver.
>
> Any suggestions where to look for a fix ?

Some times ago I have got just the same problem: after rebasing to the
new barebox release the spi memory chips "disappeared".

Here is part of my board code. It works for old barebox release:

static struct spi_board_info board_spi_devs[] __initdata = {
       {
               /* Spansion S25FL004A SPI flash */
               .name           = "m25p",
               .max_speed_hz   = 50000000,
               .bus_num        = 0,
               .chip_select    = 0,
               .mode           = SPI_MODE_3,
               .platform_data  = &lig32_spi0_flash_data,
       }
...
       spi_register_board_info(board_spi_devs, ARRAY_SIZE(board_spi_devs));

I changed the 'name' field from "m25p" to "m25p80", and it works again!



> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
