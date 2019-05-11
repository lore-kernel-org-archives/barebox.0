Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPMX2-00066Y-DL
 for barebox@lists.infradead.org; Sat, 11 May 2019 07:35:00 +0000
Date: Sat, 11 May 2019 07:36:00 +0000 (UTC)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <66bf01c678b62668909177d16748247669c71dfa.1556875750.git-series.s.trumtrar@pengutronix.de>
Message-ID: <alpine.DEB.2.20.1905110726590.25765@blala.de>
References: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
 <66bf01c678b62668909177d16748247669c71dfa.1556875750.git-series.s.trumtrar@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 02/10] spi: Generalize SPI "master" to "controller"
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Steffen,
this commit seems to be the origin of a crash when running the spi 
command, e.g.

barebox@Amazon Kindle D01100:/ spi -b 2 -f 100000 -w 32 -m 4 -r 4  0 0 0 
0xe            
unable to handle NULL pointer dereference at address 0x00000030
pc : [<7fe11a6c>]    lr : [<7fe1bc83>]
sp : 7ffefd78  ip : 00000030  fp : 7fe457e0
r10: 7fe33a28  r9 : 00000000  r8 : 00000002
r7 : 780c6ba4  r6 : 00000004  r5 : 00000004  r4 : 7fe56d6c
r3 : 00000000  r2 : 00000001  r1 : 00000000  r0 : 7ffefd90
Flags: nZcv  IRQs off  FIQs off  Mode SVC_32
WARNING: [<7fe11a6c>] (cspi_0_7_init+0x0/0xe) from [<7fe1bc83>] 
(do_spi+0x11b/0x240)
WARNING: [<7fe1bc83>] (do_spi+0x11b/0x240) from [<780c6b30>] (0x780c6b30)

WARNING: [<7fe297c1>] (unwind_backtrace+0x1/0x68) from [<7fe011ad>] 
(panic+0x1d/0x2c)
WARNING: [<7fe011ad>] (panic+0x1d/0x2c) from [<7fe27b5d>] 
(do_exception+0xd/0x10)
WARNING: [<7fe27b5d>] (do_exception+0xd/0x10) from [<7fe27bbd>] 
(do_data_abort+0x21/0x2c)
WARNING: [<7fe27bbd>] (do_data_abort+0x21/0x2c) from [<7fe277d4>] 
(do_abort_6+0x48/0x54)

The inquired device is the mc13892 PMIC
barebox@Amazon Kindle D01100:/ dmesg 
detected i.MX50 revision 1.1
i.MX reset reason unknown (SRSR: 0x00000010)
barebox 2019.04.0-00247-g58763bed5 #12 Sat May 11 09:22:59 CEST 2019
Board: Amazon Kindle D01100
mc13xxx-spi mc13892@00: Found MC13892 ID: 0x0045d4 [Rev: 2.4]
m25p80 m25p80@00: w25q20bw (256 Kbytes)
imx-esdhc 50020000.esdhc@50020000.of: registered as mmc2

barebox@Amazon Kindle D01100:/ devinfo 
`-- global
`-- nv
`-- platform
   `-- mem0
      `-- 0x00000000-0x0fffffff (   256 MiB): /dev/ram0
   `-- fffc000.tz-interrupt-controller@fffc000.of
   `-- soc.of
...
      `-- 60000000.aips@60000000.of
...
         `-- 63fc0000.spi@63fc0000.of
            `-- mc13892@00
               `-- 0x00000000-0x000000ff ( 256 Bytes): /dev/mc13892@00

Regarding SPI for the i.MX50: DT aliases are currently missing and barebox
will fail to probe SPI devices without alias. A linux DT patch is 
already accepted and will hopefully released with 5.2, e.g.
diff --git a/dts/src/arm/imx50.dtsi b/dts/src/arm/imx50.dtsi
index ee1e3e8bf..82e7acd7f 100644
--- a/dts/src/arm/imx50.dtsi
+++ b/dts/src/arm/imx50.dtsi
@@ -26,11 +26,20 @@
                gpio3 = &gpio4;
                gpio4 = &gpio5;
                gpio5 = &gpio6;
+               i2c0 = &i2c1;
+               i2c1 = &i2c2;
+               mmc0 = &esdhc1;
+               mmc1 = &esdhc2;
+               mmc2 = &esdhc3;
+               mmc3 = &esdhc4;
                serial0 = &uart1;
                serial1 = &uart2;
                serial2 = &uart3;
                serial3 = &uart4;
                serial4 = &uart5;
+               spi0 = &ecspi1;
+               spi1 = &ecspi2;
+               spi2 = &cspi;
        };
 
        cpus {

Regards, Alexander

On Fri, 3 May 2019, Steffen Trumtrar wrote:

> Sync with Linux v5.1-rc1.
> 
> This is the barebox adoption of the commit
> 
>   commit 8caab75fd2c2a92667cbb1cd315720bede3feaa9
>   Author: Geert Uytterhoeven <geert+renesas@glider.be>
>   Date:   Tue Jun 13 13:23:52 2017 +0200
> 
>       spi: Generalize SPI "master" to "controller"
> 
>       Now struct spi_master is used for both SPI master and slave controllers,
>       it makes sense to rename it to struct spi_controller, and replace
>       "master" by "controller" where appropriate.
> 
>       For now this conversion is done for SPI core infrastructure only.
>       Wrappers are provided for backwards compatibility, until all SPI drivers
>       have been converted.
> 
>       Noteworthy details:
> 	- SPI_MASTER_GPIO_SS is retained, as it only makes sense for SPI
> 	  master controllers,
> 	- spi_busnum_to_master() is retained, as it looks up masters only,
> 	- A new field spi_device.controller is added, but spi_device.master is
> 	  retained for compatibility (both are always initialized by
> 	  spi_alloc_device()),
> 	- spi_flash_read() is used by SPI masters only.
> 
>       Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>       Signed-off-by: Mark Brown <broonie@kernel.org>
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  commands/spi.c    | 16 +++++------
>  drivers/spi/spi.c | 71 ++++++++++++++++++++++++------------------------
>  include/spi/spi.h | 30 ++++++++++++--------
>  3 files changed, 62 insertions(+), 55 deletions(-)
> 
> diff --git a/commands/spi.c b/commands/spi.c
> index 7bf193b0bbbb..55a0e255af17 100644
> --- a/commands/spi.c
> +++ b/commands/spi.c
> @@ -62,21 +62,21 @@ static int do_spi(int argc, char *argv[])
>  		return COMMAND_ERROR_USAGE;
>  
>  
> -	spi.master = spi_get_master(bus);
> -	if (!spi.master) {
> +	spi.controller = spi_get_controller(bus);
> +	if (!spi.controller) {
>  		printf("spi bus %d not found\n", bus);
>  		return -ENODEV;
>  	}
>  
> -	if (spi.chip_select >= spi.master->num_chipselect) {
> -		printf("spi chip select (%d) >= master num chipselect (%d)\n",
> -			spi.chip_select, spi.master->num_chipselect);
> +	if (spi.chip_select >= spi.controller->num_chipselect) {
> +		printf("spi chip select (%d) >= controller num chipselect (%d)\n",
> +			spi.chip_select, spi.controller->num_chipselect);
>  		return -EINVAL;
>  	}
>  
> -	ret = spi.master->setup(&spi);
> +	ret = spi.controller->setup(&spi);
>  	if (ret) {
> -		printf("can not setup the master (%d)\n", ret);
> +		printf("can not setup the controller (%d)\n", ret);
>  		return ret;
>  	}
>  
> @@ -93,7 +93,7 @@ static int do_spi(int argc, char *argv[])
>  	byte_per_word = max(spi.bits_per_word / 8, 1);
>  	if (verbose) {
>  		printf("device config\n");
> -		printf("    bus_num       = %d\n", spi.master->bus_num);
> +		printf("    bus_num       = %d\n", spi.controller->bus_num);
>  		printf("    max_speed_hz  = %d\n", spi.max_speed_hz);
>  		printf("    chip_select   = %d\n", spi.chip_select);
>  		printf("    mode          = 0x%x\n", spi.mode);
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 25bb988794a9..7756304f1981 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -54,22 +54,22 @@ static LIST_HEAD(board_list);
>   *
>   * Returns the new device, or NULL.
>   */
> -struct spi_device *spi_new_device(struct spi_master *master,
> +struct spi_device *spi_new_device(struct spi_controller *ctrl,
>  				  struct spi_board_info *chip)
>  {
>  	struct spi_device	*proxy;
>  	int			status;
>  
>  	/* Chipselects are numbered 0..max; validate. */
> -	if (chip->chip_select >= master->num_chipselect) {
> +	if (chip->chip_select >= ctrl->num_chipselect) {
>  		debug("cs%d > max %d\n",
>  			chip->chip_select,
> -			master->num_chipselect);
> +			ctrl->num_chipselect);
>  		return NULL;
>  	}
>  
>  	proxy = xzalloc(sizeof *proxy);
> -	proxy->master = master;
> +	proxy->master = ctrl;
>  	proxy->chip_select = chip->chip_select;
>  	proxy->max_speed_hz = chip->max_speed_hz;
>  	proxy->mode = chip->mode;
> @@ -81,10 +81,11 @@ struct spi_device *spi_new_device(struct spi_master *master,
>  	proxy->dev.id = DEVICE_ID_DYNAMIC;
>  	proxy->dev.type_data = proxy;
>  	proxy->dev.device_node = chip->device_node;
> -	proxy->dev.parent = master->dev;
> +	proxy->dev.parent = ctrl->dev;
> +	proxy->master = proxy->controller = ctrl;
>  
>  	/* drivers may modify this initial i/o setup */
> -	status = master->setup(proxy);
> +	status = ctrl->setup(proxy);
>  	if (status < 0) {
>  		printf("can't setup %s, status %d\n",
>  				proxy->dev.name, status);
> @@ -100,12 +101,12 @@ fail:
>  }
>  EXPORT_SYMBOL(spi_new_device);
>  
> -static void spi_of_register_slaves(struct spi_master *master)
> +static void spi_of_register_slaves(struct spi_controller *ctrl)
>  {
>  	struct device_node *n;
>  	struct spi_board_info chip;
>  	struct property *reg;
> -	struct device_node *node = master->dev->device_node;
> +	struct device_node *node = ctrl->dev->device_node;
>  
>  	if (!IS_ENABLED(CONFIG_OFDEVICE))
>  		return;
> @@ -116,7 +117,7 @@ static void spi_of_register_slaves(struct spi_master *master)
>  	for_each_available_child_of_node(node, n) {
>  		memset(&chip, 0, sizeof(chip));
>  		chip.name = xstrdup(n->name);
> -		chip.bus_num = master->bus_num;
> +		chip.bus_num = ctrl->bus_num;
>  		/* Mode (clock phase/polarity/etc.) */
>  		if (of_property_read_bool(n, "spi-cpha"))
>  			chip.mode |= SPI_CPHA;
> @@ -171,7 +172,7 @@ spi_register_board_info(struct spi_board_info const *info, int n)
>  	return 0;
>  }
>  
> -static void scan_boardinfo(struct spi_master *master)
> +static void scan_boardinfo(struct spi_controller *ctrl)
>  {
>  	struct boardinfo	*bi;
>  
> @@ -180,27 +181,27 @@ static void scan_boardinfo(struct spi_master *master)
>  		unsigned		n;
>  
>  		for (n = bi->n_board_info; n > 0; n--, chip++) {
> -			debug("%s %d %d\n", __FUNCTION__, chip->bus_num, master->bus_num);
> -			if (chip->bus_num != master->bus_num)
> +			debug("%s %d %d\n", __FUNCTION__, chip->bus_num, ctrl->bus_num);
> +			if (chip->bus_num != ctrl->bus_num)
>  				continue;
>  			/* NOTE: this relies on spi_new_device to
>  			 * issue diagnostics when given bogus inputs
>  			 */
> -			(void) spi_new_device(master, chip);
> +			(void) spi_new_device(ctrl, chip);
>  		}
>  	}
>  }
>  
> -static LIST_HEAD(spi_master_list);
> +static LIST_HEAD(spi_controller_list);
>  
>  /**
> - * spi_register_master - register SPI master controller
> - * @master: initialized master, originally from spi_alloc_master()
> + * spi_register_ctrl - register SPI ctrl controller
> + * @ctrl: initialized ctrl, originally from spi_alloc_ctrl()
>   * Context: can sleep
>   *
> - * SPI master controllers connect to their drivers using some non-SPI bus,
> + * SPI controllers connect to their drivers using some non-SPI bus,
>   * such as the platform bus.  The final stage of probe() in that code
> - * includes calling spi_register_master() to hook up to this SPI bus glue.
> + * includes calling spi_register_ctrl() to hook up to this SPI bus glue.
>   *
>   * SPI controllers use board specific (often SOC specific) bus numbers,
>   * and board-specific addressing for SPI devices combines those numbers
> @@ -209,47 +210,47 @@ static LIST_HEAD(spi_master_list);
>   * chip is at which address.
>   *
>   * This must be called from context that can sleep.  It returns zero on
> - * success, else a negative error code (dropping the master's refcount).
> + * success, else a negative error code (dropping the ctrl's refcount).
>   * After a successful return, the caller is responsible for calling
> - * spi_unregister_master().
> + * spi_unregister_ctrl().
>   */
> -int spi_register_master(struct spi_master *master)
> +int spi_register_controller(struct spi_controller *ctrl)
>  {
>  	static int dyn_bus_id = (1 << 15) - 1;
>  	int			status = -ENODEV;
>  
> -	debug("%s: %s:%d\n", __func__, master->dev->name, master->dev->id);
> +	debug("%s: %s:%d\n", __func__, ctrl->dev->name, ctrl->dev->id);
>  
>  	/* even if it's just one always-selected device, there must
>  	 * be at least one chipselect
>  	 */
> -	if (master->num_chipselect == 0)
> +	if (ctrl->num_chipselect == 0)
>  		return -EINVAL;
>  
> -	if ((master->bus_num < 0) && master->dev->device_node)
> -		master->bus_num = of_alias_get_id(master->dev->device_node, "spi");
> +	if ((ctrl->bus_num < 0) && ctrl->dev->device_node)
> +		ctrl->bus_num = of_alias_get_id(ctrl->dev->device_node, "spi");
>  
>  	/* convention:  dynamically assigned bus IDs count down from the max */
> -	if (master->bus_num < 0)
> -		master->bus_num = dyn_bus_id--;
> +	if (ctrl->bus_num < 0)
> +		ctrl->bus_num = dyn_bus_id--;
>  
> -	list_add_tail(&master->list, &spi_master_list);
> +	list_add_tail(&ctrl->list, &spi_controller_list);
>  
> -	spi_of_register_slaves(master);
> +	spi_of_register_slaves(ctrl);
>  
>  	/* populate children from any spi device tables */
> -	scan_boardinfo(master);
> +	scan_boardinfo(ctrl);
>  	status = 0;
>  
>  	return status;
>  }
> -EXPORT_SYMBOL(spi_register_master);
> +EXPORT_SYMBOL(spi_register_ctrl);
>  
> -struct spi_master *spi_get_master(int bus)
> +struct spi_controller *spi_get_controller(int bus)
>  {
> -	struct spi_master* m;
> +	struct spi_controller* m;
>  
> -	list_for_each_entry(m, &spi_master_list, list) {
> +	list_for_each_entry(m, &spi_controller_list, list) {
>  		if (m->bus_num == bus)
>  			return m;
>  	}
> @@ -259,7 +260,7 @@ struct spi_master *spi_get_master(int bus)
>  
>  int spi_sync(struct spi_device *spi, struct spi_message *message)
>  {
> -	return spi->master->transfer(spi, message);
> +	return spi->controller->transfer(spi, message);
>  }
>  
>  /**
> diff --git a/include/spi/spi.h b/include/spi/spi.h
> index 620e5e57b4f8..8c6927da4107 100644
> --- a/include/spi/spi.h
> +++ b/include/spi/spi.h
> @@ -20,13 +20,14 @@ struct spi_board_info {
>  };
>  
>  /**
> - * struct spi_device - Master side proxy for an SPI slave device
> + * struct spi_device - Controller side proxy for an SPI slave device
>   * @dev: Driver model representation of the device.
> - * @master: SPI controller used with the device.
> + * @controller: SPI controller used with the device.
> + * @master: Copy of controller, for backwards compatibility
>   * @max_speed_hz: Maximum clock rate to be used with this chip
>   *	(on this board); may be changed by the device's driver.
>   *	The spi_transfer.speed_hz can override this for each transfer.
> - * @chip_select: Chipselect, distinguishing chips handled by @master.
> + * @chip_select: Chipselect, distinguishing chips handled by @controller.
>   * @mode: The spi mode defines how data is clocked out and in.
>   *	This may be changed by the device's driver.
>   *	The "active low" default for chipselect mode can be overridden
> @@ -59,7 +60,8 @@ struct spi_board_info {
>   */
>  struct spi_device {
>  	struct device_d		dev;
> -	struct spi_master	*master;
> +	struct spi_controller	*controller;
> +	struct spi_controller	*master;	/* compatibility layer */
>  	u32			max_speed_hz;
>  	u8			chip_select;
>  	u8			mode;
> @@ -93,7 +95,7 @@ struct spi_device {
>  struct spi_message;
>  
>  /**
> - * struct spi_master - interface to SPI master controller
> + * struct spi_controller - interface to SPI master or slave controller
>   * @dev: device interface to this driver
>   * @bus_num: board-specific (and often SOC-specific) identifier for a
>   *	given SPI controller.
> @@ -108,8 +110,9 @@ struct spi_message;
>   *	the device whose settings are being modified.
>   * @transfer: adds a message to the controller's transfer queue.
>   * @cleanup: frees controller-specific state
> + * @list: link with the global spi_controller list
>   *
> - * Each SPI master controller can communicate with one or more @spi_device
> + * Each SPI controller can communicate with one or more @spi_device
>   * children.  These make a small bus, sharing MOSI, MISO and SCK signals
>   * but not chip select signals.  Each device may be configured to use a
>   * different clock rate, since those shared signals are ignored unless
> @@ -120,7 +123,7 @@ struct spi_message;
>   * an SPI slave device.  For each such message it queues, it calls the
>   * message's completion function when the transaction completes.
>   */
> -struct spi_master {
> +struct spi_controller {
>  	struct device_d *dev;
>  
>  	/* other than negative (== assign one dynamically), bus_num is fully
> @@ -147,7 +150,7 @@ struct spi_master {
>  	 *   any other request management
>  	 * + To a given spi_device, message queueing is pure fifo
>  	 *
> -	 * + The master's main job is to process its message queue,
> +	 * + The controller's main job is to process its message queue,
>  	 *   selecting a chip then transferring data
>  	 * + If there are multiple spi_device children, the i/o queue
>  	 *   arbitration algorithm is unspecified (round robin, fifo,
> @@ -161,12 +164,15 @@ struct spi_master {
>  	int			(*transfer)(struct spi_device *spi,
>  						struct spi_message *mesg);
>  
> -	/* called on release() to free memory provided by spi_master */
> +	/* called on release() to free memory provided by spi_controller */
>  	void			(*cleanup)(struct spi_device *spi);
>  
>  	struct list_head list;
>  };
>  
> +#define spi_master  			spi_controller
> +#define spi_register_master(_ctrl)	spi_register_controller(_ctrl)
> +
>  /*---------------------------------------------------------------------------*/
>  
>  /*
> @@ -341,9 +347,9 @@ spi_transfer_del(struct spi_transfer *t)
>  
>  int spi_sync(struct spi_device *spi, struct spi_message *message);
>  
> -struct spi_device *spi_new_device(struct spi_master *master,
> +struct spi_device *spi_new_device(struct spi_controller *ctrl,
>  				  struct spi_board_info *chip);
> -int spi_register_master(struct spi_master *master);
> +int spi_register_controller(struct spi_controller *ctrl);
>  
>  #ifdef CONFIG_SPI
>  int spi_register_board_info(struct spi_board_info const *info, int num);
> @@ -431,7 +437,7 @@ static inline ssize_t spi_w8r8(struct spi_device *spi, u8 cmd)
>  
>  extern struct bus_type spi_bus;
>  
> -struct spi_master *spi_get_master(int bus);
> +struct spi_controller *spi_get_controller(int bus);
>  
>  static inline int spi_driver_register(struct driver_d *drv)
>  {
> -- 
> git-series 0.9.1
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
