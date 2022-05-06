Delivery-date: Fri, 06 May 2022 17:01:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmzSM-003psj-EV
	for lore@lore.pengutronix.de; Fri, 06 May 2022 17:01:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmzSK-0005vj-Rp
	for lore@pengutronix.de; Fri, 06 May 2022 17:01:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+NCODprQW1Rlt4tu1YZthSfnEk/IjmlYmu+bNzzxBk=; b=X1Rxj5gr67icda
	waug24Ym13lITMZXp+Gi81g6HhX4S6hlETL1cqJmzfOjrA8FjV7Aq4J2R9wb4w1tJkiXZfJEvbhEL
	XrImtz/Cbs5TikqRc0ehYQFSGE1nkP3QUGm1+HQlkp9xo0HGkxNUZoE2lK9e5F9jAHuJzMJhFFMZ/
	lZ8HZ5/cEyXMX6+krqQek2OBfL2ac1yUXp6NboSYJ2Hs6S1bpQwNaFKDTVAa+rzrCYm5+VyVgR+lw
	xR38xWQdwM61lkQuDVZuDxWM0ESXmAX0IRu7+VG9REc9KxzOM6XvrelVCp3Jne4MrxvhvRitt4+0u
	bOyQ4naon1q3vPlYLy3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmzR0-003vgh-Ou; Fri, 06 May 2022 14:59:58 +0000
Received: from smtpout30.security-mail.net ([85.31.212.34]
 helo=fx304.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmzQv-003vfA-JY
 for barebox@lists.infradead.org; Fri, 06 May 2022 14:59:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id 38790627D7
 for <barebox@lists.infradead.org>; Fri,  6 May 2022 16:59:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1651849187;
 bh=1JHARtxR6nx1hCp2hHoueJ2+8quEaGtmx5v2JPfO+YA=;
 h=Date:From:To:Subject:References:In-Reply-To;
 b=G/HubpPl9rabGWr1zM0jnlgXGGdvU2PLOR1k1btrNp4qLCfTkQNGGuSPUOdi/Aosr
 hN2KWEC/v7ZWybNmX+NvBQz/nltDskGzny0hA8hRhcmt9tDvC8tibjV9c96rCSYGAi
 otX59NpyMNkeKXdYe2hQc8GLnqU8zeOw1CZavWQE=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id E15E6627B1 for <barebox@lists.infradead.org>; Fri, 
 6 May 2022 16:59:46 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx304.security-mail.net (Postfix) with ESMTPS id 6361262719 for
 <barebox@lists.infradead.org>; Fri,  6 May 2022 16:59:46 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 1683627E0492 for
 <barebox@lists.infradead.org>; Fri,  6 May 2022 16:59:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 00F5627E0491 for <barebox@lists.infradead.org>; Fri,
 6 May 2022 16:59:46 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 1hCVmEdkY1on for <barebox@lists.infradead.org>; Fri,  6 May 2022 16:59:45
 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id E6B3027E0457 for
 <barebox@lists.infradead.org>; Fri,  6 May 2022 16:59:45 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <177ae.627537e2.2ec4d.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 00F5627E0491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1651849186;
 bh=va8f2L6AHBJfW2MCXdGjSVlTh/LbLlGnv2o8Q23KzLY=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=ZbbzJgV5oU9oVhPao7KOor+aETsH6uMY48/AK9GKtcYFJapek81ExDkEgGmUhqwrt
 8ssJVHLZ6eugav2a1yt7UoZUWsk+celbes2aYfRPdNpKuktXRoD8bF3SvMqO1kLTAF
 ZHnWKGSm07C6tdimb8uigSAodBbYfGiI7PUIr6s0=
Date: Fri, 6 May 2022 16:59:44 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Message-ID: <20220506145944.GE10082@tellis.lin.mbt.kalray.eu>
References: <20220505100805.5144-1-jmaselbas@kalray.eu>
 <20220506145856.14831-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220506145856.14831-1-jmaselbas@kalray.eu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_075953_970718_D1EDA3BC 
X-CRM114-Status: GOOD (  12.28  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! net: dns: Generate and verify transaction ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I've typed too fast ^^'

On Fri, May 06, 2022 at 04:58:56PM +0200, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  net/dns.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/net/dns.c b/net/dns.c
> index 9ad316e33..9803ef475 100644
> --- a/net/dns.c
> +++ b/net/dns.c
> @@ -58,7 +58,7 @@ struct header {
>  
>  static struct net_connection *dns_con;
>  static uint64_t dns_timer_start;
> -static uin32_t dns_req_id;
> +static uint32_t dns_req_id;
>  static int dns_state;
>  static IPaddr_t dns_ip;
>  
> @@ -132,7 +132,7 @@ static void dns_recv(struct header *header, unsigned len)
>  	pr_debug("%s\n", __func__);
>  
>  	/* Only accept responses with the expected request id */
> -	if (ntohs(header->id) != dns_req_id)
> +	if (ntohs(header->tid) != dns_req_id)
>  		return;
>  
>  	/* We sent 1 query. We want to see more that 1 answer. */
> -- 
> 2.17.1
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

