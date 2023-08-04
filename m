Delivery-date: Fri, 04 Aug 2023 10:35:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRqHn-006xH9-0R
	for lore@lore.pengutronix.de; Fri, 04 Aug 2023 10:35:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRqHl-00015X-CN
	for lore@pengutronix.de; Fri, 04 Aug 2023 10:35:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i/Iob8DSgmZ9Mhr5wT3cmuwUo+a0iIygtGYHnalKd/w=; b=tmNqXlOvV0wLyWzXO9pnCX8lj+
	ntLg8hY/JYexnjttusGTRY3GTZcYHKggjW4M/uJoj96JA9U7tzdzOE/DubPDAkyh9YuYwSW2FOEAZ
	J1xZlAVzPmB/wjkca6Efq6oJHlANRU57nZoaOHxhsKznIUvKnO1/S5ILOqViBdV+0uTKVovOB2GHp
	cvzpSZD9DXY4FKvoiFgSIvW7sGtXyW4m6C8pu9Lhy33qszGLlZuFggb1quoaEgjwOtZvTb+ILvBvq
	5t3XBGVbzd4RJLmviARNIvWpshYJxIhI4dmp2e+86iYJhSbDdxO5R6C7FWGoNVsfGUyqS19ntC4dk
	9F5UWA5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRqGc-00Btue-15;
	Fri, 04 Aug 2023 08:34:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRqGZ-00Btu3-18
	for barebox@lists.infradead.org;
	Fri, 04 Aug 2023 08:34:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRqGX-0000pG-TK; Fri, 04 Aug 2023 10:34:33 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRqGX-0000dz-Lu; Fri, 04 Aug 2023 10:34:33 +0200
Date: Fri, 4 Aug 2023 10:34:33 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230804083433.GF26314@pengutronix.de>
References: <20230803134332.1763059-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230803134332.1763059-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230804_013435_384357_D73E7472 
X-CRM114-Status: GOOD (  23.21  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] commands: rm: add -f option to ignore nonexistent
 files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 03, 2023 at 03:43:32PM +0200, Ahmad Fatoum wrote:
> rm supports multiple arguments, but will stop at the first nonexistent
> file and print an error message that can't be silenced. Mimic other
> implementations and implement -f for silently ignoring nonexistent files.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - only ignore -ENOENT and not all error codes
> ---
>  commands/Kconfig |  3 ++-
>  commands/rm.c    | 16 +++++++++++-----
>  2 files changed, 13 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 844f7046282b..eb95b2a5fbcc 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1031,10 +1031,11 @@ config CMD_RM
>  	help
>  	  Remove files
>  
> -	  Usage: rm [-r] FILES...
> +	  Usage: rm [-rf] FILES...
>  
>  	  Options:
>  		  -r	remove directories and their contents recursively
> +		  -f	ignore nonexistent files
>  
>  config CMD_RMDIR
>  	tristate
> diff --git a/commands/rm.c b/commands/rm.c
> index be5c19222141..c35cf2d2d412 100644
> --- a/commands/rm.c
> +++ b/commands/rm.c
> @@ -12,13 +12,16 @@
>  
>  static int do_rm(int argc, char *argv[])
>  {
> -	int i, opt, recursive = 0;
> +	int i, opt, recursive = 0, force = 0;
>  
> -	while ((opt = getopt(argc, argv, "r")) > 0) {
> +	while ((opt = getopt(argc, argv, "rf")) > 0) {
>  		switch (opt) {
>  		case 'r':
>  			recursive = 1;
>  			break;
> +		case 'f':
> +			force = 1;
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
> @@ -37,8 +40,10 @@ static int do_rm(int argc, char *argv[])
>  		else
>  			ret = unlink(argv[i]);
>  		if (ret) {
> -			printf("could not remove %s: %m\n", argv[i]);
> -			return 1;
> +			if (!force || ret != -ENOENT)
> +				printf("could not remove %s: %m\n", argv[i]);
> +			if (!force)
> +				return 1;
>  		}
>  		i++;
>  	}
> @@ -49,12 +54,13 @@ static int do_rm(int argc, char *argv[])
>  BAREBOX_CMD_HELP_START(rm)
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-r", "remove directories and their contents recursively")
> +BAREBOX_CMD_HELP_OPT ("-f", "ignore nonexistent files")
>  BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(rm)
>  	.cmd		= do_rm,
>  	BAREBOX_CMD_DESC("remove files")
> -	BAREBOX_CMD_OPTS("[-r] FILES...")
> +	BAREBOX_CMD_OPTS("[-rf] FILES...")
>  	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
>  	BAREBOX_CMD_HELP(cmd_rm_help)
>  BAREBOX_CMD_END
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


