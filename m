Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P87Yo-0000pV-Pv
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 08:28:43 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 19 Oct 2010 10:28:28 +0200
References: <1287474532-31528-1-git-send-email-marek.belisko@gmail.com>
In-Reply-To: <1287474532-31528-1-git-send-email-marek.belisko@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010191028.28405.jbe@pengutronix.de>
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
Subject: Re: [PATCH] Add basic support for mini2440 dev board.
To: barebox@lists.infradead.org

Marek Belisko wrote:
> This work is mainly based on a9m2440 board implementation
> from Juergen Beisert <jbe@pengutronix.de>. Functionality
> was tested only running barebox from ram. Loading to flash
> and booting will not work because missing lowlevel_init
> functionality (lack of jtag debugger on my side ;)).

I have now access to a mini2440 at Pengutronix. I will add this feature soon.

> [...]
> +static int mini2440_devices_init(void)
> +{
> +	uint32_t reg;
> +
> +	reg = readl(BWSCON);
> +
> +	/* CS#4 to access the network controller */
> +	reg &= ~0x000f0000;
> +	reg |=  0x000d0000;	/* 16 bit */
> +	writel(0x1f4c, BANKCON4);
> +
> +	writel(reg, BWSCON);
> +
> +	/* release the reset signal to external devices */
> +	reg = readl(MISCCR);
> +	reg |= 0x10000;
> +	writel(reg, MISCCR);
> +
> +	register_device(&nand_dev);
> +	register_device(&sdram_dev);
> +	register_device(&dm9000_dev);
> +#ifdef CONFIG_NAND
> +	/* ----------- add some vital partitions -------- */
> +	devfs_del_partition("self_raw");
> +	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED,
> "self_raw"); +	dev_add_bb_dev("self_raw", NULL);
> +
> +	devfs_del_partition("env_raw");
> +	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED,
> "env_raw"); +	dev_add_bb_dev("env_raw", NULL);
> +#endif
> +	armlinux_add_dram(&sdram_dev);
> +	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
> +	armlinux_set_architecture(MACH_TYPE_MINI2440);
> +
> +	return 0;
> +}

We need some kind of management here, because the mini2440 comes with NOR and 
NAND flash. And both can be configured to boot the system from: We need a 
location to store the environment. Maybe in NOR, when booting from NOR, and 
in NAND, when booting form NAND? Or only one single location where to store 
the environment, independent from the boot source? Ideas?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
