Delivery-date: Fri, 04 Nov 2022 09:55:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqsUX-00Ejwj-P7
	for lore@lore.pengutronix.de; Fri, 04 Nov 2022 09:55:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqsUW-0006ZW-Ml
	for lore@pengutronix.de; Fri, 04 Nov 2022 09:55:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=991sD/UaIk5cQtgb6pejmqgahvg2pvKv+fVEi+RIp1A=; b=Hj8nUJtYdwFN6NtAL/GWuGTNDT
	91+Oo15redghkmIIh132aWWD4RCjS/SVbTE02hbcPHNwixlrX2Y5NiotfKFRsUVhieUL/kz59PbKA
	Hlf2PmUmVbHLY7e8V9Xnw6NTER/TjwIAKAfwEM5I1OSVc732zxz4HRcaoLH23wM+jIfAwGoxEVkLf
	f857vYdQ2L0eGgQzFYf2s3wQl5C5rJTwMsZIdFzFDoFBHUwa5nPuhQtk+FR0bkRa1zuIi1FGuxL/3
	MJc0cvLJd9mTZqCnD4FO1iXVRS6t5N1Z8RsoSDSCdbkjFgF4YwLjRpaWOs0Fq7kuFl9u18u6V6M2h
	dg5evTbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqsTJ-00318j-Q7; Fri, 04 Nov 2022 08:54:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqsTE-00317P-IG
	for barebox@lists.infradead.org; Fri, 04 Nov 2022 08:54:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqsTD-0006Ac-7U; Fri, 04 Nov 2022 09:54:35 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oqsTD-0006Yp-0F; Fri, 04 Nov 2022 09:54:35 +0100
Date: Fri, 4 Nov 2022 09:54:34 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221104085434.GV3143@pengutronix.de>
References: <20221102085017.1941580-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102085017.1941580-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_015436_618674_6DDFA0FB 
X-CRM114-Status: GOOD (  21.84  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: uptime: add note about caveats
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 02, 2022 at 09:50:17AM +0100, Ahmad Fatoum wrote:
> Normally timer overrun is not that much of a problem, because there
> where it matters, we usually have an is_timeout() in the loop that reads
> the timer often enough. This doesn't necessarily hold for the new uptime
> command and basically anything can happen between subsequent calls and
> if get_time_ns() is not called often enough during that time, we end up
> with an inaccurate uptime. Mention this in the extended help text.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Can be squashed into original commit.
> ---
>  commands/uptime.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/commands/uptime.c b/commands/uptime.c
> index a9a8c650b698..d67538631c8f 100644
> --- a/commands/uptime.c
> +++ b/commands/uptime.c
> @@ -66,6 +66,9 @@ static int do_uptime(int argc, char *argv[])
>  BAREBOX_CMD_HELP_START(uptime)
>  BAREBOX_CMD_HELP_TEXT("This command formats the number of elapsed nanoseconds")
>  BAREBOX_CMD_HELP_TEXT("as measured with the current clocksource")
> +BAREBOX_CMD_HELP_TEXT("Note: Timekeeping is co-operative. If long running code does")
> +BAREBOX_CMD_HELP_TEXT("not use delay/is_timeout/get_time_ns/getchar functions")
> +BAREBOX_CMD_HELP_TEXT("timer may overrun resulting in incorrect results")
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-n",     "output elapsed time in nanoseconds")
>  BAREBOX_CMD_HELP_END
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


