Delivery-date: Mon, 09 Aug 2021 19:59:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD9YQ-0001Z7-Kq
	for lore@lore.pengutronix.de; Mon, 09 Aug 2021 19:59:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD9YM-0003xa-5s
	for lore@pengutronix.de; Mon, 09 Aug 2021 19:59:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=azrjcfcDGZFMIP+DDY8TydZPSdHHB31oDjiZlJ3nJqc=; b=4Sy/8Hb2HjQWSr5PQ0WEHhIRr/
	qECNtXAyswdOpBTONnw5vwFRBAI1Xc8eRVCHho1jK4aYAVTPuvdZUgY+aKDmvtOJ1Ixjdlqnf3aWC
	afaPoQ13SfAklh2tT/fmgLBCF6aHblL2DOT2SvgZ+apMMpR1uA280Jlmc1xGu0dW6FMa6kzpUP2ND
	IRZmK+tpITLErhMBwUoeidni8ITjG+scz/b5UkIHKYzHw9lIJicGIQJNnr/BMBKFvy0PJNGtDCFIg
	m4fCXQM3PzwNz7NbLC5B1xsMAN06jLEc8PTU377ccxbIto/qZzWNbepJ+myZMYV952BSJ0YiW0YTf
	hi749BcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD9WN-001c19-RJ; Mon, 09 Aug 2021 17:57:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD9WG-001bwy-30
 for barebox@lists.infradead.org; Mon, 09 Aug 2021 17:57:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mD9WC-0003id-Cv; Mon, 09 Aug 2021 19:56:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mD9WC-0003CO-3X; Mon, 09 Aug 2021 19:56:56 +0200
Date: Mon, 9 Aug 2021 19:56:56 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210809175656.GA11515@pengutronix.de>
References: <20210806093337.10153-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210806093337.10153-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 19:56:43 up 172 days, 21:20, 81 users,  load average: 0.05, 0.15,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_105700_153551_8472DD9A 
X-CRM114-Status: GOOD (  24.51  )
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
Subject: Re: [PATCH] scripts: bareboxenv: add erase hint if build as host-tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 06, 2021 at 11:33:37AM +0200, Marco Felsch wrote:
> The bareboxenv behviour is different if used as host-tool. As host-tool
> the erase is skipped which can confuse the user. Add a help note as hot
> fix. In the long term we should add the host-tool erase support as well.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  scripts/bareboxenv.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
> index bdff644335..f1706a5e17 100644
> --- a/scripts/bareboxenv.c
> +++ b/scripts/bareboxenv.c
> @@ -98,6 +98,12 @@ static void usage(char *prgname)
>  	printf( "Usage : %s [OPTION] DIRECTORY FILE\n"
>  		"Load a barebox environment sector into a directory or\n"
>  		"save a directory into a barebox environment sector\n"
> +#ifndef __BAREBOX__
> +		"\n"
> +		"Attention:\n"
> +		"Depending on your environment backend storage you need to\n"
> +		"erase FILE before you save the new environment.\n"
> +#endif
>  		"\n"
>  		"options:\n"
>  		"  -s        save (directory -> environment sector)\n"
> -- 
> 2.30.2
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

