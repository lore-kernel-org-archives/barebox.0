Delivery-date: Tue, 06 Jun 2023 11:08:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SgN-00Cqo9-Mh
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 11:08:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SgL-0002Rp-8L
	for lore@pengutronix.de; Tue, 06 Jun 2023 11:08:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MsF8q8iTsvlftMuAefiisSBblnO60FJiY5oikjq+two=; b=MMenc1iUWDKZ8z/70g0fQKGdj5
	kO/hggw3m6/PynA2hJ+4q2kcI0Qk1yqi51uFyT/TSWA5u/gILMuVZUfvrxXg2yzaiJxefQUlrq9fw
	M8G4SFNupfYKT5yJO6khbvUdu6zIWgN9rtPc0DetIvmIe6tkheRCww+V2LBdNUlBsmX/6u4h1aW8U
	JB5BcYTY/zeRwuOItyC4wo4E1wyHO0DcEjlmfe0zyIDwH7g9odCPt7E4uq2tfkdFHwdVUM031qWjs
	NSCbCGe7DJuZXzqcs+6GsWJPzJKVbvvYKHclJwh5lqq8l1ls+DkPEoyd47phlrtmzXoXTxx5LVD9b
	ykdmQ5pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Sfd-000wfV-2o;
	Tue, 06 Jun 2023 09:08:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Sfa-000wev-13
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 09:08:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6SfZ-0002JM-2t; Tue, 06 Jun 2023 11:08:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6SfT-0002ob-6t; Tue, 06 Jun 2023 11:07:55 +0200
Date: Tue, 6 Jun 2023 11:07:55 +0200
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org
Message-ID: <20230606090755.GU18491@pengutronix.de>
References: <20230602045306.31258-1-marc@cpdesign.com.au>
 <20230602045306.31258-2-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230602045306.31258-2-marc@cpdesign.com.au>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_020802_363313_A5E44125 
X-CRM114-Status: GOOD (  22.06  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4 1/2] commands: add pwm manipulation command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Marc,

I applied this with some small changes.

On Fri, Jun 02, 2023 at 02:53:05PM +1000, Marc Reilly wrote:
> +static int do_pwm_cmd(int argc, char *argv[])
> +{
> +	struct pwm_device *pwm = NULL;
> +	struct pwm_state state, orig_state;
> +	int error = 0;
> +	char *devname = NULL;
> +	int duty = -1, period = -1;
> +	int freq = -1, width = -1;
> +	bool invert_polarity = false, stop = false;
> +	bool use_default_width = false;
> +	bool verbose = false;
> +	int opt;
> +
> +	while ((opt = getopt(argc, argv, "d:D:P:f:w:F:isv")) > 0) {
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
> +		case 'F':
> +			/* convenience option for changing frequency without
> +			 * having to specify duty width */
> +			use_default_width = true;
> +			/* fallthrough */
> +		case 'f':
> +			freq = simple_strtol(optarg, NULL, 0);
> +			break;
> +		case 'w':
> +			width = simple_strtol(optarg, NULL, 0);
> +			break;
> +		case 'i':
> +			invert_polarity = true;
> +			break;
> +		case 's':
> +			stop = true;
> +			break;
> +		case 'v':
> +			verbose = true;
> +			break;

		default:
			return COMMAND_ERROR_USAGE;

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
> +	if (freq >= 0 && period >= 0) {
> +		printf(" specify period or frequency, not both\n");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +	if (duty >= 0 && width >= 0) {
> +		printf(" specify duty or width, not both\n");
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
> +	/* argc will be at least 3 with a valid devname */
> +	if (verbose || (argc <= 3)) {
> +		printf("pwm params for '%s':\n", devname);
> +		printf("  period   : %u (ns)\n", state.period_ns);
> +		printf("  duty     : %u (ns)\n", state.duty_ns);
> +		printf("  enabled  : %d\n", state.p_enable);
> +		printf("  polarity : %s\n", state.polarity == 0 ? "Normal" : "Inverted");
> +		printf("  freq     : %lu (Hz)\n", HZ_FROM_NANOSECONDS(state.period_ns));

This results in a division by zero crash on a disabled PWM. I changed
this to:

		if (state.period_ns)
			printf("  freq     : %lu (Hz)\n", HZ_FROM_NANOSECONDS(state.period_ns));
		else
			printf("  freq     : -\n");


> +BAREBOX_CMD_HELP_OPT("-d string", "device name (eg 'pwm0')")
> +BAREBOX_CMD_HELP_OPT("-D number", "duty cycle (ns)")
> +BAREBOX_CMD_HELP_OPT("-P number", "period (ns)")
> +BAREBOX_CMD_HELP_OPT("-f number", "frequency (Hz)")
> +BAREBOX_CMD_HELP_OPT("-w number", "duty cycle (%) - the on 'width' of each cycle")

Replaced 'number' with <duty_ns> and similar.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


