Delivery-date: Tue, 30 May 2023 11:33:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3vjN-002gHv-3C
	for lore@lore.pengutronix.de; Tue, 30 May 2023 11:33:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3vjK-00036Y-II
	for lore@pengutronix.de; Tue, 30 May 2023 11:33:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YwroS95pnvfKjiPR3khwsaFZHQc7KCSiXs4kxvqguaQ=; b=tqcf/uX7luPHZUEp0IknP3rrZh
	1RYoN5X5FI+HqXGFPU0C+2DOHYmxWy2b2EgWLUJrEek5/pHH1FNt20T989Wf+rK570mGuE3NsVMND
	7d8N29ZyHg7J6MD70Y8QqRZ4L+R5eDwf1qxgsdeP9KAqnryw/mGgyNcsCKBgXJrszemZ0GfnHg8Em
	Yad4Gw26hNSaSREtwEDHPfZwI+Nyb3u2LrO2wa0wRn0wRfkuyUCQp5ecLrEZtHfjCdXjzZMsTmgws
	KyYjuFqrMDvFHAxH0nbN9sh/8vP4YhuAmKjH0tbsjs3pZsgyqRKVJWUElLTojYuls4rwBBsAUKwaY
	jHB9n4nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3viX-00DBE0-1o;
	Tue, 30 May 2023 09:32:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3viU-00DBD8-0p
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 09:32:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3viT-00032d-0Q; Tue, 30 May 2023 11:32:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3viS-0008HS-PW; Tue, 30 May 2023 11:32:32 +0200
Date: Tue, 30 May 2023 11:32:32 +0200
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org
Message-ID: <20230530093232.GA17518@pengutronix.de>
References: <20230529110627.31257-1-marc@cpdesign.com.au>
 <20230529110627.31257-3-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230529110627.31257-3-marc@cpdesign.com.au>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_023234_298496_AD3191D0 
X-CRM114-Status: GOOD (  23.68  )
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
Subject: Re: [PATCH v3 2/3] commands: pwm: add pwm_get command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 29, 2023 at 09:06:26PM +1000, Marc Reilly wrote:
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  commands/Kconfig |  7 ++++++
>  commands/pwm.c   | 56 ++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 63 insertions(+)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index cc7585bbb2..f2a6d22f69 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1940,6 +1940,13 @@ config CMD_PWM
>  
>  	  Controls the pwm values such as period and duty cycle
>  
> +
> +	  pwm_get - get pwm state
> +
> +	  Usage: pwm_get [d]
> +
> +	  Displays the pwm values such as period and duty cycle
> +
>  config CMD_LED
>  	bool
>  	depends on LED
> diff --git a/commands/pwm.c b/commands/pwm.c
> index 94bbbaf1be..18f65b0a59 100644
> --- a/commands/pwm.c
> +++ b/commands/pwm.c
> @@ -141,3 +141,59 @@ BAREBOX_CMD_START(pwm_set)
>  	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
>  	BAREBOX_CMD_HELP(cmd_pwm_set_help)
>  BAREBOX_CMD_END
> +
> +#define HZ_FROM_NANOSECONDS(x) (1000000000UL/(x))
> +
> +static int do_pwm_get(int argc, char *argv[])
> +{
> +	struct pwm_device *pwm = NULL;
> +	struct pwm_state state;
> +	char *devname = NULL;
> +	int opt;
> +
> +	while ((opt = getopt(argc, argv, "d:")) > 0) {
> +		switch (opt) {
> +		case 'd':
> +			devname = optarg;
> +			break;
> +		}
> +	}
> +
> +	if (!devname) {
> +		printf(" need to specify a device\n");
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
> +	printf(" pwm params for '%s':\n", devname);
> +	printf("  period   : %u (ns)\n", state.period_ns);
> +	printf("  duty     : %u (ns)\n", state.duty_ns);
> +	printf("  enabled  : %d\n", state.p_enable);
> +	printf("  polarity : %s\n", state.polarity == 0 ? "Normal" : "Inverted");
> +	printf("  freq     : %lu (Hz)\n", HZ_FROM_NANOSECONDS(state.period_ns));

Not sure if this deserves an extra command. You could print the
information along with the pwm_set command when no action is given
or when an additional -v (for verbose) is given.

When doint this the command could simply be named 'pwm' instead of
'pwm_set'

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


