Delivery-date: Wed, 12 May 2021 13:26:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgn0o-0007IS-KP
	for lore@lore.pengutronix.de; Wed, 12 May 2021 13:26:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgn0n-0008UJ-TL
	for lore@pengutronix.de; Wed, 12 May 2021 13:26:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vUzZtF+fOxFFTFsjcbpvvKWIagHeJchoMGaxkOnZghM=; b=pNePCetFmu0U/GXQJ8kqKqRUC
	oL/Uu7Ak6naUH709e3vQQ0WKEDSMRetUWNsBk1tTOFaIhy9i0i1OF+dB+xzyw6c08vNrdl2PPYtg5
	r/UyNYavP4CThvJuR3YTSEsDvmpMu8wyA/9YZ1ef9/zikTRwkrJy74z5j1bsbdwPbiDqyk6pQncPE
	gsi0J1oC+wi1+2CCZs2GbnwHdmrCKHoqWwsRcpzlZ7Qz0OYaIyxNwpZnHfMNu4OoDcnA4LP8u3QN6
	pkrrN0DVRz6TRfIa9SlKGJKzs27GLYMPg/xzH26F8QCG43zPLTU5exJq68ndRObk/0F1YoWF+BLsb
	CuG+iQ7Sg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgmzV-002bgu-VY; Wed, 12 May 2021 11:25:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgmzR-002bgg-PJ
 for barebox@desiato.infradead.org; Wed, 12 May 2021 11:25:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=iNM85xD4n7CKBdU0Lnw/qxyEsfmFAywZmoKi1T6sd3M=; b=KQNBk3fBvFOAkVOlOu0T+iSHX5
 DLtc0zdx3AU+wZn1YZSXNI0w778jyjv513aJhWrbP9O8dNTfI/qnuEbc1+cPU9GdTzqg433v4T87Z
 w4MLN86WiiuhyyDOrR4dI/eDhPFBEwTTyarJqbGnyKn/wWMBg8XW9hqe/gLfQZOIcPm4l4QT778/d
 lu6eYFh4nfm59vjJ5S/eBwZpCbPrVwRuB1EZsr/547JfDeHI/nqBWUxrmPFtAyE5IwA5tskqFflRR
 n3pmTFEiKTJcv3nJqESobixm94ChiLkvT9wVoVEyn6EaiexSPFcWdjELht3mk3pblvBjVqUCaJoTi
 KSq7az5w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgmzO-00AJEC-PK
 for barebox@lists.infradead.org; Wed, 12 May 2021 11:25:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1lgmzK-0008ES-G0; Wed, 12 May 2021 13:25:14 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1lgmzK-0000Zp-4Y; Wed, 12 May 2021 13:25:14 +0200
Date: Wed, 12 May 2021 13:25:14 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20210512112514.GB13688@pengutronix.de>
Mail-Followup-To: barebox@lists.infradead.org,
 Sascha Hauer <sha@pengutronix.de>
References: <20210512054440.2479-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210512054440.2479-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:22:27 up 83 days, 14:46, 107 users,  load average: 0.11, 0.16,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_042518_844979_DEE6E690 
X-CRM114-Status: GOOD (  26.16  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] readline_simple: Fix compiler warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 12, 2021 at 07:44:40AM +0200, Sascha Hauer wrote:
> char is an unsigned type.

That's incorrect. In the C standard it is explicitly undefined whether char
is signed or unsigned. gcc implements this differently depending on the
architecture. I think ARM and x86 differ here.

Michael

> To test the getchar() return value against
> negative values we have to use a signed type. Use int instead.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  lib/readline_simple.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/readline_simple.c b/lib/readline_simple.c
> index fcdbca41a9..2e52bfc2a0 100644
> --- a/lib/readline_simple.c
> +++ b/lib/readline_simple.c
> @@ -44,7 +44,7 @@ int readline (const char *prompt, char *line, int len)
>  	int	n = 0;				/* buffer index		*/
>  	int	plen = 0;			/* prompt length	*/
>  	int	col;				/* output column cnt	*/
> -	char	c;
> +	int	c;
>  
>  	/* print prompt */
>  	if (prompt) {
> -- 
> 2.29.2
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

