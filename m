Delivery-date: Tue, 30 May 2023 11:28:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3vey-002for-QW
	for lore@lore.pengutronix.de; Tue, 30 May 2023 11:28:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3vew-0002Ry-Ap
	for lore@pengutronix.de; Tue, 30 May 2023 11:28:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qRrHHupnhtsQnQRlRZLpinxKmBa4q5FoxD0n0EUq4JM=; b=PvWH+TuolBbw8T62qZug6yb0Hk
	Z+JXg8RAee8ZdlO/G+z+IQrx1zlreGJQQ6uRg/Dl9XZB0jgR8lDR+mU70XInm5T+xqAD3VeIRKLaB
	Bre6L7DO7GhLTRUYp2CfBPwC63t5wnRJ1MV6fgEBk3Nr4zq7brvRtVl+5XlUH1MsqoHIkaojYgAUm
	F0uweoFcZD3WtI9s0u+85jQzeOl9z1dosd2vvRntSM4UmD1gzf1l3U7DUR5Fzb4ISH8nFqWVz0LXi
	yi9Yv2ORNOdK11JqrX7nBDroT6LFvr0ERfSR8gCiExItVTa8MmzP7priJgXk5Qia2svJYJCouMPAM
	AxtZai7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3vdz-00DAGC-2d;
	Tue, 30 May 2023 09:27:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3vdw-00DACy-2N
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 09:27:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3vds-0002H1-WE; Tue, 30 May 2023 11:27:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3vdp-00089A-Gh; Tue, 30 May 2023 11:27:45 +0200
Date: Tue, 30 May 2023 11:27:45 +0200
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org
Message-ID: <20230530092745.GZ17518@pengutronix.de>
References: <20230529110627.31257-1-marc@cpdesign.com.au>
 <20230529110627.31257-2-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230529110627.31257-2-marc@cpdesign.com.au>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_022752_777074_919117F8 
X-CRM114-Status: GOOD (  35.12  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 1/3] commands: add pwm manipulation command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 29, 2023 at 09:06:25PM +1000, Marc Reilly wrote:
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
> index 0000000000..94bbbaf1be
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

better bool invert_polarity = false, stop = false.

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

You should also check if both freq and period are given:

	if (freq >= 0 && period >= 0)
		printf("Specify period or frequency, not both\n");

likewise width and duty:

	if (width >= 0 && duty >= 0)
		printf("Specify width or duty cycle, not both\n");

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

It's already an error when:

	state.period_ns == 0 && freq < 0 && period < 0

No need to check for duty here.

> +		printf(" need to know some timing info; freq or duty/period\n");
> +		pwm_free(pwm);
> +		return COMMAND_ERROR_USAGE;
> +	}

Maybe just print the current PWM state when no actions are given?

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

I think this shouldn't be here, at least I don't see why it shouldn't be
possible to configure a PWM with -f x -D y.

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

No need to call pwm_apply_state() twice when the PWM shall be stopped.
This should do it:

	if (stop > 0)
		state.p_enable = false;

	error = pwm_apply_state(pwm, &state);

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


