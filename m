Delivery-date: Tue, 14 Jun 2022 21:09:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1BuZ-002Q5R-8U
	for lore@lore.pengutronix.de; Tue, 14 Jun 2022 21:09:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1BuY-0007cF-Cv
	for lore@pengutronix.de; Tue, 14 Jun 2022 21:09:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qs7lJnmLTLw+PQYqGkzAKzhHiCcldjersFv8NODxOnE=; b=JkDsgahgIMGMXzNNpNh1POidKa
	PQ+qL+zCEH5vUAcX+Ny5HFBYQi3wji8Pu0lE6CaDQE2/6sH/JV8dBPuzR9Uc+WVWKxr59bAjz2qh5
	+hU50ySRsnI+OJ++N75BMg8IxdNs/BevVlfQS2cL7rRp0TTbtmQ3bu7jBy6L4FXDgmOkmYh+CqwCe
	N5iBtkaMjSi94jBWq02a7p0EuScTUf1zTjHAbvx4luxBn3OYjSVOG9m3p8Q1onMn9PhM8SheBh/z+
	scYfEQWw9Ol2BJMDaBkwgV+jegvZRHoheqxEgrh/dh1v3BVZ8+KwWARCA9cSSUHV0jyjnwZZ91aiE
	bD8lVqpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bsh-00AsSB-Bt; Tue, 14 Jun 2022 19:07:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bsc-00AsQW-3f
	for barebox@lists.infradead.org; Tue, 14 Jun 2022 19:07:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o1BsW-0007X9-Sq; Tue, 14 Jun 2022 21:07:05 +0200
Message-ID: <8af39019-b398-4b2a-7739-22f48cac7532@pengutronix.de>
Date: Tue, 14 Jun 2022 21:07:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: =?UTF-8?Q?Daniel_Br=c3=a1t?= <danek.brat@gmail.com>,
 barebox@lists.infradead.org
References: <20220613211651.14454-1-danek.brat@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220613211651.14454-1-danek.brat@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_120710_517031_9D8956FE 
X-CRM114-Status: GOOD (  34.71  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] ARM: rpi: parse useful data from vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Daniel,

On 13.06.22 23:16, Daniel Brát wrote:
> Videocore first-stage loader on rpi passes us many useful information
> inside the vc fdt, including the real value of PM_RSTS register, not
> easily available by other means and which we can use to determine
> the reset cause.
> Also make the relevant funtions just print error/warning and continue
> in case of some errors, since the fdt from vc is now optional for
> barebox's basic function.
> 
> Signed-off-by: Daniel Brát <danek.brat@gmail.com>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 200 +++++++++++++++++-----
>  drivers/watchdog/bcm2835_wdt.c            |  23 +--
>  include/soc/bcm283x/wdt.h                 |  40 +++++
>  3 files changed, 200 insertions(+), 63 deletions(-)
>  create mode 100644 include/soc/bcm283x/wdt.h
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index 12a4f4a0a..5d2196986 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -23,13 +23,27 @@
>  #include <linux/sizes.h>
>  #include <globalvar.h>
>  #include <asm/system_info.h>
> +#include <reset_source.h>
>  
>  #include <mach/core.h>
>  #include <mach/mbox.h>
>  #include <mach/platform.h>
>  
> +#include <soc/bcm283x/wdt.h>
> +
>  #include "lowlevel.h"
>  
> +//https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#BOOT_ORDER
> +static const char * const boot_mode_names[] = {

[0x0] = "unknown"

I am not sure how devinfo global would look like if there are NULL
members.

> +	[0x1] = "sd",
> +	[0x2] = "net",
> +	[0x3] = "rpiboot",
> +	[0x4] = "usbmsd",
> +	[0x5] = "usbc",
> +	[0x6] = "nvme",
> +	[0x7] = "http",
> +};
> +
>  struct rpi_priv;
>  struct rpi_machine_data {
>  	int (*init)(struct rpi_priv *priv);
> @@ -186,54 +200,151 @@ static int rpi_env_init(void)
>  	return 0;
>  }
>  
> -/* Extract /chosen/bootargs from the VideoCore FDT into vc.bootargs
> - * global variable. */
> -static int rpi_vc_fdt_bootargs(void *fdt)
> +/* Extract useful information from the VideoCore FDT we got.
> + * Some parameters are defined here:
> + * https://www.raspberrypi.com/documentation/computers/configuration.html#part4
> + */
> +static void rpi_vc_fdt_parse(void *fdt)
>  {
> -	int ret = 0;
> -	struct device_node *root = NULL, *node;
> -	const char *cmdline;
> +	int ret, len;
> +	struct device_node *root, *chosen, *bootloader;
> +	enum reset_src_type rst_src = RESET_UKWN;
> +	const char *str;
> +	char *dynstr;
> +	u32 num, *pnum;
>  
>  	root = of_unflatten_dtb(fdt, INT_MAX);
> -	if (IS_ERR(root)) {
> -		ret = PTR_ERR(root);
> -		root = NULL;
> -		goto out;
> +	if (IS_ERR(root))
> +		return;
> +
> +	str = of_get_property(root, "serial-number", &len);
> +	if (!str) {
> +		pr_warn("no 'serial-number' property found in vc fdt\n");
> +	} else {
> +		if (str[len - 1] == '\0') {
> +			barebox_set_serial_number(str);
> +		} else {
> +			pr_warn("Malformed property 'serial-number' (not null "
> +				"terminated)\n");
> +			dynstr = xstrndup(str, len);
> +			barebox_set_serial_number(dynstr);
> +			free(dynstr);
> +		}
>  	}

Sorry, some miscommunication here. Just use your normal approach in
the else clause. I had forgotten that some of these properties are
malformed. You can also drop the warning message about null
termination here.

>  
> -	node = of_find_node_by_path_from(root, "/chosen");
> -	if (!node) {
> -		pr_err("no /chosen node\n");
> -		ret = -ENOENT;
> -		goto out;
> +	str = of_get_property(root, "model", &len);
> +	if (!str) {
> +		pr_warn("no 'model' property found in vc fdt\n");
> +	} else {
> +		if (str[len - 1] == '\0') {
> +			barebox_set_model(str);
> +		} else {
> +			pr_warn("Malformed property 'model' (not null "
> +				"terminated)\n");

As above.

> +			dynstr = xstrndup(str, len);
> +			barebox_set_model(dynstr);
> +			free(dynstr);
> +		}
>  	}
>  
> -	cmdline = of_get_property(node, "bootargs", NULL);
> -	if (!cmdline) {
> -		pr_err("no bootargs property in the /chosen node\n");
> -		ret = -ENOENT;
> +	chosen = of_find_node_by_path_from(root, "/chosen");
> +	if (!chosen) {
> +		pr_err("no '/chosen' node found in vc fdt\n");
>  		goto out;
>  	}
>  
> -	globalvar_add_simple("vc.bootargs", cmdline);
> +	bootloader = of_find_node_by_name(chosen, "bootloader");
>  
> -	switch(cpu_architecture()) {
> -	case CPU_ARCH_ARMv6:
> -		globalvar_add_simple("vc.kernel", "kernel.img");
> -		break;
> -	case CPU_ARCH_ARMv7:
> -		globalvar_add_simple("vc.kernel", "kernel7.img");
> -		break;
> -	case CPU_ARCH_ARMv8:
> -		globalvar_add_simple("vc.kernel", "kernel8.img");
> -		break;
> +	str = of_get_property(chosen, "bootargs", &len);
> +	if (!str) {
> +		pr_warn("no 'bootargs' property in the /chosen node\n");
> +	} else {
> +		if (str[len - 1] == '\0') {
> +			globalvar_add_simple("vc.bootargs", str);
> +		} else {
> +			pr_warn("Malformed property 'bootargs' (not null "
> +				"terminated)\n");
> +			globalvar_add_simple("vc.bootargs", xstrndup(str, len));
> +		}
> +	}
> +
> +	str = of_get_property(chosen, "overlay_prefix", &len);
> +	if (!str) {
> +		pr_warn("no 'overlay_prefix' property in the /chosen node\n");
> +	} else {
> +		if (str[len - 1] == '\0'){
> +			globalvar_add_simple("vc.overlay_prefix", str);
> +		} else {
> +			pr_warn("Malformed property 'overlay_prefix' (not null "
> +				"terminated)\n");
> +			globalvar_add_simple("vc.overlay_prefix",
> +					     xstrndup(str, len));
> +		}
> +	}
> +
> +	str = of_get_property(chosen, "os_prefix", &len);
> +	if (!str) {
> +		pr_warn("no 'os_prefix' property in the /chosen node\n");
> +	} else {
> +		if (str[len - 1] == '\0') {
> +			globalvar_add_simple("vc.os_prefix", str);
> +		} else {
> +			pr_warn("Malformed property 'os_prefix' (not null "
> +				"terminated)\n");
> +			globalvar_add_simple("vc.os_prefix", xstrndup(str, len));
> +		}
> +	}
> +
> +	ret = of_property_read_u32(chosen, "boot-mode", &num);
> +	if (ret && bootloader)
> +		ret = of_property_read_u32(bootloader, "boot-mode", &num);
> +	if (ret) {
> +		pr_warn("'boot-mode' property not found\n");
> +	} else {
> +		pnum = xmalloc(sizeof(u32));
> +		*pnum = num;
> +		globalvar_add_simple_enum("vc.boot_mode", pnum,
> +					  boot_mode_names,
> +					  ARRAY_SIZE(boot_mode_names));
>  	}
>  
> +	ret = of_property_read_u32(chosen, "partition", &num);
> +	if (ret && bootloader)
> +		ret = of_property_read_u32(bootloader, "partition", &num);
> +	if (ret) {
> +		pr_warn("'partition' property not found\n");
> +	} else {
> +		pnum = xmalloc(sizeof(u32));
> +		*pnum = num;
> +		globalvar_add_simple_int("vc.boot_partition", pnum, "%u");
> +	}
> +
> +	if (IS_ENABLED(CONFIG_RESET_SOURCE)) {
> +		ret = of_property_read_u32(chosen, "pm_rsts", &num);
> +		if (ret && bootloader)
> +			 ret = of_property_read_u32(bootloader, "rsts", &num);
> +
> +		if (ret) {
> +			pr_warn("'pm_rsts'/'rsts' property not found\n");
> +		} else {
> +/*
> + * https://github.com/raspberrypi/linux/issues/932#issuecomment-93989581
> + */
> +			if (num & PM_RSTS_HADPOR_SET)
> +				rst_src = RESET_POR;
> +			else if (num & PM_RSTS_HADDR_SET)
> +				rst_src = RESET_JTAG;
> +			else if (num & PM_RSTS_HADWR_SET)
> +				rst_src = RESET_WDG;
> +			else if (num & PM_RSTS_HADSR_SET)
> +				rst_src = RESET_RST;
> +			reset_source_set(rst_src);
> +		}
> +	}
>  out:
>  	if (root)
>  		of_delete_node(root);
> -
> -	return ret;
> +	return;
>  }
>  
>  static void rpi_vc_fdt(void)
> @@ -241,7 +352,6 @@ static void rpi_vc_fdt(void)
>  	void *saved_vc_fdt;
>  	struct fdt_header *oftree;
>  	unsigned long magic, size;
> -	int ret;
>  
>  	/* VideoCore FDT was copied in PBL just above Barebox memory */
>  	saved_vc_fdt = (void *)(arm_mem_endmem_get());
> @@ -260,16 +370,23 @@ static void rpi_vc_fdt(void)
>  		return;
>  
>  	size = be32_to_cpu(oftree->totalsize);
> -	if (write_file("/vc.dtb", saved_vc_fdt, size)) {
> +	if (write_file("/vc.dtb", saved_vc_fdt, size))
>  		pr_err("failed to save videocore fdt to a file\n");
> -		return;
> -	}
>  
> -	ret = rpi_vc_fdt_bootargs(saved_vc_fdt);
> -	if (ret) {
> -		pr_err("failed to extract bootargs from videocore fdt: %d\n",
> -									ret);
> -		return;
> +	rpi_vc_fdt_parse(saved_vc_fdt);
> +}
> +
> +static void rpi_set_kernel_name(void) {
> +	switch(cpu_architecture()) {
> +	case CPU_ARCH_ARMv6:
> +		globalvar_add_simple("vc.kernel", "kernel.img");
> +		break;
> +	case CPU_ARCH_ARMv7:
> +		globalvar_add_simple("vc.kernel", "kernel7.img");
> +		break;
> +	case CPU_ARCH_ARMv8:
> +		globalvar_add_simple("vc.kernel", "kernel8.img");
> +		break;
>  	}
>  }
>  
> @@ -348,6 +465,7 @@ static int rpi_devices_probe(struct device_d *dev)
>  	armlinux_set_architecture(MACH_TYPE_BCM2708);
>  	rpi_env_init();
>  	rpi_vc_fdt();
> +	rpi_set_kernel_name();
>  
>  	if (dcfg && dcfg->init)
>  		dcfg->init(priv);
> diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
> index ece80837b..c6e6a289f 100644
> --- a/drivers/watchdog/bcm2835_wdt.c
> +++ b/drivers/watchdog/bcm2835_wdt.c
> @@ -10,28 +10,7 @@
>  #include <restart.h>
>  #include <watchdog.h>
>  
> -#define PM_RSTC		0x1c
> -#define PM_RSTS		0x20
> -#define PM_WDOG		0x24
> -
> -#define PM_WDOG_RESET				0000000000
> -#define PM_PASSWORD				0x5a000000
> -#define PM_WDOG_TIME_SET			0x000fffff
> -#define PM_RSTC_WRCFG_CLR			0xffffffcf
> -#define PM_RSTC_WRCFG_SET			0x00000030
> -#define PM_RSTC_WRCFG_FULL_RESET		0x00000020
> -#define PM_RSTC_RESET				0x00000102
> -
> -#define PM_RSTS_HADPOR_SET			0x00001000
> -#define PM_RSTS_HADSRH_SET			0x00000400
> -#define PM_RSTS_HADSRF_SET			0x00000200
> -#define PM_RSTS_HADSRQ_SET			0x00000100
> -#define PM_RSTS_HADWRH_SET			0x00000040
> -#define PM_RSTS_HADWRF_SET			0x00000020
> -#define PM_RSTS_HADWRQ_SET			0x00000010
> -#define PM_RSTS_HADDRH_SET			0x00000004
> -#define PM_RSTS_HADDRF_SET			0x00000002
> -#define PM_RSTS_HADDRQ_SET			0x00000001
> +#include <soc/bcm283x/wdt.h>
>  
>  #define SECS_TO_WDOG_TICKS(x) ((x) << 16)
>  
> diff --git a/include/soc/bcm283x/wdt.h b/include/soc/bcm283x/wdt.h
> new file mode 100644
> index 000000000..ce97b1eb5
> --- /dev/null
> +++ b/include/soc/bcm283x/wdt.h
> @@ -0,0 +1,40 @@
> +/*
> + * Copyright (C) 2017 Pengutronix, Lucas Stach <l.stach@pengutronix.de>
> + *
> + * Based on code from  Carlo Caione <carlo@carlocaione.org>
> + */
> +
> +#ifndef __BCM2835_WDT_H
> +#define __BCM2835_WDT_H
> +
> +#define PM_RSTC				0x1c
> +#define PM_RSTS				0x20
> +#define PM_WDOG				0x24
> +
> +#define PM_WDOG_RESET			0000000000
> +#define PM_PASSWORD			0x5a000000
> +#define PM_WDOG_TIME_SET		0x000fffff
> +#define PM_RSTC_WRCFG_CLR		0xffffffcf
> +#define PM_RSTC_WRCFG_SET		0x00000030
> +#define PM_RSTC_WRCFG_FULL_RESET	0x00000020
> +#define PM_RSTC_RESET			0x00000102
> +
> +#define PM_RSTS_HADPOR_SET		0x00001000
> +#define PM_RSTS_HADSRH_SET		0x00000400
> +#define PM_RSTS_HADSRF_SET		0x00000200
> +#define PM_RSTS_HADSRQ_SET		0x00000100
> +#define PM_RSTS_HADWRH_SET		0x00000040
> +#define PM_RSTS_HADWRF_SET		0x00000020
> +#define PM_RSTS_HADWRQ_SET		0x00000010
> +#define PM_RSTS_HADDRH_SET		0x00000004
> +#define PM_RSTS_HADDRF_SET		0x00000002
> +#define PM_RSTS_HADDRQ_SET		0x00000001
> +
> +#define PM_RSTS_HADDR_SET \
> +	(PM_RSTS_HADDRQ_SET | PM_RSTS_HADDRF_SET | PM_RSTS_HADDRH_SET)
> +#define PM_RSTS_HADWR_SET \
> +	(PM_RSTS_HADWRQ_SET | PM_RSTS_HADWRF_SET | PM_RSTS_HADWRH_SET)
> +#define PM_RSTS_HADSR_SET \
> +	(PM_RSTS_HADSRQ_SET | PM_RSTS_HADSRF_SET | PM_RSTS_HADSRH_SET)
> +
> +#endif


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


