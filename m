Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLwXW-0007UZ-Nh
 for barebox@lists.infradead.org; Tue, 17 Sep 2013 14:46:08 +0000
Received: from mail437.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2B2B6FF9952
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 16:45:41 +0200 (CEST)
Date: Tue, 17 Sep 2013 16:46:49 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130917144649.GA28390@ns203013.ovh.net>
References: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
 <1379321300-8085-8-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379321300-8085-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 07/11] ARM: Add Altera SoCFPGA support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> +static int socfpga_env_init(void)
> +{
> +	struct stat s;
> +	char *diskdev, *partname;
> +	int ret;
> +
> +	diskdev = "mmc0";
> +
> +	device_detect_by_name(diskdev);
> +
> +	partname = asprintf("/dev/%s.1", diskdev);
> +
> +	ret = stat(partname, &s);
> +
> +	if (ret) {
> +		printf("no %s. using default env\n", diskdev);
> +		goto out_free;
> +	}
> +
> +	mkdir("/boot", 0666);
> +	ret = mount(partname, "fat", "/boot");
> +	if (ret) {
> +		printf("failed to mount %s\n", diskdev);
> +		goto out_free;
> +	}
> +
> +	if (IS_ENABLED(CONFIG_OMAP_BUILD_IFT))
OMAP?
> +		default_environment_path = "/dev/defaultenv";
> +	else
> +		default_environment_path = "/boot/barebox.env";
> +
> +out_free:
> +	free(partname);
> +	return 0;
> +}
> +late_initcall(socfpga_env_init);
> +#endif
> diff --git a/arch/arm/mach-socfpga/include/mach/clkdev.h b/arch/arm/mach-socfpga/include/mach/clkdev.h
> new file mode 100644
> index 0000000..04b37a8
> --- /dev/null
> +++ b/arch/arm/mach-socfpga/include/mach/clkdev.h
> @@ -0,0 +1,7 @@
> +#ifndef __ASM_MACH_CLKDEV_H
> +#define __ASM_MACH_CLKDEV_H
> +
> +#define __clk_get(clk) ({ 1; })
> +#define __clk_put(clk) do { } while (0)
> +
do we still need this?
> +#endif
> diff --git a/arch/arm/mach-socfpga/include/mach/clock-manager.h b/arch/arm/mach-socfpga/include/mach/clock-manager.h
> new file mode 100644
> index 0000000..a2b6975
> --- /dev/null

> +#if ARRIAV || CYCLONEV
> +		/* av/cv don't have out2 */
> +		scc_mgr_set_dqs_out1_delay(write_group, IO_DQS_OUT_RESERVE);
> +#else
> +		scc_mgr_set_dqs_out1_delay(write_group, 0);
> +		scc_mgr_set_dqs_out2_delay(write_group, IO_DQS_OUT_RESERVE);
> +#endif
really?
> +
> +		/* multicast to all DQS IO enables (only 1) */
> +		IOWR_32DIRECT(SCC_MGR_DQS_IO_ENA, 0, 0);
> +
> +		/* hit update to zero everything */
> +		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
> +	}
> +}
> +
> +/* load up dqs config settings */
> +
> +static void scc_mgr_load_dqs (uint32_t dqs)
> +{
> +	IOWR_32DIRECT(SCC_MGR_DQS_ENA, 0, dqs);
> +}
> +
> diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.c
> new file mode 100644
> index 0000000..18ea927
> --- /dev/null
> +++ b/arch/arm/mach-socfpga/xload.c
> @@ -0,0 +1,125 @@
> +#include <platform_data/dw_mmc.h>
> +#include <bootsource.h>
> +#include <ns16550.h>
> +#include <common.h>
> +#include <malloc.h>
> +#include <init.h>
> +#include <envfs.h>
> +#include <sizes.h>
> +#include <fs.h>
> +#include <io.h>
> +
> +#include <linux/clkdev.h>
> +#include <linux/stat.h>
> +#include <linux/clk.h>
> +
> +#include <mach/system-manager.h>
> +#include <mach/socfpga-regs.h>
> +
> +enum socfpga_clks {
> +	timer, mmc, uart, clk_max
> +};
> +
> +static struct clk *clks[clk_max];
> +
> +static struct dw_mmc_platform_data mmc_pdata = {
> +	.ciu_div = 3,
> +};
> +
> +static void socfpga_mmc_init(void)
> +{
> +	clks[mmc] = clk_fixed("mmc", 400000000);
> +	clkdev_add_physbase(clks[mmc], CYCLONE5_SDMMC_ADDRESS, NULL);
> +	add_generic_device("dw_mmc", 0, NULL, CYCLONE5_SDMMC_ADDRESS, SZ_4K,
> +			IORESOURCE_MEM, &mmc_pdata);
> +}
> +
> +static struct NS16550_plat uart_pdata = {
> +	.clock = 100000000,
> +	.shift = 2,
> +};
> +
> +static void socfpga_uart_init(void)
> +{
> +	clks[uart] = clk_fixed("uart", 100000000);
> +	clkdev_add_physbase(clks[uart], CYCLONE5_UART0_ADDRESS, NULL);
> +	clkdev_add_physbase(clks[uart], CYCLONE5_UART1_ADDRESS, NULL);
> +	add_ns16550_device(0, 0xffc02000, 1024, IORESOURCE_MEM_8BIT,
> +			&uart_pdata);
> +}
> +
> +static void socfpga_timer_init(void)
> +{
> +	clks[timer] = clk_fixed("timer", 200000000);
> +	clkdev_add_physbase(clks[timer], CYCLONE5_SMP_TWD_ADDRESS, NULL);
> +	add_generic_device("smp_twd", 0, NULL, CYCLONE5_SMP_TWD_ADDRESS, 0x100,
> +			IORESOURCE_MEM, NULL);
> +}
> +
> +static void *socfpga_xload_mmc(void)
> +{
> +	int ret;
> +	void *buf;
> +	int len;
> +	const char *diskdev = "disk0.1";
> +
> +	pr_info("loading bootloader from SD/MMC\n");
> +
> +	ret = mount(diskdev, "fat", "/");
> +	if (ret) {
> +		printf("Unable to mount %s (%d)\n", diskdev, ret);
> +		return NULL;
> +	}
> +
> +	buf = read_file("/barebox.bin", &len);
> +	if (!buf) {
> +		printf("could not read barebox.bin from sd card\n");
> +		return NULL;
> +	}
> +
> +	return buf;
> +}
please use the generic bootstrap code
> +
> +static __noreturn int socfpga_xload(void)
> +{
> +	enum bootsource bootsource = bootsource_get();
> +	void *buf;
> +	int (*func)(void *);
> +
> +	switch (bootsource) {
> +	case BOOTSOURCE_MMC:
> +		buf = socfpga_xload_mmc();
> +		break;
> +	default:
> +		pr_err("unknown bootsource %d\n", bootsource);
> +		hang();
> +	}
> +
> +	if (!buf) {
> +		pr_err("failed to load barebox.bin\n");
> +		hang();
> +	}
> +
> +	func = buf;
> +
> +	pr_info("starting bootloader...\n");
> +
> +	shutdown_barebox();
> +
> +	func(NULL);
> +
> +	hang();
> +}
> +
> +static int socfpga_devices_init(void)
> +{
> +	barebox_set_model("SoCFPGA");
> +	socfpga_timer_init();
> +	socfpga_uart_init();
> +	socfpga_mmc_init();
> +
> +	barebox_main = socfpga_xload;
> +
> +	return 0;
> +}
> +coredevice_initcall(socfpga_devices_init);
> diff --git a/images/.gitignore b/images/.gitignore
> index 9cc1728..1f601e7 100644
> --- a/images/.gitignore
> +++ b/images/.gitignore
> @@ -7,6 +7,7 @@
>  *.src
>  *.kwbimg
>  *.kwbuartimg
> +*.socfpgaimg
>  pbl.lds
>  barebox.x
>  barebox.z

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
