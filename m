Delivery-date: Mon, 29 May 2023 11:24:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3Z6t-001AFh-Bp
	for lore@lore.pengutronix.de; Mon, 29 May 2023 11:24:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3Z6r-0002gA-0G
	for lore@pengutronix.de; Mon, 29 May 2023 11:24:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pm2eUW5CcFa/6GRVKWGqpo6m6LCXNwQl/Rti1Efo1vI=; b=yOjseAhr+04WCzeqoX0ClbPJcj
	2s1JK7H64H7T/DOgT5X/9ENnjn+4iFH9Vf0Uw9xJs7k1ao4Uhbq6QmQHyR2Tugt/ANXp0J07bP7dO
	zDBvq0+gPYYqV9+w+soaZSNpVo3YU7LJZYwNk9uynKxCRxcqKWR3XOveuJvaXIpSe/xbJ9sgg75bE
	PikuBuGf4Kj4oUJnKVTHNYPkGy24lW5zqj+cm5kJmS1Okisac4LEeH9Y5N9btBs8Zt/AoBRrPv8xt
	vAjOb1OmWGh1YRDNTWQs/6o7bJhR99XL/qWPQMHdqScP6bxlj1h3/rEpyGyPf7RXV5z5rZUNjm81b
	0HDzocNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3Z5z-009pMj-1q;
	Mon, 29 May 2023 09:23:19 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3Z5v-009pLs-2b
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 09:23:17 +0000
X-GND-Sasl: jmaselbas@zdiv.net
X-GND-Sasl: jmaselbas@zdiv.net
Received: by mail.gandi.net (Postfix) with ESMTPSA id 31B0E240002;
	Mon, 29 May 2023 09:23:06 +0000 (UTC)
Date: Mon, 29 May 2023 11:23:05 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org
Message-ID: <ZHRu-XrMGdZWLpk2@tour>
References: <20230529001318.12309-1-marc@cpdesign.com.au>
 <20230529001318.12309-2-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230529001318.12309-2-marc@cpdesign.com.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_022316_156750_82B14A87 
X-CRM114-Status: GOOD (  29.16  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/3] commands: add pwm manipulation command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Mon, May 29, 2023 at 10:13:16AM +1000, Marc Reilly wrote:
> This introduces a command to set parameters for a pwm device.
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  commands/Kconfig  |  11 ++++
>  commands/Makefile |   1 +
>  commands/pwm.c    | 143 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 155 insertions(+)
>  create mode 100644 commands/pwm.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 4d3ff631a8..cc7585bbb2 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1929,6 +1929,17 @@ config CMD_I2C
>  		  -w		use word (16 bit) wide access
>  		  -v		verbose
>  
> +config CMD_PWM
> +	bool
> +	depends on PWM
> +	prompt "PWM commands: pwm_set"
> +	help
> +	  pwm_set - set pwm state
> +
> +	  Usage: pwm_set [dDPfwis]
> +
> +	  Controls the pwm values such as period and duty cycle
> +
>  config CMD_LED
>  	bool
>  	depends on LED
> diff --git a/commands/Makefile b/commands/Makefile
> index 98625a0373..011ae59427 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -69,6 +69,7 @@ obj-$(CONFIG_CMD_GPIO)		+= gpio.o
>  obj-$(CONFIG_CMD_UNCOMPRESS)	+= uncompress.o
>  obj-$(CONFIG_CMD_I2C)		+= i2c.o
>  obj-$(CONFIG_CMD_SPI)		+= spi.o
> +obj-$(CONFIG_CMD_PWM)		+= pwm.o
>  obj-$(CONFIG_CMD_MIPI_DBI)	+= mipi_dbi.o
>  obj-$(CONFIG_CMD_UBI)		+= ubi.o
>  obj-$(CONFIG_CMD_UBIFORMAT)	+= ubiformat.o
> diff --git a/commands/pwm.c b/commands/pwm.c
> new file mode 100644
> index 0000000000..a21b918c89
> --- /dev/null
> +++ b/commands/pwm.c
> @@ -0,0 +1,143 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: © 2023 Marc Reilly <marc@cpdesign.com.au>
> +
> +/* pwm - pwm commands */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <getopt.h>
> +#include <pwm.h>
> +
> +#define HZ_TO_NANOSECONDS(x) (1000000000UL/(x))
> +
> +static int do_pwm_set(int argc, char *argv[])
> +{
> +	struct pwm_device *pwm = NULL;
> +	struct pwm_state state;
> +	int error = 0;
> +	char *devname = NULL;
> +	int duty = -1, period = -1;
> +	int freq = -1, width = -1;
> +	int invert_polarity = -1, stop = -1;
> +	int opt;
> +
> +	while ((opt = getopt(argc, argv, "d:D:P:f:w:is")) > 0) {
> +		switch (opt) {
> +		case 'd':
> +			devname = optarg;
> +			break;
> +		case 'D':
> +			duty = simple_strtol(optarg, NULL, 0);
> +			break;
> +		case 'P':
> +			period = simple_strtol(optarg, NULL, 0);
> +			break;
> +		case 'f':
> +			freq = simple_strtol(optarg, NULL, 0);
> +			break;
> +		case 'w':
> +			width = simple_strtol(optarg, NULL, 0);
> +			break;
> +		case 'i':
> +			invert_polarity = 1;
> +			break;
> +		case 's':
> +			stop = 1;
> +			break;
> +		}
> +	}
> +
> +	if (!devname) {
> +		printf(" need to specify a device\n");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +	if ((freq == 0) || (period == 0)) {
> +		printf(" period or freqency needs to be non-zero\n");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +	if (width > 100) {
> +		printf(" width (%% duty cycle) can't be more than 100%%\n");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	pwm = pwm_request(devname);
> +	if (!pwm) {
> +		printf(" pwm device %s not found\n", devname);
> +		return -ENODEV;
> +	}
> +
> +	pwm_get_state(pwm, &state);
> +
> +	if ((state.period_ns == 0)
> +			&& (freq < 0) && (duty < 0) && (period < 0)) {
> +		printf(" need to know some timing info; freq or dury/period\n");
typo: s/dury/duty/

> +	    pwm_free(pwm);
indentation

> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	if (invert_polarity >= 0)
> +		state.polarity = invert_polarity;
> +
> +	/* period */
> +	if (freq > 0) {
> +		state.p_enable = true;
> +		state.period_ns = HZ_TO_NANOSECONDS(freq);
> +		if (width < 0) {
> +			width = 50;
> +		}
> +	} else if (period > 0) {
> +		state.p_enable = true;
> +		state.period_ns = period;
> +	}
> +
> +	/* duty */
> +	if (width >= 0) {
> +		pwm_set_relative_duty_cycle(&state, width, 100);
> +	} else if (duty >= 0) {
> +		if (duty > state.period_ns)
> +			printf(" warning: duty_ns is greater than period\n");
> +
> +		state.duty_ns = duty;
> +	}
> +
> +	error = pwm_apply_state(pwm, &state);
> +
> +	if (stop > 0) {
> +		state.p_enable = false;
> +		error = pwm_apply_state(pwm, &state);
> +	}
> +
> +	pwm_free(pwm);
> +
> +	return error;
nit: return 0

> +}
> +
> +BAREBOX_CMD_HELP_START(pwm_set)
> +BAREBOX_CMD_HELP_TEXT("Sets a pwm device parameters.")
> +BAREBOX_CMD_HELP_TEXT(" Specify the device by device name")
> +BAREBOX_CMD_HELP_TEXT(" Timings can either be specified via period + duty (on) duration,")
> +BAREBOX_CMD_HELP_TEXT("  or via frequency. Duty can be given either as a percentage or time.")
> +BAREBOX_CMD_HELP_TEXT(" If a parameter is not specified, the current value will be used")
> +BAREBOX_CMD_HELP_TEXT("  where possible - except when setting frequency, in which case")
> +BAREBOX_CMD_HELP_TEXT("  the 'width' will default to 50%.")
> +BAREBOX_CMD_HELP_TEXT(" Stopping the device does not necessarily set the output to inactive.")
> +BAREBOX_CMD_HELP_TEXT(" To set an output to inactive state, set the duty to 0.")
> +BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT("-d string", "device name (eg 'pwm0')")
> +BAREBOX_CMD_HELP_OPT("-D number", "duty cycle (ns)")
> +BAREBOX_CMD_HELP_OPT("-P number", "period (ns)")
> +BAREBOX_CMD_HELP_OPT("-f number", "frequency (Hz)")
> +BAREBOX_CMD_HELP_OPT("-w number", "duty cycle (%) - the on 'width' of each cycle")
> +BAREBOX_CMD_HELP_OPT("-i\t", "line inverted polarity")
> +BAREBOX_CMD_HELP_OPT("-s\t", "stop (disable) the pwm device")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(pwm_set)
> +	.cmd		= do_pwm_set,
> +	BAREBOX_CMD_DESC("set pwm")
> +	BAREBOX_CMD_OPTS("[-dDPfwis]")
> +	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
> +	BAREBOX_CMD_HELP(cmd_pwm_set_help)
> +BAREBOX_CMD_END
> -- 
> 2.35.3
> 
> 


