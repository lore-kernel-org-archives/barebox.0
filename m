Delivery-date: Wed, 26 Jul 2023 11:59:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qObIM-00Adnf-Q9
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 11:59:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qObIK-00081S-9D
	for lore@pengutronix.de; Wed, 26 Jul 2023 11:59:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ca5q+3t2uum+10WwOrRKE81i6w6KLdpDZZCyF7+I6L4=; b=p0XRmU1zsubi0uwz64Qc4Wjwuj
	VS2RAnEoEHO2KZ3v7XMlhaI8tJoN9bvn2A571eeI3XWrAaelSJbDL4TktOix8A+KiYZ5vMUlks42v
	FyOOPam4fit5M3ymFTN8oarsBxi9i2jFTkwFAE8+AMLUX+CuGDorZz6F5y+9xQQmt2hCGOb/cDFZo
	sCp+MOAUZbJlHFTGe+q23tPpsIepMcogXQmI+lSAQovu4glCRmRBl5FbnFNM547hqaDxJGVlajEQ9
	uT7zffHEdoVdV1zPKJjBf73b4EW35sQsWdC+KDUFFKckClnqDg73S6wKGokZ3Df5F/oetCmaqOBXx
	P/xV0LrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qObH4-009qDz-0S;
	Wed, 26 Jul 2023 09:57:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qObH1-009qBI-0P
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 09:57:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qObGz-0007ug-JY; Wed, 26 Jul 2023 11:57:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qObGz-00065p-BL; Wed, 26 Jul 2023 11:57:37 +0200
Date: Wed, 26 Jul 2023 11:57:37 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230726095737.GH18491@pengutronix.de>
References: <20230721111007.3699613-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230721111007.3699613-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_025739_161262_D25C586E 
X-CRM114-Status: GOOD (  36.59  )
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
Subject: Re: [PATCH] commands: go: support passing integer arguments instead
 of argc/argv
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 21, 2023 at 01:10:07PM +0200, Ahmad Fatoum wrote:
> The go command accepts extra arguments, which are passed through to the
> application using two parameters: argc to hold the number of arguments
> and argv as a NULL pointer terminated array of pointers to
> nul-terminated strings.
> 
> As the go command is meant to invoke bare metal applications, it is
> useful to be able to pass arguments parsed to integers using the
> default calling convention, so add a new -i argument. The old behavior
> remains the default and a new -s arguments makes it explicit for
> symmetry.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/Kconfig |  5 ++++-
>  commands/go.c    | 54 +++++++++++++++++++++++++++++++++++++++++-------
>  2 files changed, 51 insertions(+), 8 deletions(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 7ca7b56fa54e..987cc286fc73 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -461,12 +461,15 @@ config CMD_GO
>  	help
>  	  Start application at address or file
>  
> -	  Usage: go ADDR [ARG...]
> +	  Usage: go [-si] ADDR [ARG...]
>  
>  	  Start application at ADDR passing ARG as arguments.
>  
>  	  If addr does not start with a digit it is interpreted as a filename
>  	  in which case the file is memmapped and executed
> +	  Options:
> +		  -s	pass all arguments as strings referenced by argc, argv arguments (default)
> +		  -i	pass up to four integer arguments using default calling convention
>  
>  config CMD_LOADB
>  	depends on CONSOLE_FULL
> diff --git a/commands/go.c b/commands/go.c
> index 0c0b4cb15e4d..c0c0f5a0c562 100644
> --- a/commands/go.c
> +++ b/commands/go.c
> @@ -8,21 +8,44 @@
>  #include <complete.h>
>  #include <fs.h>
>  #include <fcntl.h>
> +#include <getopt.h>
>  #include <linux/ctype.h>
>  #include <errno.h>
>  
> +#define INT_ARGS_MAX	4
> +
>  static int do_go(int argc, char *argv[])
>  {
>  	void	*addr;
>  	int     rcode = 1;
>  	int	fd = -1;
> -	int	(*func)(int argc, char *argv[]);
> +	void	(*func)(ulong r0, ulong r1, ulong r2, ulong r3);
> +	int	opt;
> +	ulong	arg[INT_ARGS_MAX] = {};
> +	bool	pass_argv = true;
>  
> -	if (argc < 2)
> +	while ((opt = getopt(argc, argv, "+si")) > 0) {
> +		switch (opt) {
> +		case 's':
> +			pass_argv = true;
> +			break;
> +		case 'i':
> +			pass_argv = false;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	/* skip options */
> +	argv += optind;
> +	argc -= optind;
> +
> +	if (argc == 0 || (!pass_argv && argc - 1 > INT_ARGS_MAX))
>  		return COMMAND_ERROR_USAGE;
>  
> -	if (!isdigit(*argv[1])) {
> -		fd = open(argv[1], O_RDONLY);
> +	if (!isdigit(*argv[0])) {
> +		fd = open(argv[0], O_RDONLY);
>  		if (fd < 0) {
>  			perror("open");
>  			goto out;
> @@ -34,7 +57,7 @@ static int do_go(int argc, char *argv[])
>  			goto out;
>  		}
>  	} else
> -		addr = (void *)simple_strtoul(argv[1], NULL, 16);
> +		addr = (void *)simple_strtoul(argv[0], NULL, 16);
>  
>  	printf("## Starting application at 0x%p ...\n", addr);
>  
> @@ -44,7 +67,21 @@ static int do_go(int argc, char *argv[])
>  
>  	shutdown_barebox();
>  
> -	func(argc - 1, &argv[1]);
> +	if (pass_argv) {
> +		arg[0] = argc;
> +		arg[1] = (ulong)argv;
> +	} else {
> +		int i;
> +
> +		/* skip argv[0] */
> +		argc--;
> +		argv++;
> +
> +		for (i = 0; i < argc; i++)
> +			kstrtoul(argv[i], 0, &arg[i]);

kstrtoul returns error codes and here they could be used to catch some
misusages of the command like accidently passing string arguments
together with the -i option. You should move the call to
shutdown_barebox() further down and catch these errors.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


