Delivery-date: Mon, 21 Jun 2021 09:59:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvEq5-0007le-NI
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 09:59:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvEq4-0004eH-RZ
	for lore@pengutronix.de; Mon, 21 Jun 2021 09:59:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PlPAMxOY1ycQQmlnVsd1u8sURehbzMa97gQSOROdOlQ=; b=jnRMx+jOVBYAdKRRSNVgP/c+ki
	CGOftpUDbjibm8tPWUFoqr+VpwzmQah6xZ0dBUTf0WoYhTZWjW26MgMBlkPtVFq8bquzoUSqI90Xd
	OaJi7htcAB7C8GB+eqz9iIYzV7R+WB2ZnKd6aKnEYKHN05VtmRk2X+KpHRLc1qlkFmIrz7PmKEZbV
	mwoD8mwJ1F5YL3NHSRH5MVxydvYvQFVb3IViP7XDHgULels5jhGR6c0n+4F6k8gh0Dsqr3p9Pa7Hi
	BP+TqiZ5snq0KTcyry0KZ9GogsIAd9dyeSKzqCpZiLkyz+TCOjNlArB63NgUY7kwLbEe3M23Dh+0E
	wQgQ5lwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvEoz-002cTa-30; Mon, 21 Jun 2021 07:58:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEot-002cSS-Vb
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 07:58:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvEos-0004Wh-PN; Mon, 21 Jun 2021 09:58:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvEor-0002SA-IG; Mon, 21 Jun 2021 09:58:09 +0200
Date: Mon, 21 Jun 2021 09:58:09 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210621075809.GP9782@pengutronix.de>
References: <20210619054217.499815-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210619054217.499815-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:57:59 up 123 days, 11:21, 120 users,  load average: 0.15, 0.18,
 0.23
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_005812_058645_29ECFBE6 
X-CRM114-Status: GOOD (  26.27  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: md: don't leak heap memory with unaligned
 accesses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Jun 19, 2021 at 07:42:17AM +0200, Ahmad Fatoum wrote:
> Doing unaligned near file end returns bogus results:
> 
> 	barebox@Sandbox:/ md -s /dev/stickypage 4095
> 	00000fff: 959ff8ff                                           .
> 
> That 0x959ff8 is heap memory next to the buffer md had allocated.
> Fix this by adding some zeroed padding after the buffer, so it instead
> reads:
> 
> 	00000fff: 000000ff                                           .
> 
> This is arguably better user experience.
> This only applies to non-mappable fd's. For e.g. /dev/mem, unaligned
> accesses will still be passed as-is.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  commands/md.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/md.c b/commands/md.c
> index ef6a1e1bc0b1..d80c7cca0ce4 100644
> --- a/commands/md.c
> +++ b/commands/md.c
> @@ -59,7 +59,7 @@ static int do_mem_md(int argc, char *argv[])
>  		goto out;
>  	}
>  
> -	buf = xmalloc(RW_BUF_SIZE);
> +	buf = xzalloc(RW_BUF_SIZE + 7);
>  
>  	do {
>  		now = min(size, (loff_t)RW_BUF_SIZE);
> -- 
> 2.32.0.rc0
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

