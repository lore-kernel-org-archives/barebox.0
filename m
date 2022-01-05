Delivery-date: Wed, 05 Jan 2022 09:51:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n521X-00BYsm-L8
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 09:51:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n521V-0005Kg-W8
	for lore@pengutronix.de; Wed, 05 Jan 2022 09:51:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6WnYMYLJ1k5/qCjzCMfPLd8p8VyfnRfSPav+UR+03Mk=; b=hNfcu8aDlgHoRXdJi73nkmBPoq
	Pa1vi6KC/Xn/0LiiJluFq/05Iu6h+eXQiuMMyhLSeAgxA482+W/Axt3Us9GZnEKAITGTyWh9KfR+s
	ps+zSG9VpgHzzKupE9IpuKWcXGXvBE40jiZ91KYWOXbIKjQFqZAFdlbGKo6q7woyaT4J9xYOFxoGn
	+5XSV3gByUhZsqXt17quiLYNKhUyR2bEfWlT3n2pciSUwdE3jvdvM2ER8bl8oLpUOxNXPT3lLKnm2
	cJdeT4OEHShcWP5Tu7+y4noKcK5ruGAZm+GPCTi4H3KcONxaY9c/3XLAf2qvccTWPjfpm8onMo4BO
	DKiG+ueQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5206-00EGiB-9m; Wed, 05 Jan 2022 08:50:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5201-00EGhS-GQ
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 08:50:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n51zz-0005BX-Rv; Wed, 05 Jan 2022 09:50:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n51zz-0004Tc-IH; Wed, 05 Jan 2022 09:50:23 +0100
Date: Wed, 5 Jan 2022 09:50:23 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220105085023.GP6003@pengutronix.de>
References: <20220103120310.1729050-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220103120310.1729050-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:44:28 up 25 days, 17:30, 73 users,  load average: 1.03, 1.07, 1.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_005025_579175_34D6A153 
X-CRM114-Status: GOOD (  26.73  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: time: add -n option for nanoseconds output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 03, 2022 at 01:03:10PM +0100, Ahmad Fatoum wrote:
> The current millisecond output may be too coarse for debugging timing
> of barebox functionality. Add an optional nanosecond output.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/time.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/commands/time.c b/commands/time.c
> index 25ba2da15ed5..2d9fb75e7a8c 100644
> --- a/commands/time.c
> +++ b/commands/time.c
> @@ -9,7 +9,7 @@ static int do_time(int argc, char *argv[])
>  	int i;
>  	unsigned char *buf;
>  	u64 start, end, diff64;
> -	unsigned long diff;
> +	bool nanoseconds = false;
>  	int len = 1; /* '\0' */
>  
>  	if (argc < 2)
> @@ -20,7 +20,13 @@ static int do_time(int argc, char *argv[])
>  
>  	buf = xzalloc(len);

The argv[] elements are copied into a string allocated here. The number
of bytes needed is calculated before the option parsing, so the space
allocated here unnecessarily includes the space for the options. Not a
big deal, but I think it's more consistent to move the option parsing
before calculating the needed buffer space.

>  
> -	for (i = 1; i < argc; i++) {
> +	i = 1;
> +	if (!strcmp(argv[i], "-n")) {
> +		nanoseconds = true;
> +		i++;
> +	}

I just created a patch to support '+' as the first character of
optstring. This allows you to use regular getopt for option parsing
here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

