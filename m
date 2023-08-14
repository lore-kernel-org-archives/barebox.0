Delivery-date: Mon, 14 Aug 2023 15:10:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVXKl-003lzA-Vr
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 15:10:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVXKj-0005s2-87
	for lore@pengutronix.de; Mon, 14 Aug 2023 15:10:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TNx8UQ6mouFI/q0mbAEo/owLrhoJeb7mQyuEqOa6yP8=; b=SrXYozqUArPSqOO6EO+MPAvlwt
	Z8JDIIqcfSEwjXayT4K37Pv8hIXDZJ76sEhrj84vbM5Y1wt/6mQPKyx38uBXYox7JNCs6JYMC0cTR
	X1Q6UkMpOUnuYjb1bMguUJAhp0nDjZu/SuZ+0Pz6dtHlzaUaihMPOabkuRvgZc6DVNBjr5DIhkbAH
	+fsSMdkfzFm3IczUP8M6gKIGoSiXdjzUIsy09cueECJylkFvO08Mus1zBTnah6k/fMtWxZrJQB37j
	/oZVoXHRINKib5lHImW3yBLTtUf4ZcHHMOBycgH9VcksS/RBJbkujIQNNW7QcifmU1x6M5TQOAA3F
	e726O5BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVXJk-00H7ZB-0G;
	Mon, 14 Aug 2023 13:09:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVXJg-00H7YF-1R
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 13:09:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qVXJf-0005bh-1C; Mon, 14 Aug 2023 15:09:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qVXJe-0001eE-Q6; Mon, 14 Aug 2023 15:09:02 +0200
Date: Mon, 14 Aug 2023 15:09:02 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230814130902.GC5650@pengutronix.de>
References: <20230803135217.1770111-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230803135217.1770111-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_060904_480751_9738F87D 
X-CRM114-Status: GOOD (  27.03  )
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
Subject: Re: [PATCH] boot: support running scripts when doing a dry run
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 03, 2023 at 03:52:17PM +0200, Ahmad Fatoum wrote:
> Dry runs are quite useful for debugging or for time measurement, but so
> far they weren't useful with scripts as they just did a very early exit.
> 
> This is understandable as scripts don't necessarily observe the
> convention that everything done before the dry run should not have an
> impact on later boot runs. For the cases, where the bootscript is vetted
> to behave properly under a dry run, support specifing dryrun twice, so
> the script is executed, but the automatic bootm afterwards isn't.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/boot.c | 4 ++--
>  common/boot.c   | 6 +++---
>  2 files changed, 5 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/boot.c b/commands/boot.c
> index 5fd59f8642f8..e4699520e8f5 100644
> --- a/commands/boot.c
> +++ b/commands/boot.c
> @@ -44,7 +44,7 @@ static int do_boot(int argc, char *argv[])
>  			do_list = 1;
>  			break;
>  		case 'd':
> -			dryrun = 1;
> +			dryrun++;
>  			break;
>  		case 'M':
>  			/* To simplify scripting, an empty string is treated as 1 */
> @@ -145,7 +145,7 @@ BAREBOX_CMD_HELP_TEXT("one succeeds.")
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-v","Increase verbosity")
> -BAREBOX_CMD_HELP_OPT ("-d","Dryrun. See what happens but do no actually boot")
> +BAREBOX_CMD_HELP_OPT ("-d","Dryrun. See what happens but do no actually boot (pass twice to run scripts)")
>  BAREBOX_CMD_HELP_OPT ("-l","List available boot sources")
>  BAREBOX_CMD_HELP_OPT ("-m","Show a menu with boot options")
>  BAREBOX_CMD_HELP_OPT ("-M INDEX","Show a menu with boot options with entry INDEX preselected")
> diff --git a/common/boot.c b/common/boot.c
> index 4edea682219b..76bf52b52902 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -75,7 +75,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
>  
>  	struct bootm_data data = {};
>  
> -	if (dryrun) {
> +	if (dryrun == 1) {
>  		printf("Would run %s\n", bs->scriptpath);
>  		return 0;
>  	}
> @@ -94,8 +94,8 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
>  
>  	if (verbose)
>  		data.verbose = verbose;
> -	if (dryrun)
> -		data.dryrun = dryrun;
> +	if (dryrun >= 2)
> +		data.dryrun = dryrun - 1;
>  
>  	return bootm_boot(&data);
>  }
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


