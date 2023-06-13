Delivery-date: Tue, 13 Jun 2023 08:46:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xnY-004pnL-3B
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 08:46:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xnV-0003D5-Sc
	for lore@pengutronix.de; Tue, 13 Jun 2023 08:46:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wr2VB5eWWP0SnMasnC6xuDDpVoW2VXCvyCATvLEMDQs=; b=TPuYyrWFiigoIvHbFmDny3SF4L
	p0CUFMSNKtjM/il5tNHaPXIG1A/CnFRso8QnY6kxfYxEEM/RzG5bUeYS9VgjYuntKAXFgRhecB+J2
	sslnFMDLj+JrgvQ2AUzMvd5KgoIboEGXKVuyDZTfF4xtaZLQcFu517Af73MXXFfV4JcNqcxlZIyTZ
	maQT4TlqQtWzObSlND5Z+J8WAvICvQiiJloISx8Xua7SjCq0QyjBa2q257yddoCPsUhY8WmEvi2w4
	sg56/gs6DHh60ViaMJCYQOEGMfVXH2E4Fc+uKl8UuWta7FzZcqGdzyLl933aELEfLBdOg1z64ubSa
	mcCovFmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xmN-00779Z-0C;
	Tue, 13 Jun 2023 06:45:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xmJ-00778y-2X
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 06:45:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8xmI-0002q5-Ee; Tue, 13 Jun 2023 08:45:18 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8xmI-0004tv-87; Tue, 13 Jun 2023 08:45:18 +0200
Date: Tue, 13 Jun 2023 08:45:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230613064518.up4nhv3t2iqcya4s@pengutronix.de>
References: <20230612123232.3071957-1-s.hauer@pengutronix.de>
 <20230612123232.3071957-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612123232.3071957-5-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_234519_828782_B889D0E1 
X-CRM114-Status: GOOD (  21.74  )
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
Subject: Re: [PATCH 4/5] dmesg: implement dmesg -n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 23-06-12, Sascha Hauer wrote:
> Under Linux dmesg -n can be used to set the console loglevel. Implement
> the same for barebox.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/dmesg.c | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/dmesg.c b/commands/dmesg.c
> index 00e5a159e0..953bdb2068 100644
> --- a/commands/dmesg.c
> +++ b/commands/dmesg.c
> @@ -77,8 +77,9 @@ static int do_dmesg(int argc, char *argv[])
>  	int opt, i;
>  	int delete_buf = 0, emit = 0;
>  	unsigned flags = 0, levels = 0;
> +	char *set = NULL;
>  
> -	while ((opt = getopt(argc, argv, "ctderl:")) > 0) {
> +	while ((opt = getopt(argc, argv, "ctderl:n:")) > 0) {
>  		switch (opt) {
>  		case 'c':
>  			delete_buf = 1;
> @@ -100,11 +101,25 @@ static int do_dmesg(int argc, char *argv[])
>  		case 'r':
>  			flags |= BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME;
>  			break;
> +		case 'n':
> +			set = optarg;
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
>  	}
>  
> +	if (set) {
> +		int level = str_to_loglevel(set);
> +
> +		if (level < 0)
> +			return COMMAND_ERROR;
> +
> +		barebox_loglevel = level;

Not really realted to this patch, but should we make 'barebox_loglevel'
private and use a setter like console_set_loglevel()? Asking because
console_common.c is the currently the only upstream user.

Regards,
  Marco

> +
> +		return 0;
> +	}
> +
>  	if (emit) {
>  		char *buf;
>  		int len = 0;
> @@ -145,6 +160,7 @@ BAREBOX_CMD_HELP_OPT ("-c",		"Delete messages after printing them")
>  BAREBOX_CMD_HELP_OPT ("-d",		"Show a time delta to the last message")
>  BAREBOX_CMD_HELP_OPT ("-e <msg>",	"Emit a log message")
>  BAREBOX_CMD_HELP_OPT ("-l <vdebug|debug|info|notice|warn|err|crit|alert|emerg>", "Restrict output to the given (comma-separated) list of levels")
> +BAREBOX_CMD_HELP_OPT ("-n <loglevel>", "Set level at which printing of messages is done to the console")
>  BAREBOX_CMD_HELP_OPT ("-r",		"Print timestamp and log-level prefixes.")
>  BAREBOX_CMD_HELP_OPT ("-t",		"Show timestamp informations")
>  BAREBOX_CMD_HELP_END
> -- 
> 2.39.2
> 
> 
> 


