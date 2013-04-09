Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPSI9-00018R-7V
 for barebox@lists.infradead.org; Tue, 09 Apr 2013 06:44:30 +0000
Date: Tue, 9 Apr 2013 08:44:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130409064423.GW1906@pengutronix.de>
References: <201304051404.31877.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201304051404.31877.jbe@pengutronix.de>
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
Subject: Re: [PATCH] ARM/MXS: add more ROM code related documentation
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 05, 2013 at 02:04:31PM +0200, Juergen Beisert wrote:
> Commit 17176c2e2bba606190d9ae51943acb5701063573 adds a test of a new RTC
> register flag to distinguish a system reset and a wake up event. Shame on me,
> I have forgotten to define the newly used flag yet.
> 
> While already here, I also try to document the other flags the RTC provides.
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

Applied, thanks

Sascha

> ---
> Note: this patch is a build fix. Without this patch the i.MX28 watchdog driver
> cannot be built since commit 17176c2e2bba606190d9ae51943acb5701063573 anymore.
> 
>  drivers/watchdog/im28wd.c |   73 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
> 
> Index: barebox-2013.04.0/drivers/watchdog/im28wd.c
> ===================================================================
> --- barebox-2013.04.0.orig/drivers/watchdog/im28wd.c
> +++ barebox-2013.04.0/drivers/watchdog/im28wd.c
> @@ -33,16 +33,89 @@
>  
>  #define MXS_RTC_WATCHDOG 0x50
>  
> +/* HW_RTC_PERSISTENT0 - holds bits used to configure various hardware settings */
>  #define MXS_RTC_PERSISTENT0 0x60
> +
> +/* FIXME */
> +# define MXS_RTC_PERSISTENT0_SPARE_ANALOG (1 << 22)
>  /* dubious meaning from inside the SoC's firmware ROM */
>  # define MXS_RTC_PERSISTENT0_EXT_RST (1 << 21)
>  /* dubious meaning from inside the SoC's firmware ROM */
>  # define MXS_RTC_PERSISTENT0_THM_RST (1 << 20)
> +/* reserved on i.MX28 */
> +# define MXS_RTC_PERSISTENT0_RELEASE_GND (1 << 19)
> +# define MXS_RTC_PERSISTENT0_ENABLE_LRADC_PWRUP (1 << 18)
> +# define MXS_RTC_PERSISTENT0_AUTO_RESTART (1 << 17)
> +# define MXS_RTC_PERSISTENT0_DISABLE_PSWITCH (1 << 16)
> +# define MXS_RTC_PERSISTENT0_LOWERBIAS (1 << 14)
> +# define MXS_RTC_PERSISTENT0_DISABLE_XTALOK (1 << 13)
> +# define MXS_RTC_PERSISTENT0_MSEC_RES (1 << 8)
> +# define MXS_RTC_PERSISTENT0_ALARM_WAKE (1 << 7)
> +# define MXS_RTC_PERSISTENT0_XTAL32_FREQ (1 << 6)
> +# define MXS_RTC_PERSISTENT0_XTAL32KHZ_PWRUP (1 << 5)
> +# define MXS_RTC_PERSISTENT0_XTAL24MHZ_PWRUP (1 << 4)
> +# define MXS_RTC_PERSISTENT0_LCK_SECS (1 << 3)
> +# define MXS_RTC_PERSISTENT0_ALARM_EN (1 << 2)
> +# define MXS_RTC_PERSISTENT0_ALARM_WAKE_EN (1 << 1)
> +# define MXS_RTC_PERSISTENT0_CLOCKSOURCE (1 << 0)
>  
> +/* HW_RTC_PERSISTENT1 - holds bits related to the ROM and redundant boot handling */
>  #define MXS_RTC_PERSISTENT1 0x70
> +
> +
> +/*
> + * some of the following bits are for error reporting from ROM to the chained
> + * firmware. It seems, if the error reporting bits are not cleared when the
> + * chained firmware is running, the next time the following rule is active:
> + *  "Loader enters recovery mode if any non-USB boot mode has an error.
> + * Which results into a system that seems not to start anymore.
> + */
> +
>  /* dubious meaning from inside the SoC's firmware ROM */
>  # define MXS_RTC_PERSISTENT1_FORCE_UPDATER (1 << 31)
>  
> +/* names are from the i.MX28 datasheet. Undocumented behaviour */
> +# define MXS_RTC_PERSISTENT1_ENUMERATE_500MA_TWICE (1 << 12)
> +# define MXS_RTC_PERSISTENT1_USB_BOOT_PLAYER_MODE (1 << 11)
> +# define MXS_RTC_PERSISTENT1_SKIP_CHECKDISK (1 << 10)
> +# define MXS_RTC_PERSISTENT1_USB_LOW_POWER_MODE (1 << 9)
> +# define MXS_RTC_PERSISTENT1_OTG_HNP_BIT (1 << 8)
> +# define MXS_RTC_PERSISTENT1_OTG_ATL_ROLE_BIT (1 << 7)
> +/*
> + * a few undocumented bits
> + */
> +# define MXS_RTC_PERSISTENT1_SD_INIT_SEQ_2_ENABLE (1 << 6)
> +# define MXS_RTC_PERSISTENT1_SD_CMD0_DISABLE (1 << 5)
> +# define MXS_RTC_PERSISTENT1_SD_INIT_SEQ_1_DISABLE (1 << 4)
> +/*
> + * If this bit is set, ROM puts the SD/MMC card in high-speed mode.
> + * If this bit is set, the ROM driver will use a maximum speed based on the
> + * results of device identification and limited by choices available in the
> + * SSP clock index.
> + */
> +# define MXS_RTC_PERSISTENT1_SD_SPEED_ENABLE (1 << 3)
> +/*
> + * The NAND driver sets this bit to indicate to the SDK that the boot image
> + * has ECC errors that reached the warning threshold. The SDK regenerates the
> + * firmware by copying it from the backup image. The SDK clears this bit.
> + * This bit had change its meaning from i.XM23 to i.MX28. Refer section
> + * 35.8 "NAND Boot Mode" for further details in the i.MX23 RM.
> + */
> +# define MXS_RTC_PERSISTENT1_NAND_SDK_BLOCK_REWRITE (1 << 2)
> +/*
> + * When this bit is set, ROM attempts to boot from the secondary image if the
> + * boot driver supports it. This bit is set by the ROM boot driver and cleared
> + * by the SDK after repair.
> + * If not reset, the ROM seems to continue to start from the secondary image
> + * which will fail forever if there is no secondary image
> + */
> +# define MXS_RTC_PERSISTENT1_NAND_SECONDARY_BOOT (1 << 1)
> +/*
> + * When this bit is set, the ROM code forces the system to boot in recovery
> + * mode, regardless of the selected mode. The ROM clears the bit.
> + */
> +# define MXS_RTC_PERSISTENT1_FORCE_RECOVERY (1 << 0)
> +
>  #define MXS_RTC_DEBUG 0xc0
>  
>  #define WDOG_TICK_RATE 1000 /* the watchdog uses a 1 kHz clock rate */
> 
> -- 
> Pengutronix e.K.                              | Juergen Beisert             |
> Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
