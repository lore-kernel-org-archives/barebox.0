Delivery-date: Thu, 14 Sep 2023 10:11:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghRV-00Empk-W8
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 10:11:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghRT-00055a-My
	for lore@pengutronix.de; Thu, 14 Sep 2023 10:11:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jRDwae+SJTWP2wvCRShFNKA0ILheRFkN3sA/gT+JHKY=; b=a3g7cRf1VxbsB3l8sHtGHlrRnG
	7scYi1jvfSHQvGJjitCnC8h2KBtCvEFM5zFAHhtWfyd1syjsXlVKduo2aHyMs/GpqvrgVKlZep+u2
	oumY91x4hwTsvixo/NBFpaEx61iMoVK7SNUVG7iBnSFe6ZDBkOh2MYUF3G6HsEsi3tIwYXv9NKatJ
	lx1z0iQgWhW2JJ/yPtbt92eCsjN/GRApeq0/zClFvJ+/KDcGXFEi47yif5NX4BfbX+L9KP/13Do7k
	XfYgHJ44B3rmG13J0MIQe/GvFvlfhU4B+hIvXil7I391bSaIDHg72mL6Ti9d3mN4i1iIFSZgi9iLx
	BnaowLwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qghQN-007fP4-0d;
	Thu, 14 Sep 2023 08:10:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qghQK-007fOT-2i
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 08:10:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qghQJ-0004Mw-LD; Thu, 14 Sep 2023 10:10:03 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qghQJ-006G6x-8Z; Thu, 14 Sep 2023 10:10:03 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qghQJ-006g9m-6K; Thu, 14 Sep 2023 10:10:03 +0200
Date: Thu, 14 Sep 2023 10:10:03 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230914081003.GO637806@pengutronix.de>
References: <20230913115958.1858470-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913115958.1858470-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_011004_885224_F4A53DBD 
X-CRM114-Status: GOOD (  29.11  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] commands: test: support signed comparisons
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 13, 2023 at 01:59:57PM +0200, Ahmad Fatoum wrote:
> So far signed integers in binary comparisons were accepted, but compared
> unsigned resulting in [ "-1" -gt 0 ] returning true.
> 
> Rework this, so that:
> 
>   - If one side is signed, the comparison is signed
>   - If both sides are unsigned, the comparison is unsigned
> 
> The latter is not required by POSIX, but it ensures that we don't break
> users who so far did comparisons with integers > LONG_MAX without issue.
> 
> While at it, we start checking that the arguments in arithmetic
> comparisons are indeed integers. This has the result that e.g.
> [ "1x" -eq "1x" ] will no longer return success, but that aligns us with
> usual shell behavior and protects the users from silent truncation when
> a number > LONG_MAX is compared with a negative number.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/test.c | 66 ++++++++++++++++++++++++++++++++++++++-----------
>  1 file changed, 51 insertions(+), 15 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/test.c b/commands/test.c
> index 1130bf2e5bd6..13005b97deb3 100644
> --- a/commands/test.c
> +++ b/commands/test.c
> @@ -78,11 +78,56 @@ static int string_comp(const char *left_op, const char *right_op, bool bash_test
>  	return strcmp(left_op, right_op);
>  }
>  
> +static int parse_number(const char *str, long *num, bool signedcmp)
> +{
> +	int ret;
> +
> +	ret = signedcmp ? kstrtol(str, 0, num) : kstrtoul(str, 0, num);
> +	if (ret)
> +		printf("test: %s: integer expression expected\n", str);
> +
> +	return ret;
> +}
> +
> +#define __do_arith_cmp(x, op, y, signedcmp) \
> +	((signedcmp) ? (long)(x) op (long)(y) : (x) op (y))
> +
> +static int arith_comp(const char *a_str, const char *b_str, int op)
> +{
> +	ulong a, b;
> +	bool signedcmp = a_str[0] == '-' || b_str[0] == '-';
> +	int ret;
> +
> +	ret = parse_number(a_str, &a, signedcmp);
> +	if (ret)
> +		return ret;
> +
> +	ret = parse_number(b_str, &b, signedcmp);
> +	if (ret)
> +		return ret;
> +
> +	switch (op) {
> +	case OPT_ARITH_EQUAL:
> +		return __do_arith_cmp(a, ==, b, signedcmp);
> +	case OPT_ARITH_NOT_EQUAL:
> +		return __do_arith_cmp(a, !=, b, signedcmp);
> +	case OPT_ARITH_GREATER_EQUAL:
> +		return __do_arith_cmp(a, >=, b, signedcmp);
> +	case OPT_ARITH_GREATER_THAN:
> +		return __do_arith_cmp(a,  >, b, signedcmp);
> +	case OPT_ARITH_LESS_EQUAL:
> +		return __do_arith_cmp(a, <=, b, signedcmp);
> +	case OPT_ARITH_LESS_THAN:
> +		return __do_arith_cmp(a,  <, b, signedcmp);
> +	}
> +
> +	return -EINVAL;
> +}
> +
>  static int do_test(int argc, char *argv[])
>  {
>  	char **ap;
>  	int left, adv, expr, last_expr, neg, last_cmp, opt, zero;
> -	ulong a, b;
>  	struct stat statbuf;
>  	bool bash_test = false;
>  
> @@ -199,9 +244,8 @@ static int do_test(int argc, char *argv[])
>  			if (left < 3)
>  				break;
>  
> -			a = simple_strtol(ap[0], NULL, 0);
> -			b = simple_strtol(ap[2], NULL, 0);
> -			switch (parse_opt(ap[1])) {
> +			opt = parse_opt(ap[1]);
> +			switch (opt) {
>  			case OPT_EQUAL:
>  			case OPT_EQUAL_BASH:
>  				expr = string_comp(ap[0], ap[2], bash_test) == 0;
> @@ -210,22 +254,14 @@ static int do_test(int argc, char *argv[])
>  				expr = string_comp(ap[0], ap[2], bash_test) != 0;
>  				break;
>  			case OPT_ARITH_EQUAL:
> -				expr = a == b;
> -				break;
>  			case OPT_ARITH_NOT_EQUAL:
> -				expr = a != b;
> -				break;
>  			case OPT_ARITH_LESS_THAN:
> -				expr = a < b;
> -				break;
>  			case OPT_ARITH_LESS_EQUAL:
> -				expr = a <= b;
> -				break;
>  			case OPT_ARITH_GREATER_THAN:
> -				expr = a > b;
> -				break;
>  			case OPT_ARITH_GREATER_EQUAL:
> -				expr = a >= b;
> +				expr = arith_comp(ap[0], ap[2], opt);
> +				if (expr < 0)
> +					return 1;
>  				break;
>  			default:
>  				expr = 1;
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


