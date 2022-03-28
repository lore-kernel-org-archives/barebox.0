Delivery-date: Mon, 28 Mar 2022 10:55:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYl9x-008oc5-Uh
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 10:55:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYlA0-0000iJ-39
	for lore@pengutronix.de; Mon, 28 Mar 2022 10:55:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vcTfd01JKX9bUvnUQqlgYpCpW+m3bv9IYXqGRxJ8OQQ=; b=XRG7iysvoFgrscOB7mpniMCQag
	jj3beMFzTDe/b2YP20VukstRKR3Ercptuw9C+37Tio8I+b+gQQfPTiuGTrLFO8vaLRb4hb8vZra/x
	S0a+tTGV5dP1ubkx4qWhlqgKukc+lqbCT+2qz3N/sSlXSVHcjZR543WqOqLulZ5ye9B3BNYOyikcX
	UGbUZJZSKjpEcRFsvAn4RlZM1gJjAJLnL3vNnylXP73BZZrXfO5O+N28+vS959BTcAL36PJodDqjG
	1dd9tgkJn52L+45JAAjRhSrxP0xBqF757CsOdnjzI5MOSbVjYHj6RULj0BIXC3BFLIK4KkmvKrLtz
	c2JF7LCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYl8n-007vou-Fe; Mon, 28 Mar 2022 08:54:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYl8h-007vnF-Qg
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 08:54:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYl8g-0000T9-Cw; Mon, 28 Mar 2022 10:54:14 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYl8f-0005d8-4h; Mon, 28 Mar 2022 10:54:13 +0200
Date: Mon, 28 Mar 2022 10:54:13 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220328085413.GK12181@pengutronix.de>
References: <20220319074335.1313872-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220319074335.1313872-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:54:03 up 107 days, 17:39, 85 users,  load average: 0.74, 0.29,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_015415_885347_E5BB8A49 
X-CRM114-Status: GOOD (  21.10  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: asm: setjmp: add missing .pop_section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Mar 19, 2022 at 08:43:35AM +0100, Ahmad Fatoum wrote:
> This fixes a mismatched .push_section. This had no effect, because the
> file ended after the follow-up .push_section.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/lib32/setjmp.S | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/lib32/setjmp.S b/arch/arm/lib32/setjmp.S
> index 626d915da183..cc6cafa4af3e 100644
> --- a/arch/arm/lib32/setjmp.S
> +++ b/arch/arm/lib32/setjmp.S
> @@ -33,6 +33,7 @@ ENTRY(longjmp)
>  1:
>  	bx   lr
>  ENDPROC(longjmp)
> +.popsection
>  
>  .pushsection .text.initjmp, "ax"
>  ENTRY(initjmp)
> -- 
> 2.34.1
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

