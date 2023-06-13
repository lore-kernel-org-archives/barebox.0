Delivery-date: Tue, 13 Jun 2023 08:58:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xz6-004qRb-S2
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 08:58:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xz4-0004gT-4l
	for lore@pengutronix.de; Tue, 13 Jun 2023 08:58:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TGh6WJ0W7Za6hll/mav5Oye0mOglY7nK8ZR58C3KmS8=; b=pdRCmfAc2JH7XAhsl3h5xNMM0d
	Ia0cFYROwkfZNQ9K4lryHxD8XYJzrmU9uGCiaVExhQgt18w+2JLKzl93Id9DgbvWfoEU/gW3gh1TP
	qhNh7GeYiWPS1g8MRfDP2L6c7GNKXUztREGPc1zcDDpG3pw3X06ep/qAN//P8hsH9hmG8orpVFwIt
	a3Ks5RZadECuGsOU0TUOJX8yQxsx4c28x6hXDL1YNC1unH6d34JxFrC1ik4IkNSqSFqgcvGnmdKp0
	fQsAjN0C6K7YpG1CldTRgAD/vygoAz+w6Fh9q/rm/ug77eoUF2/6qXfPfshGWiIupiH62JbunGion
	f9D7ZVcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xy0-00792t-0N;
	Tue, 13 Jun 2023 06:57:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xxw-00792B-0r
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 06:57:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8xxu-0004cU-Jh; Tue, 13 Jun 2023 08:57:18 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8xxu-0005Dg-BY; Tue, 13 Jun 2023 08:57:18 +0200
Date: Tue, 13 Jun 2023 08:57:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230613065718.u74nllevvyh7fruw@pengutronix.de>
References: <20230612123232.3071957-1-s.hauer@pengutronix.de>
 <20230612123232.3071957-3-s.hauer@pengutronix.de>
 <20230613063439.qrzzbp55m3333lp2@pengutronix.de>
 <20230613064922.GE18491@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230613064922.GE18491@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_235720_307637_88C28A52 
X-CRM114-Status: GOOD (  35.13  )
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
Subject: Re: [PATCH 2/5] dmesg: error out on unknown loglevels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-13, Sascha Hauer wrote:
> On Tue, Jun 13, 2023 at 08:34:39AM +0200, Marco Felsch wrote:
> > Hi Sascha,
> > 
> > On 23-06-12, Sascha Hauer wrote:
> > > The user deserves an error when an unknown loglevel is given, so
> > > print an error instead of silently ignoring unknown loglevels.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  commands/dmesg.c | 6 +++++-
> > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/commands/dmesg.c b/commands/dmesg.c
> > > index 339910bb76..2a36710b98 100644
> > > --- a/commands/dmesg.c
> > > +++ b/commands/dmesg.c
> > > @@ -32,6 +32,8 @@ static int str_to_loglevel(const char *str)
> > >  	if (!strcmp(str, "emerg"))
> > >  		return MSG_EMERG;
> > >  
> > > +	printf("dmesg: unknown loglevel %s\n", str);
> > > +
> > >  	return -EINVAL;
> > >  }
> > >  
> > > @@ -51,6 +53,8 @@ static unsigned dmesg_get_levels(const char *__args)
> > >  		level = str_to_loglevel(str);
> > >  		if (level >= 0)
> > >  			flags |= BIT(level);
> > > +		else
> > > +			return 0;
> > 
> > This is more explicit but wouldn't be required since we initialized
> > 'flags = 0'.
> 
> It is required as flags might be != 0 already and we want to return 0
> in error case. Nevertheless this needs fixing as this return looses
> memory allocated with xstrdup above.

Argh.. right I overlooked the while(1).

> > >  	}
> > >  
> > >  	free(args);
> > > @@ -81,7 +85,7 @@ static int do_dmesg(int argc, char *argv[])
> > >  		case 'l':
> > >  			levels = dmesg_get_levels(optarg);
> > >  			if (!levels)
> > > -				return COMMAND_ERROR_USAGE;
> > > +				return COMMAND_ERROR;
> > 
> > Out of curiosity what's the difference between COMMAND_ERROR and
> > COMMAND_ERROR_USAGE?
> 
> When a command returns with COMMAND_ERROR_USAGE then the usage
> for the command is printed. COMMAND_ERROR just returns an error
> without printing the commands usage.
> 
> When a command prints a meaningful error message then I often
> find it confusing when the usage is printed, because the error
> is often buried in the long help text.

Thanks for the clarification, make sense.

> ---------------------------8<------------------------------
> 
> From adadd6c0fcfd6b11076e0110497dd7ecdb44f99c Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Mon, 12 Jun 2023 14:12:11 +0200
> Subject: [PATCH] dmesg: error out on unknown loglevels
> 
> The user deserves an error when an unknown loglevel is given, so
> print an error instead of silently ignoring unknown loglevels.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  commands/dmesg.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/commands/dmesg.c b/commands/dmesg.c
> index 339910bb76..0d46353fb5 100644
> --- a/commands/dmesg.c
> +++ b/commands/dmesg.c
> @@ -32,6 +32,8 @@ static int str_to_loglevel(const char *str)
>  	if (!strcmp(str, "emerg"))
>  		return MSG_EMERG;
>  
> +	printf("dmesg: unknown loglevel %s\n", str);
> +
>  	return -EINVAL;
>  }
>  
> @@ -49,8 +51,12 @@ static unsigned dmesg_get_levels(const char *__args)
>  			break;
>  
>  		level = str_to_loglevel(str);
> -		if (level >= 0)
> -			flags |= BIT(level);
> +		if (level < 0) {
> +			flags = 0;
> +			break;
> +		}
> +
> +		flags |= BIT(level);
>  	}
>  
>  	free(args);
> @@ -81,7 +87,7 @@ static int do_dmesg(int argc, char *argv[])
>  		case 'l':
>  			levels = dmesg_get_levels(optarg);
>  			if (!levels)
> -				return COMMAND_ERROR_USAGE;
> +				return COMMAND_ERROR;
>  			break;
>  		case 'r':
>  			flags |= BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME;
> -- 
> 2.39.2
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


