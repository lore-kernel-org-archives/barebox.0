Delivery-date: Fri, 26 May 2023 11:35:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2TrA-00Eshg-G6
	for lore@lore.pengutronix.de; Fri, 26 May 2023 11:35:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Tr7-0007gG-Q4
	for lore@pengutronix.de; Fri, 26 May 2023 11:35:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fQ2va830vz6dR3lpKt6+51cUngz27ew/ToCeCE9urEw=; b=Mztr9Q2DxupMMOk/qMJ/RakbI7
	0IutMl6QrrAsWPm4k2YvsZ9tVeX9730rdHvGEL5qBkY88rdZcIi9xaSI/Eds7OrrYrZisBisYqOdy
	pRBoMgMMZUXqFgAQsb5ZBJ9xiXcKm0cn9Gra11AB5hj/I1mJL5pk69Fjf1Og+rFON9ggscSBf4I2D
	remwoqDWOZBCIdYLjff51pmhOjoElgOJMfmawEHg04Da4sIR/SbeM53D035vMNlWRbqNWwgTNuHRA
	uMH4SIMSI+GEMh8N+xC84E923lps+XGMjnAZH9mv3OA9C9Oxv3r4vDZz0+qtced4kBvb3yMa7+P5U
	0QDjgCHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Tpf-001pRS-1T;
	Fri, 26 May 2023 09:33:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Tpb-001pPh-2q
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 09:33:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q2TpX-0007N7-Mw
	for barebox@lists.infradead.org; Fri, 26 May 2023 11:33:51 +0200
Message-ID: <26f04a40-a87c-0ddd-c2c2-19df430c4842@pengutronix.de>
Date: Fri, 26 May 2023 11:33:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US, de-DE
To: barebox@lists.infradead.org
References: <20230526082313.29694-1-marc@cpdesign.com.au>
 <20230526082313.29694-2-marc@cpdesign.com.au>
From: Johannes Zink <j.zink@pengutronix.de>
In-Reply-To: <20230526082313.29694-2-marc@cpdesign.com.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_023355_914661_BB0AF014 
X-CRM114-Status: GOOD (  29.30  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 1/1] commands: add pwm manipulation command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Marc,

thanks for your patch.

On 5/26/23 10:23, Marc Reilly wrote:
> This introduces a command to set parameters for a pwm device.
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>   commands/Kconfig  |  11 +++++
>   commands/Makefile |   1 +
>   commands/pwm.c    | 111 ++++++++++++++++++++++++++++++++++++++++++++++
>   3 files changed, 123 insertions(+)
>   create mode 100644 commands/pwm.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 4d3ff631a8..6b7d0bfd79 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1929,6 +1929,17 @@ config CMD_I2C
>   		  -w		use word (16 bit) wide access
>   		  -v		verbose
>   
> +
> +config CMD_PWM
> +	bool
> +	depends on PWM
> +	prompt "PWM commands: pwm_set"
> +	help
> +	  pwm_set - set pwm state
> +
> +	  Usage: i2c_set - set pwm parameters

this should be pwm_set

> +
> +
>   config CMD_LED
>   	bool
>   	depends on LED
> diff --git a/commands/Makefile b/commands/Makefile
> index 98625a0373..011ae59427 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -69,6 +69,7 @@ obj-$(CONFIG_CMD_GPIO)		+= gpio.o
>   obj-$(CONFIG_CMD_UNCOMPRESS)	+= uncompress.o
>   obj-$(CONFIG_CMD_I2C)		+= i2c.o
>   obj-$(CONFIG_CMD_SPI)		+= spi.o
> +obj-$(CONFIG_CMD_PWM)		+= pwm.o
>   obj-$(CONFIG_CMD_MIPI_DBI)	+= mipi_dbi.o
>   obj-$(CONFIG_CMD_UBI)		+= ubi.o
>   obj-$(CONFIG_CMD_UBIFORMAT)	+= ubiformat.o
> diff --git a/commands/pwm.c b/commands/pwm.c
> new file mode 100644
> index 0000000000..8a26430e19
> --- /dev/null
> +++ b/commands/pwm.c
> @@ -0,0 +1,111 @@
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
> +	char namebuf[128];
> +	char *devname = NULL;
> +	int n = -1, polarity = -1, duty = -1, period = -1, freq = -1, opt;
> +
> +	while ((opt = getopt(argc, argv, "n:d:D:P:f:i:")) > 0) {
> +		switch (opt) {
> +		case 'n':
> +			n = simple_strtol(optarg, NULL, 0);
> +			break;
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
> +		case 'i':
> +			polarity = simple_strtol(optarg, NULL, 0);
> +			break;
> +		}
> +	}
> +
> +	if ((n < 0) && !devname) {
> +		printf(" need to specify a device\n");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +	if ((freq < 0) && (duty < 0) && (period < 0)) {
> +		printf(" need to know some timing info; freq or dury/period\n");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	if (!devname) {
> +		sprintf(namebuf, "pwm%d", n);
> +	} else {
> +		strcpy(namebuf, devname);
> +	}
> +
> +	pwm = pwm_request(namebuf);
> +	if (!pwm) {
> +		printf("pwm device %s not found\n", namebuf);
> +		return -ENODEV;
> +	}
> +
> +	pwm_get_state(pwm, &state);
> +	if (polarity >= 0)
> +		state.polarity = polarity;
> +
> +	if (freq > 0) {
> +		state.p_enable = true;
> +		state.period_ns = HZ_TO_NANOSECONDS(freq);
> +		pwm_set_relative_duty_cycle(&state, 50, 100);
> +	} else if (duty > 0) {
> +		state.p_enable = true;
> +		state.period_ns = period;
> +		state.duty_ns = duty;
> +	} else {
> +		state.p_enable = false;

This is probably not doing what you expect it to do. To switch off the 
PWM generation, you need to set

state.p_enable = true;
state.period_ns = <something_larger_than 0>;
state.duty_ns = 0;

Please see [1] for more details.

Best regards,
Johannes

[1] 
https://pengutronix.de/de/blog/2023-03-14-pulse-width-modulation-is-easy-isn-t-it-turning-it-off-and-on-again.html

> +	}
> +
> +	error = pwm_apply_state(pwm, &state);
> +
> +	pwm_free(pwm);
> +
> +	return error;
> +}
> +
> +BAREBOX_CMD_HELP_START(pwm_read)
> +BAREBOX_CMD_HELP_TEXT("Sets a pwm device parameters.")
> +BAREBOX_CMD_HELP_TEXT(" Specify the device either by device name or pwm number")
> +BAREBOX_CMD_HELP_TEXT(" Timings can either be specified via period + duty (on) duration,")
> +BAREBOX_CMD_HELP_TEXT("  or via frequency.")
> +BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT("-d number\t", "device name (eg 'pwm0')")
> +BAREBOX_CMD_HELP_OPT("-n number\t", "pwm chip number (default 0)")
> +BAREBOX_CMD_HELP_OPT("-D number\t", "duty cycle (ns)")
> +BAREBOX_CMD_HELP_OPT("-P number\t", "period (ns)")
> +BAREBOX_CMD_HELP_OPT("-f number\t", "frequency (Hz)")
> +BAREBOX_CMD_HELP_OPT("-i number\t", "line inverted polarity")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(pwm_set)
> +	.cmd		= do_pwm_set,
> +	BAREBOX_CMD_DESC("set pwm")
> +	BAREBOX_CMD_OPTS("[-dnDPfp]")
> +	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
> +	BAREBOX_CMD_HELP(cmd_pwm_read_help)
> +BAREBOX_CMD_END

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



