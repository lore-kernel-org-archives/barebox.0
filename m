Delivery-date: Tue, 04 Jul 2023 10:52:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGbm0-00EZXv-Kr
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 10:52:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGbly-0000Tt-12
	for lore@pengutronix.de; Tue, 04 Jul 2023 10:52:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SB/ad5uadTm6Bdpv/Xe/BT8YcfPg1AzXe/kfNtgL1+U=; b=ni5CbKxw4cR431OSu8gvhR7J7S
	MloifY190ETJGQlAerjqQXmVSv7n5QFijfB9cK7AAbMAS2iLyXj8TOIgmFVJav5XJSuxh1mCAZ4G2
	Q+/J5uliIt6FHRTxlx7m1I4eI1Lm0BVbPkFJATzeLeRJVirwLnKkhc2HM0Y4d+KbFGVSuA7mUuwy4
	l+EaiQl51ILGkiAFped0R9RhDvAMAK7amK9D8AFwLczGILT1N0OYO4koCQAKn23TPeJp1iFpsEjgS
	q4zSw02qjJGZa45qCTzKyVh9+UZyifxq1c2+J2vGbUvwYbE6h7zwB4W5TX7K5y4J0ZA9aoHHs8fGd
	46EDz1jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGbkp-00Ccj8-2j;
	Tue, 04 Jul 2023 08:51:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGbkm-00CciR-2R
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 08:51:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGbkl-0000NR-EJ; Tue, 04 Jul 2023 10:51:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGbkl-0006HW-7m; Tue, 04 Jul 2023 10:51:19 +0200
Date: Tue, 4 Jul 2023 10:51:19 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230704085119.GX18491@pengutronix.de>
References: <20230703225813.2828815-1-m.felsch@pengutronix.de>
 <20230703225813.2828815-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230703225813.2828815-2-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_015120_798082_43072D52 
X-CRM114-Status: GOOD (  25.33  )
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
Subject: Re: [PATCH 2/2] commands: test: add based support for bash-test style
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 04, 2023 at 12:58:13AM +0200, Marco Felsch wrote:
> Add [[ expression ]] support which allow pattern matching like:
> 
>   - [[ "foo1" == "foo*" ]]

It's a bit unfortunate that in barebox we require putting the pattern in
"", whereas in bash it only works without the "".

I guess there's not much we can do about this unless we turn the '['
command into a shell builtin.

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

No need to include this conditionally.

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
> +			if (strncmp(argv[argc], "]]", 2) != 0) {
> +				printf("[[: missing `]]'\n");
> +				return 1;
> +			}
> +			if (IS_ENABLED(CONFIG_CMD_TEST_BASH_COMP))
> +				bash_test = true;

The if() is unnecessary.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


