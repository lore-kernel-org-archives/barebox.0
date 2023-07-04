Delivery-date: Tue, 04 Jul 2023 09:35:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGaZ2-00EVy3-Mu
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 09:35:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGaZ0-00059S-5B
	for lore@pengutronix.de; Tue, 04 Jul 2023 09:35:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YDzNnrY3iRRZLkOvyjOlT38Qnokb93yITwOsTBetfg0=; b=chBM4cXbvF4y9F714C3WWQ9cuN
	K1fNq+j1uOQdFkvWd2bSCleK7uG+SSuEZv8DJys3XKAowAHJ0VfLBnOPt9UE44qwhvhyP8Vi8fHpa
	DX5JmxUPnAnuKT31AZFOL5jUHB6v7sQPiUuE4DOoda4POTijApWIE3aQLXgiLl3h3bBr+Yyb19QHq
	rCpADbG0ZR1W33O2eJm+hzo/Fd5AkFtOLkd/b3ifVZUBf9bUzYFkvIWLK1tF7kT3SpfBRvl0+AG7Z
	Ge94Isuvxnu0e9x8jR/dy5BeTaMzdVSJrn5c2PKpNW0Yd69g8FZE3z5XDmeFCsirOWUc4BCOUuh/3
	qpjhFULQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGaXV-00CRKf-0e;
	Tue, 04 Jul 2023 07:33:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGaXQ-00CRJY-2a
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 07:33:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qGaXK-00052A-Up; Tue, 04 Jul 2023 09:33:23 +0200
Message-ID: <3cd84253-59d6-d6a6-7432-71579f73a3d0@pengutronix.de>
Date: Tue, 4 Jul 2023 09:33:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20230703225813.2828815-1-m.felsch@pengutronix.de>
 <20230703225813.2828815-2-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230703225813.2828815-2-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_003328_837688_96D416E4 
X-CRM114-Status: GOOD (  26.21  )
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
Subject: Re: [PATCH 2/2] commands: test: add based support for bash-test style
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 04.07.23 00:58, Marco Felsch wrote:
> Add [[ expression ]] support which allow pattern matching like:
> 
>   - [[ "foo1" == "foo*" ]]
>   - [[ "foo" != "bar" ]]
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  commands/Kconfig | 13 +++++++++++++
>  commands/test.c  | 39 ++++++++++++++++++++++++++++++++++-----
>  2 files changed, 47 insertions(+), 5 deletions(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 4d3ff631a8..615e96aa9d 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1219,6 +1219,19 @@ config CMD_TEST
>  		  !, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e,
>  		  -f, -L; see 'man test' on your PC for more information.
>  
> +if CMD_TEST
> +
> +config CMD_TEST_BASH_COMP
> +	tristate
> +	select CONFIG_FNMATCH

select FNMATCH, no CONFIG_
Does this really need its own symbol? Can't you just use CONFIG_GLOB
and amend the help text?

> +	prompt "test bash-compatibility"
> +	help
> +	  Enable minimal support for bash compatible tests: [[ ]] to allow
> +	  pattern matching via: == and !=
> +
> +# end CMD_TEST
> +endif
> +
>  config CMD_TRUE
>  	tristate
>  	default y
> diff --git a/commands/test.c b/commands/test.c
> index c1b84c42ef..77e15aeb03 100644
> --- a/commands/test.c
> +++ b/commands/test.c
> @@ -11,9 +11,13 @@
>  #include <command.h>
>  #include <fs.h>
>  #include <linux/stat.h>
> +#ifdef CONFIG_CMD_TEST_BASH_COMP
> +#include <fnmatch.h>
> +#endif
>  
>  typedef enum {
>  	OPT_EQUAL,
> +	OPT_EQUAL_BASH,
>  	OPT_NOT_EQUAL,
>  	OPT_ARITH_EQUAL,
>  	OPT_ARITH_NOT_EQUAL,
> @@ -36,6 +40,7 @@ typedef enum {
>  
>  static char *test_options[] = {
>  	[OPT_EQUAL]			= "=",
> +	[OPT_EQUAL_BASH]		= "==",
>  	[OPT_NOT_EQUAL]			= "!=",
>  	[OPT_ARITH_EQUAL]		= "-eq",
>  	[OPT_ARITH_NOT_EQUAL]		= "-ne",
> @@ -67,18 +72,37 @@ static int parse_opt(const char *opt)
>  	return -1;
>  }
>  
> +static int string_comp(const char *left_op, const char *right_op, bool bash_test)
> +{
> +#ifdef CONFIG_CMD_TEST_BASH_COMP
> +	if (bash_test)
> +		return fnmatch(right_op, left_op, 0);
> +#endif

Scripts that execute differently depending on a barebox config option
is not good user experience. I think it would be better if [[ is an
error if support is missing.

Also can't the #ifdef be replaced with a IS_ENABLED()

> +	return strcmp(left_op, right_op);
> +}
> +
>  static int do_test(int argc, char *argv[])
>  {
>  	char **ap;
>  	int left, adv, expr, last_expr, neg, last_cmp, opt, zero;
>  	ulong a, b;
>  	struct stat statbuf;
> +	bool bash_test = false;
>  
>  	if (*argv[0] == '[') {
>  		argc--;
> -		if (*argv[argc] != ']') {
> -			printf("[: missing `]'\n");
> -			return 1;
> +		if (!strncmp(argv[0], "[[", 2)) {

This is equivalent to argv[0][1] == '['

> +			if (strncmp(argv[argc], "]]", 2) != 0) {
> +				printf("[[: missing `]]'\n");
> +				return 1;
> +			}
> +			if (IS_ENABLED(CONFIG_CMD_TEST_BASH_COMP))
> +				bash_test = true;
> +		} else {
> +			if (*argv[argc] != ']') {
> +				printf("[: missing `]'\n");
> +				return 1;
> +			}
>  		}
>  	}
>  
> @@ -183,10 +207,11 @@ static int do_test(int argc, char *argv[])
>  			b = simple_strtol(ap[2], NULL, 0);
>  			switch (parse_opt(ap[1])) {
>  			case OPT_EQUAL:
> -				expr = strcmp(ap[0], ap[2]) == 0;
> +			case OPT_EQUAL_BASH:
> +				expr = string_comp(ap[0], ap[2], bash_test) == 0;
>  				break;
>  			case OPT_NOT_EQUAL:
> -				expr = strcmp(ap[0], ap[2]) != 0;
> +				expr = string_comp(ap[0], ap[2], bash_test) != 0;
>  				break;
>  			case OPT_ARITH_EQUAL:
>  				expr = a == b;
> @@ -233,7 +258,11 @@ static int do_test(int argc, char *argv[])
>  	return expr;
>  }
>  
> +#ifdef CONFIG_CMD_TEST_BASH_COMP
> +static const char * const test_aliases[] = { "[", "[[", NULL};
> +#else
>  static const char * const test_aliases[] = { "[", NULL};
> +#endif
>  
>  BAREBOX_CMD_HELP_START(test)
>  BAREBOX_CMD_HELP_TEXT("Options:")

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



