Delivery-date: Wed, 12 May 2021 07:36:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghXd-0005Dq-Pa
	for lore@lore.pengutronix.de; Wed, 12 May 2021 07:36:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghXb-00053X-MF
	for lore@pengutronix.de; Wed, 12 May 2021 07:36:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XRrcccyBrzUCAG38IgAPXVnpWZaxVniLNAJh2xfXFmU=; b=LSKMf6uAs6gNb0MvxPhg6BkPM
	rjzUn7invLk2ToWZqdxf59YxlYV0Iycd/xhTvRIrqGNQR9Qq/xkvbAIQYlx4TLcLb/B9DG+E2xKNU
	y+Fi8xWIHa3CSpzbBhhMtHT3OxE1JVKHJvbYsSPfZRImnexb473J5FZhnX4nyKiYKKd9ZamLiCuWa
	5k+dwUeB80PRcPplX+jwGCBO8c2FuhyS8J2pDS8OyiOhpmQoBPAGdn/mdPg9+d2VIGFRBKqyYKdRC
	OR9MzdU5fYhbMjnR/tNrdRq3MN6DBvhuBTfR++aUnhyGUx0X7k6mCBSyAxLGjwej4IO0nBtb/rtL7
	Z7CpdSjig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lghWm-0025Rl-Pc; Wed, 12 May 2021 05:35:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghWj-0025RS-FP
 for barebox@desiato.infradead.org; Wed, 12 May 2021 05:35:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=4VTuPDxGmFscKjIjVUlYdf/kK0sJHc5aUauau0iJELk=; b=PuVwuSLSs0mmBEIi7m2+BcEZIP
 3IN9tePoD4gt4BchfbRu2IPJ+EoGTVzcbLTM0vzBx2kP++VuQYWDiIwp7sxAET9DlITmZSvHqDLl7
 a89rgFs/0oqRSvn0vRYHoeNkD4t5f3h0qA3n+oMxtqlXYYw/KxC1WNnqS7kzoKjpkzl5B9h5P8U47
 oRWJhxddtYXzvNhjAYlghy2Cz5m3IBrWa34RR1z3Tlltswf8nekJaGLnoiaxKdg4YjRPGpckFds7x
 L849pTYO9XxkYXk6nn66L38mI6rjx4uV1ZGW0v4WIO7BO2SAd0he6FKaDXMS+3wSabsrQXdo4tV8Z
 F6gX3YiQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghWg-00A7gf-91
 for barebox@lists.infradead.org; Wed, 12 May 2021 05:35:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghWe-0004rc-ME; Wed, 12 May 2021 07:35:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghWd-0003Bi-KM; Wed, 12 May 2021 07:35:15 +0200
Date: Wed, 12 May 2021 07:35:15 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org, Neeraj Pal <neerajpal09@gmail.com>
Message-ID: <20210512053515.GK19819@pengutronix.de>
References: <20210417211144.26466-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210417211144.26466-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:33:26 up 83 days,  8:57, 78 users,  load average: 0.07, 0.11, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_223518_341204_F0EAC98D 
X-CRM114-Status: GOOD (  26.26  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: console_common: Replace vsprintf with vsnprintf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules,

On Sat, Apr 17, 2021 at 11:11:44PM +0200, Jules Maselbas wrote:
> Replace the *sprintf to their *snprintf version when printing
> to the fixed size printbuffer.
> 
> Reported-by: Neeraj Pal <neerajpal09@gmail.com>
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---

I didn't realize you also created this patch. I like your version better
because of the sizeof() you used. Replaced my version with yours, but I
added the pbl/console.c changes from my patch to yours.

Sascha

>  common/console_common.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/common/console_common.c b/common/console_common.c
> index 3e0741572..dc3a611e1 100644
> --- a/common/console_common.c
> +++ b/common/console_common.c
> @@ -126,7 +126,7 @@ int pr_print(int level, const char *fmt, ...)
>  		return 0;
>  
>  	va_start(args, fmt);
> -	i = vsprintf(printbuffer, fmt, args);
> +	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
>  	va_end(args);
>  
>  	pr_puts(level, printbuffer);
> @@ -139,18 +139,19 @@ int dev_printf(int level, const struct device_d *dev, const char *format, ...)
>  	va_list args;
>  	int ret = 0;
>  	char printbuffer[CFG_PBSIZE];
> +	size_t size = sizeof(printbuffer);
>  
>  	if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
>  		return 0;
>  
>  	if (dev->driver && dev->driver->name)
> -		ret += sprintf(printbuffer, "%s ", dev->driver->name);
> +		ret += snprintf(printbuffer, size, "%s ", dev->driver->name);
>  
> -	ret += sprintf(printbuffer + ret, "%s: ", dev_name(dev));
> +	ret += snprintf(printbuffer + ret, size - ret, "%s: ", dev_name(dev));
>  
>  	va_start(args, format);
>  
> -	ret += vsprintf(printbuffer + ret, format, args);
> +	ret += vsnprintf(printbuffer + ret, size - ret, format, args);
>  
>  	va_end(args);
>  
> @@ -237,7 +238,7 @@ int printf(const char *fmt, ...)
>  	 * For this to work, printbuffer must be larger than
>  	 * anything we ever want to print.
>  	 */
> -	i = vsprintf (printbuffer, fmt, args);
> +	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
>  	va_end(args);
>  
>  	/* Print the string */
> @@ -256,7 +257,7 @@ int vprintf(const char *fmt, va_list args)
>  	 * For this to work, printbuffer must be larger than
>  	 * anything we ever want to print.
>  	 */
> -	i = vsprintf(printbuffer, fmt, args);
> +	i = vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
>  
>  	/* Print the string */
>  	puts(printbuffer);
> @@ -344,7 +345,7 @@ int dprintf(int file, const char *fmt, ...)
>  	 * For this to work, printbuffer must be larger than
>  	 * anything we ever want to print.
>  	 */
> -	vsprintf(printbuffer, fmt, args);
> +	vsnprintf(printbuffer, sizeof(printbuffer), fmt, args);
>  	va_end(args);
>  
>  	/* Print the string */
> -- 
> 2.30.2
> 
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

