Delivery-date: Wed, 17 Mar 2021 09:35:53 +0100
Received: from [2001:67c:670:201:290:27ff:fe1d:cc33] (helo=metis.ext.pengutronix.de)
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMRej-00044L-PY
	for lore@lore.pengutronix.de; Wed, 17 Mar 2021 09:35:53 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMRei-0001iB-EZ
	for lore@pengutronix.de; Wed, 17 Mar 2021 09:35:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0w4p9cxXjZVSOEnCSLG9d5zEmxUVELLHtD51+5Hgqzc=; b=XilUK3PPBkOLUupUWD+1ZeKoL
	aXufJrpJ9AjZpS5b0OdGLdYO2Y2Xh4WN4t0r8geE4eOYyk03zVEapq7qnR9t2PGZD4nWjWi9xyyZR
	mkxuzubpKEKp5KdjCNy5SEJQSW3l8FYZ/uk3vHiZgZ/x7fRdyvqpzTMOlxS67MgiUwzMt1/OvRNgg
	QSY+au1/KobbjzJKyaLs9qDJZfmvSVzaYUL+sxlaeMaX+TZYfvcbQeQwN3o4/OHyAOO6WMUn1lTX7
	OabhpotHsQw81bMsiEEXPaQZuHiD0gfOPNKksKZspLlXhB2XSYfYEfoW4jpu6ZF3i1ZIphkMS7Adg
	uzlNry1qw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMRdb-002lts-CI; Wed, 17 Mar 2021 08:34:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMRdT-002lt6-MY
 for barebox@lists.infradead.org; Wed, 17 Mar 2021 08:34:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lMRdS-0001a0-1L; Wed, 17 Mar 2021 09:34:34 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lMRdR-0006t8-Bs; Wed, 17 Mar 2021 09:34:33 +0100
Date: Wed, 17 Mar 2021 09:34:33 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210317083433.GW23724@pengutronix.de>
References: <20210316082034.1740511-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210316082034.1740511-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:34:24 up 27 days, 11:58, 83 users,  load average: 0.08, 0.12, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_083435_829258_7F8E8F36 
X-CRM114-Status: GOOD (  25.80  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! commands: add new bthread test command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 16, 2021 at 09:20:34AM +0100, Ahmad Fatoum wrote:
> GCC whines about casting int to pointer, which aren't always the same
> size in barebox. Use long instead to avoid the warning.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  commands/bthread.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/bthread.c b/commands/bthread.c
> index 05dfa68cc597..964a1044c58b 100644
> --- a/commands/bthread.c
> +++ b/commands/bthread.c
> @@ -66,15 +66,15 @@ static int bthread_isolated_time(void)
>  static int bthread_printer(void *arg)
>  {
>  	volatile u64 start;
> -	volatile int i = 0;
> +	volatile unsigned long i = 0;
>  	start = get_time_ns();
>  
>  	while (!bthread_should_stop()) {
>  		if (!is_timeout_non_interruptible(start, 225 * MSECOND))
>  			continue;
>  
> -		if ((long)arg == i++)
> -			printf("%s yield #%d\n", bthread_name(current), i);
> +		if ((unsigned long)arg == i++)
> +			printf("%s yield #%lu\n", bthread_name(current), i);
>  		start = get_time_ns();
>  	}
>  
> @@ -87,14 +87,14 @@ static int bthread_spawner(void *arg)
>  {
>  	struct bthread *bthread[4];
>  	volatile u64 start;
> -	volatile int i = 0;
> +	volatile unsigned long i = 0;
>  	int ret = 0;
>  	int ecode;
>  
>  	start = get_time_ns();
>  
>  	for (i = 0; i < ARRAY_SIZE(bthread); i++) {
> -		bthread[i] = bthread_run(bthread_printer, (void *)i,
> +		bthread[i] = bthread_run(bthread_printer, (void *)(long)i,
>  					 "%s-bthread%u", bthread_name(current), i+1);
>  		if (!bthread[i]) {
>  			ret = -ENOMEM;
> -- 
> 2.30.0
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

