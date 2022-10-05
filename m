Delivery-date: Wed, 05 Oct 2022 08:31:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofxw2-006Sol-39
	for lore@lore.pengutronix.de; Wed, 05 Oct 2022 08:31:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofxw0-00056z-Vp
	for lore@pengutronix.de; Wed, 05 Oct 2022 08:31:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x7zftKMa8DccQ/aLB1QucUqDvYonB5CcYFlZ68ByWaY=; b=Z12yZ5ucQYTesWPf392dcXYmZ2
	iu6WZJ6SOZQ/KGS/JrFmRO5531RZ2YkFYoXoznoUMoaTomoidRX96eW1nP/t0NmS8rX/jxJjBD7eL
	mCzRMC3v7rCX46Cx8FQF4zOLbkZRNMU/5K0ne8VXTd3tKdYrp08BbifxvhcM+JY8cd8zARTw/0YDn
	WpoV1yuL113ifHwz5orwAIxKKlMaBc+RefDWSZh/19nMP5Y5i4Hgz74byzYfo6/tf9ARh2opoP7gK
	6XzGkKf4qNJmcCvS389UuHxsc319dRvFub0A69InfG/JDEO3iV8TYETI6aiQ70u2A4Fq20UIU6kBv
	W7BZepRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofxud-00CfVt-2V; Wed, 05 Oct 2022 06:29:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofxuX-00CfV7-W8
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 06:29:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofxuW-0004dI-Nf; Wed, 05 Oct 2022 08:29:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofxuW-0004w9-Gt; Wed, 05 Oct 2022 08:29:40 +0200
Date: Wed, 5 Oct 2022 08:29:40 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221005062940.GN986@pengutronix.de>
References: <20220930154145.754181-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220930154145.754181-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_232942_052751_8305E33E 
X-CRM114-Status: GOOD (  28.27  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: console_common: output log messages to
 CONSOLE_STDERR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 30, 2022 at 05:41:45PM +0200, Ahmad Fatoum wrote:
> Like U-Boot, barebox has two standard output streams:
> CONSOLE_STDOUT and CONSOLE_STDERR in addition to the input stream
> CONSOLE_STDIN.
> 
> From a consumer view, the console.active device parameter allows
> restricting which of these streams interact with a given console.
> 
> From a provider view, only CONSOLE_STDOUT is ever used. dputs
> dputc allow passing in CONSOLE_STDERR instead, but nothing in-tree
> does so.
> 
> Change this by having all log messages (e.g. pr_debug or dev_err)
> go to CONSOLE_STDERR. For nearly all systems that just use the default
> of console.active="ioe" or "oe", there is no difference. But now
> systems that use either "o" or "e" can use different console
> devices for barebox log messages and for standard output by commands.
> This is especially useful to debug interactive applications like edit
> or for monitoring barebox debug messages during execution of payloads
> when barebox acts as EFI loader.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/console_common.c | 10 +++++-----
>  pbl/console.c           |  6 +++---
>  2 files changed, 8 insertions(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/console_common.c b/common/console_common.c
> index 7bef74c54391..ca1dad0f159f 100644
> --- a/common/console_common.c
> +++ b/common/console_common.c
> @@ -68,7 +68,7 @@ void log_clean(unsigned int limit)
>  	}
>  }
>  
> -static void print_colored_log_level(const int level)
> +static void print_colored_log_level(unsigned int ch, const int level)
>  {
>  	if (!console_allow_color())
>  		return;
> @@ -77,7 +77,7 @@ static void print_colored_log_level(const int level)
>  	if (!colored_log_level[level])
>  		return;
>  
> -	puts(colored_log_level[level]);
> +	console_puts(ch, colored_log_level[level]);
>  }
>  
>  static void pr_puts(int level, const char *str)
> @@ -112,8 +112,8 @@ nolog:
>  	if (level > barebox_loglevel)
>  		return;
>  
> -	print_colored_log_level(level);
> -	puts(str);
> +	print_colored_log_level(CONSOLE_STDERR, level);
> +	console_puts(CONSOLE_STDERR, str);
>  }
>  
>  int pr_print(int level, const char *fmt, ...)
> @@ -217,7 +217,7 @@ void log_print(unsigned flags, unsigned levels)
>  
>  		if (!(flags & (BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME
>  			       | BAREBOX_LOG_DIFF_TIME)))
> -			print_colored_log_level(log->level);
> +			print_colored_log_level(CONSOLE_STDOUT, log->level);
>  
>  		if (flags & BAREBOX_LOG_PRINT_RAW)
>  			printf("<%i>", log->level);
> diff --git a/pbl/console.c b/pbl/console.c
> index fc8e8cdf1383..a147e2a19e49 100644
> --- a/pbl/console.c
> +++ b/pbl/console.c
> @@ -39,9 +39,9 @@ int console_puts(unsigned int ch, const char *str)
>  
>  	while (*str) {
>  		if (*str == '\n')
> -			console_putc(CONSOLE_STDOUT, '\r');
> +			console_putc(ch, '\r');
>  
> -		console_putc(CONSOLE_STDOUT, *str);
> +		console_putc(ch, *str);
>  		str++;
>  		n++;
>  	}
> @@ -74,7 +74,7 @@ int pr_print(int level, const char *fmt, ...)
>  	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
>  	va_end(args);
>  
> -	console_puts(CONSOLE_STDOUT, printbuffer);
> +	console_puts(CONSOLE_STDERR, printbuffer);
>  
>  	return i;
>  }
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


