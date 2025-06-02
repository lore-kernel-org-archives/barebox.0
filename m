Delivery-date: Mon, 02 Jun 2025 11:43:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1ho-002uiG-1M
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 11:43:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1hn-0007l0-Nc
	for lore@pengutronix.de; Mon, 02 Jun 2025 11:43:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S/Gi5EHBeshYxCCnjmofX7uJeV9Aq2BHC7szO1GVWSQ=; b=ZzpYxuRhGuBsxBSx5MmFdJ2bsb
	wzb8rydfpHHmXbydVSGLej7mOpM7E1sT98Y3dvTWjhYCxGYu466K9EB38ACdgXt+ZE+eIYxwiLePl
	FtDPccQuwZRr578VJTWt+n/uvd7Tommu6CfYVIM7+dIfXNZw0mEyfQHCi7SlCpoh+sBTpHdco1kji
	Vd9l1/UjgRqEqNjOU0TEebTqyxmSBV8QNTjJdL1uCNk2dbDduR4f5wjeOEKYcE6WJpzD9bwqyxpC7
	Xk2KOZRFfm+VkN/ZqaMLti+an2FhdG8O+YFlg4df3ER6hzrlEkf9LGz1D74z58QD078Z0rcQ6RD9A
	y6nVQ1ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1hK-000000075qW-30GH;
	Mon, 02 Jun 2025 09:43:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1g5-000000075ii-06px
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 09:41:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uM1g3-000742-Lo; Mon, 02 Jun 2025 11:41:55 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM1g3-001Qrf-1a;
	Mon, 02 Jun 2025 11:41:55 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM1g3-006art-1D;
	Mon, 02 Jun 2025 11:41:55 +0200
Date: Mon, 2 Jun 2025 11:41:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aD1x4zH2G8mq-ywY@pengutronix.de>
References: <20250530114106.1009454-1-o.rempel@pengutronix.de>
 <20250530114106.1009454-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250530114106.1009454-4-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_024157_067106_D194DA72 
X-CRM114-Status: GOOD (  37.66  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 3/7] commands: nvmem: Add support for creating dynamic
 rmem devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, May 30, 2025 at 01:41:02PM +0200, Oleksij Rempel wrote:
> The 'nvmem' command is extended to allow the creation of dynamic
> RAM-backed NVMEM devices (rmem). This functionality is useful for
> testing NVMEM operations, for scripts that require temporary, writable
> NVMEM areas, or when a persistent NVMEM device is not available or
> necessary.
> 
> This patch introduces the following new options to the 'nvmem' command:
> 
> -c : Creates a new rmem NVMEM device of the specified . The size can be
> given with common suffixes (e.g., K, M). The command enforces that the
> size is non-zero and does not exceed a defined maximum (NVMEM_MAX_SIZE,
> defaulting to 1MB). This option requires CONFIG_NVMEM_RMEM to be
> enabled.
> 
> -v : When used in conjunction with the -c option, this stores the name
> of the newly created rmem device (e.g., "rmem0") into the environment
> variable specified by . This allows subsequent commands or scripts to
> easily reference the dynamic NVMEM device.
> 
> If invoked without any options, the 'nvmem' command retains its original
> behavior of listing all currently available NVMEM devices.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  commands/nvmem.c | 124 ++++++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 118 insertions(+), 6 deletions(-)
> 
> diff --git a/commands/nvmem.c b/commands/nvmem.c
> index a0e3d092e3cf..5f60e70e62c3 100644
> --- a/commands/nvmem.c
> +++ b/commands/nvmem.c
> @@ -1,24 +1,136 @@
>  // SPDX-License-Identifier: GPL-2.0
>  // SPDX-FileCopyrightText: © 2021 Ahmad Fatoum, Pengutronix
>  
> -#include <common.h>
>  #include <command.h>
> +#include <common.h>
> +#include <environment.h>
> +#include <getopt.h>
>  #include <linux/nvmem-consumer.h>
> +#include <linux/sizes.h>
>  
> -static int do_nvmem(int argc, char *argv[])
> +/* Maximum size for dynamically created NVMEM devices.
> + * This is a reasonable limit for RAM-backed devices, but can be adjusted
> + * based on system capabilities and requirements.
> + */
> +#define NVMEM_MAX_SIZE		SZ_1M
> +
> +/* Static counter to ensure unique device IDs for dynamically created rmem
> + * devices
> + */
> +static int dynamic_rmem_idx;
> +
> +/**
> + * nvmem_create_dynamic_rmem - Creates a dynamic RAM-backed NVMEM device.
> + * @create_size: Size of the NVMEM device to create.
> + * @var_name: Optional environment variable name to store the created device's
> + *            name.
> + *
> + * Return: 0 on success, negative error code on failure.
> + */
> +static int nvmem_create_dynamic_rmem(unsigned long create_size,
> +				     const char *var_name)
> +{
> +	struct device *dev;
> +	void *buffer;
> +	int ret = 0;
> +
> +	buffer = xzalloc(create_size);
> +	if (!buffer)
> +		return -ENOMEM;

xzalloc does not fail.

> +
> +	dev = add_generic_device("rmem", dynamic_rmem_idx, NULL,
> +				 (resource_size_t)(uintptr_t)buffer,
> +				 (resource_size_t)create_size,
> +				 IORESOURCE_MEM, NULL);
> +
> +	if (var_name)
> +		ret = setenv(var_name, dev_name(dev));
> +
> +	dynamic_rmem_idx++;
> +
> +	return ret;
> +}
> +
> +static int nvmem_parse_and_validate_create_size(const char *size_arg,
> +						unsigned long *out_size)
>  {
> -	nvmem_devices_print();
> +
> +	if (!IS_ENABLED(CONFIG_NVMEM_RMEM)) {
> +		printf("Error: rmem NVMEM driver (CONFIG_NVMEM_RMEM) is not enabled in this build.\n");
> +		return -EINVAL;
> +	}
> +
> +	*out_size = strtoul_suffix(optarg, NULL, 0);
> +	if (!*out_size) {
> +		printf("Error: Invalid size '%s' for -c option. Must be non-zero.\n",
> +		       optarg);
> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	if (*out_size > NVMEM_MAX_SIZE) {
> +		printf("Error: Size '%lu' exceeds maximum allowed size of %d bytes.\n",
> +		       *out_size, NVMEM_MAX_SIZE);
> +		return COMMAND_ERROR_USAGE;
> +	}
>  
>  	return 0;
>  }
>  
> +static int do_nvmem(int argc, char *argv[])
> +{
> +	unsigned long create_size = 0;
> +	char *optarg_v = NULL;
> +	int ret = 0;
> +	int opt;
> +
> +	while ((opt = getopt(argc, argv, "c:v:h")) != -1) {
> +		switch (opt) {
> +		case 'c':
> +			ret = nvmem_parse_and_validate_create_size(optarg,
> +								&create_size);
> +			if (ret < 0)
> +				return ret;

You return COMMAND_ERROR_USAGE from
nvmem_parse_and_validate_create_size() which is > 0, so the error check
won't trigger in this case.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


