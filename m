Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5wWs-0000W3-N0
 for barebox@lists.infradead.org; Thu, 26 May 2016 14:44:55 +0000
Date: Thu, 26 May 2016 16:44:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160526144431.GH31666@pengutronix.de>
References: <CAGm1_ktMpwYPfhz2_baRt-nX+ACArVX8ESfgjY1_NzZqurnjiA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_ktMpwYPfhz2_baRt-nX+ACArVX8ESfgjY1_NzZqurnjiA@mail.gmail.com>
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
Subject: Re: am335x questions
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Yegor,

On Thu, May 26, 2016 at 03:41:46PM +0200, Yegor Yefremov wrote:
> I'm porting an am335x based board. We have systems either with 256MB
> or 512MB RAM. Currently I'm using following code:
> 
> ENTRY_FUNCTION(start_am33xx_baltos_sdram, r0, r1, r2)
> {
>         uint32_t sdram_size;
>         void *fdt;
> 
>         sdram_size = SZ_256M;
>         fdt = __dtb_am335x_baltos_minimal_start;
> 
>         fdt -= get_runtime_offset();
> 
>         barebox_arm_entry(0x80000000, sdram_size, fdt);
> }
> 
> This way I always have 256MB "detected" regardless of the used
> hardware. Is it possible to let Barebox autodetect RAM size like it is
> done in U-Boot?

Try am335x_barebox_entry() instead of barebox_arm_entry(), it will
read back the configured SDRAM size from the SDRAM controller. Make sure
you don't have a /memory node in your device tree conflicting with the
real amount of RAM (i.e. when you have a board with 512MiB and your
device tree contains a /memory node with 256MiB then you will have
conflicts during startup, most likely barebox will bail out in the MMU
startup). Just delete the /memory node from the device tree, barebox
will create it automatically later.

For a full runtime SDRAM size detection you could call
am335x_sdram_init() with different setups and call get_ram_size()
afterwards. I'm not aware of other tricks on AM335x. How does U-Boot do
it?

> 
> Another question concerns booting medium. Whether I start from NAND or
> MMC I always want to be able to boot from MMC too. Now, if I boot
> Barebox from NAND I can see following in devinfo output:
> 
>  `-- 48060000.mmc
>          `-- mmc0
> 
> How can I make system enumerate MMC partition, so that I can mount
> them? "detect mmc0" doesn't help.

"detect mmc0" should generally work. If it doesn't my guess is that the
pinmux is not configured correctly. When you boot from MMC then the ROM
configures the pinmux and the SD card works in barebox aswell. When you
boot from Nand then the pinmux is missing. Just a guess, could be clocks
aswell or something else.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
