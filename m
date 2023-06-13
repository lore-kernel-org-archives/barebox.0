Delivery-date: Tue, 13 Jun 2023 08:42:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xjW-004pWG-SH
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 08:42:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xjU-0002Y3-Ct
	for lore@pengutronix.de; Tue, 13 Jun 2023 08:42:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GISjE6otVlYYxwP8ZxQBK957NmvPe6350ZfOYfqA3VE=; b=SKaWYU9H95YHWGtuxu5CIjF9ho
	mQG/01vaPH/Lh1pv1Ljd9wai2ls2Njd0/sA/MOc3svKchXaOjX29A05TUEA90ML20AzngNubNKiHR
	XnB5W6EkUPo8UEfShuijCoULynwyeBTxziAfZ1ClaZPkPpvjxxlyDusbzLQjrqxmz7g36fcl+s796
	aUugNcXx+sNDIbeP/vFnmSFyWFqGvpug5Y3RVirLnL5sh2Nwd5becSeXNHdqNdGTFxvxkYvbsjzJv
	aEhSTvQ/r0DFeJqAi3hs+td7dfSuqpu0B5zTaUqmSkWxOCHl5Q5v/nTgYUQzrnvC8zrioK1qtT6bc
	Y9NtJdlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xiR-0076Nm-0V;
	Tue, 13 Jun 2023 06:41:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xiO-0076Mu-0c
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 06:41:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8xiM-0002NZ-UC; Tue, 13 Jun 2023 08:41:14 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8xiM-0004fk-Mm; Tue, 13 Jun 2023 08:41:14 +0200
Date: Tue, 13 Jun 2023 08:41:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230613064114.rmhddox6pgwv3ife@pengutronix.de>
References: <20230612123232.3071957-1-s.hauer@pengutronix.de>
 <20230612123232.3071957-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612123232.3071957-2-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_234116_232855_6399E855 
X-CRM114-Status: GOOD (  18.45  )
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
Subject: Re: [PATCH 1/5] dmesg: factor out str_to_loglevel()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-12, Sascha Hauer wrote:
> dmesg open codes functionality to convert a string to a loglevel.
> Make a separate function from it which will be useful in the next
> patch.
> While at it remove the BAREBOX_LOG_PRINT_* defines and use MSG_*
> defines directly.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  commands/dmesg.c       | 47 ++++++++++++++++++++++++++----------------
>  include/linux/printk.h | 10 ---------
>  2 files changed, 29 insertions(+), 28 deletions(-)
> 
> diff --git a/commands/dmesg.c b/commands/dmesg.c
> index 15ad449639..339910bb76 100644
> --- a/commands/dmesg.c
> +++ b/commands/dmesg.c
> @@ -11,6 +11,30 @@
>  #include <getopt.h>
>  #include <clock.h>
>  
> +static int str_to_loglevel(const char *str)
> +{
> +	if (!strcmp(str, "vdebug"))
> +		return MSG_VDEBUG;
> +	if (!strcmp(str, "debug"))
> +		return MSG_DEBUG;
> +	if (!strcmp(str, "info"))
> +		return MSG_INFO;
> +	if (!strcmp(str, "notice"))
> +		return MSG_NOTICE;
> +	if (!strcmp(str, "warn"))
> +		return MSG_WARNING;
> +	if (!strcmp(str, "err"))
> +		return MSG_ERR;
> +	if (!strcmp(str, "crit"))
> +		return MSG_CRIT;
> +	if (!strcmp(str, "alert"))
> +		return MSG_ALERT;
> +	if (!strcmp(str, "emerg"))
> +		return MSG_EMERG;
> +
> +	return -EINVAL;
> +}
> +
>  static unsigned dmesg_get_levels(const char *__args)
>  {
>  	char *args = xstrdup(__args);
> @@ -18,28 +42,15 @@ static unsigned dmesg_get_levels(const char *__args)
>  	unsigned flags = 0;
>  
>  	while (1) {
> +		int level;
> +
>  		str = strsep(&levels, ",");
>  		if (!str)
>  			break;
>  
> -		if(!strcmp(str, "vdebug"))
> -			flags |= BAREBOX_LOG_PRINT_VDEBUG;
> -		else if(!strcmp(str, "debug"))
> -			flags |= BAREBOX_LOG_PRINT_DEBUG;
> -		else if(!strcmp(str, "info"))
> -			flags |= BAREBOX_LOG_PRINT_INFO;
> -		else if(!strcmp(str, "notice"))
> -			flags |= BAREBOX_LOG_PRINT_NOTICE;
> -		else if(!strcmp(str, "warn"))
> -			flags |= BAREBOX_LOG_PRINT_WARNING;
> -		else if(!strcmp(str, "err"))
> -			flags |= BAREBOX_LOG_PRINT_ERR;
> -		else if(!strcmp(str, "crit"))
> -			flags |= BAREBOX_LOG_PRINT_CRIT;
> -		else if(!strcmp(str, "alert"))
> -			flags |= BAREBOX_LOG_PRINT_ALERT;
> -		else if(!strcmp(str, "emerg"))
> -			flags |= BAREBOX_LOG_PRINT_EMERG;
> +		level = str_to_loglevel(str);
> +		if (level >= 0)
> +			flags |= BIT(level);
>  	}
>  
>  	free(args);
> diff --git a/include/linux/printk.h b/include/linux/printk.h
> index 42c29e04dd..057b355aa1 100644
> --- a/include/linux/printk.h
> +++ b/include/linux/printk.h
> @@ -159,16 +159,6 @@ extern void log_clean(unsigned int limit);
>  #define BAREBOX_LOG_DIFF_TIME		BIT(1)
>  #define BAREBOX_LOG_PRINT_TIME		BIT(0)
>  
> -#define BAREBOX_LOG_PRINT_VDEBUG	BIT(8)
> -#define BAREBOX_LOG_PRINT_DEBUG		BIT(7)
> -#define BAREBOX_LOG_PRINT_INFO		BIT(6)
> -#define BAREBOX_LOG_PRINT_NOTICE	BIT(5)
> -#define BAREBOX_LOG_PRINT_WARNING	BIT(4)
> -#define BAREBOX_LOG_PRINT_ERR		BIT(3)
> -#define BAREBOX_LOG_PRINT_CRIT		BIT(2)
> -#define BAREBOX_LOG_PRINT_ALERT		BIT(1)
> -#define BAREBOX_LOG_PRINT_EMERG		BIT(0)
> -
>  int log_writefile(const char *filepath);
>  void log_print(unsigned flags, unsigned levels);
>  
> -- 
> 2.39.2
> 
> 
> 


