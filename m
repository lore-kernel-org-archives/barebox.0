Delivery-date: Fri, 06 May 2022 17:06:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmzWy-003qCL-Bv
	for lore@lore.pengutronix.de; Fri, 06 May 2022 17:06:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmzWw-0006ST-8L
	for lore@pengutronix.de; Fri, 06 May 2022 17:06:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t18saJBW2Na4taFVVIVLr5sfI5Jv7TujgKFArjJOjO4=; b=TP71E6sQ+ShTyw
	IxSb1+3p5a0gy+I8IsHdf9Q3t1+Sdv+/4boVWlKOuK9x9BWSiJOI5xfV+Q04jkvFktgx40L9akrLj
	brIz9AdwHd4047RVkoHmAo22JBy7wleUxF9bF4tqqRJK26FJfhRKlE9aKthouUNjHtnYpOWdWmsjc
	ybPIhwK2dXJCCcMJRj25mhw7i3yoY541WPfwNLO/CJbRLL+NiH1fp0oR9jvO/3K6p/dJoJ0S0zFto
	2mqEKSzHXy6+quVAY4zGnQx/bcT6DQtpIa2mJ1kpVJrxGUj9I+eYZfxoe2dXQxw5WsmXYRrCeZwkn
	Qai2PpQVYnBO70Rxg/lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmzVP-003x8w-Aw; Fri, 06 May 2022 15:04:31 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36]
 helo=fx301.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmzV8-003x4I-2M
 for barebox@lists.infradead.org; Fri, 06 May 2022 15:04:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id C38C224BD0CA
 for <barebox@lists.infradead.org>; Fri,  6 May 2022 17:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1651849447;
 bh=cCOyBWIwk/m5GGhQ9F40b/F7YpsSnrWkIKR8dRtox8M=;
 h=Date:From:To:Subject:References:In-Reply-To;
 b=3aVjStzvsTjxKex+MiuN97btO0zMkiwX+Wv4QqgshrH4cnq0AI0JJ14vnW0o6xOmp
 tI1jO2i/RaLzU4ya8dcr4CWx0YR8EjYkEyc1neMVhYW5JddsVqOgZPe3L2UhZpJGAN
 2qtxNgInmdmXipPy2UQk+NcUFoAGOyiPRQXaJY2Q=
Received: from fx301 (localhost [127.0.0.1]) by fx301.security-mail.net
 (Postfix) with ESMTP id 7397624BD0A8 for <barebox@lists.infradead.org>; Fri,
 6 May 2022 17:04:07 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx301.security-mail.net (Postfix) with ESMTPS id E2BC424BD0BB for
 <barebox@lists.infradead.org>; Fri,  6 May 2022 17:04:06 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id C88D227E0457 for
 <barebox@lists.infradead.org>; Fri,  6 May 2022 17:04:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id B240227E0491 for <barebox@lists.infradead.org>; Fri,
 6 May 2022 17:04:06 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 OniGPisZXn7q for <barebox@lists.infradead.org>; Fri,  6 May 2022 17:04:06
 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id A3EE127E0457 for
 <barebox@lists.infradead.org>; Fri,  6 May 2022 17:04:06 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <10780.627538e6.e23ff.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu B240227E0491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1651849446;
 bh=g2cdXE4i5GaFcAZ3ufjfXdDnCs1Ohn0OlGSmU83T2ZQ=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=hjhFZe3RN1Y4ealQ5X+kQobsmiyYhdaquLjTPKuBqBqVWWFCwmxgO+VpSlXsrKty7
 fILBdpzTk9VMRVf2hAGv5VKBZfrJgwT0CWOf7A9GLbfRLE9mQPC2uObDzZNL/QAwKV
 Sily9utlvscZhUnfRsTPfUSmNOot/GLMB8t9O/ZY=
Date: Fri, 6 May 2022 17:04:05 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Message-ID: <20220506150405.GF10082@tellis.lin.mbt.kalray.eu>
References: <20220505100805.5144-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220505100805.5144-1-jmaselbas@kalray.eu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_080414_406553_203BF3E5 
X-CRM114-Status: GOOD (  18.94  )
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
Subject: Re: [PATCH] net: dns: Generate and verify transaction ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I would like some feedback on how to select a dns_req_id.
Although ths is likely not very critical to barebox, I think using both
dns_timer_start plus random32 is a bit overkill. Maybe simply using
random is sufficient.

On Thu, May 05, 2022 at 12:08:05PM +0200, Jules Maselbas wrote:
> The transaction ID wasn't verified on received DNS responses, plus the
> ID needs to be difficult to predict in order to avoid MitM (man in the
> middle) being able to easily forge responses.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  net/dns.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/net/dns.c b/net/dns.c
> index 78588b96f..9ad316e33 100644
> --- a/net/dns.c
> +++ b/net/dns.c
> @@ -58,6 +58,7 @@ struct header {
>  
>  static struct net_connection *dns_con;
>  static uint64_t dns_timer_start;
> +static uin32_t dns_req_id;
>  static int dns_state;
>  static IPaddr_t dns_ip;
>  
> @@ -70,9 +71,12 @@ static int dns_send(const char *name)
>  	unsigned char *p, *s, *fullname, *dotptr;
>  	const unsigned char *domain;
>  
> +	/* generate a random transaction id */
> +	dns_req_id = dns_timer_start + random32();
I am wondering if using only one of dns_timer_start or randome32 is
sufficient on its own. For the record musl uses clock_gettime without
random at all.

>  	/* Prepare DNS packet header */
>  	header           = (struct header *)packet;
> -	header->tid      = 1;
> +	header->tid      = htons(dns_req_id);
>  	header->flags    = htons(0x100);	/* standard query */
>  	header->nqueries = htons(1);		/* Just one query */
>  	header->nanswers = 0;
> @@ -127,6 +131,10 @@ static void dns_recv(struct header *header, unsigned len)
>  
>  	pr_debug("%s\n", __func__);
>  
> +	/* Only accept responses with the expected request id */
> +	if (ntohs(header->id) != dns_req_id)
> +		return;
> +
>  	/* We sent 1 query. We want to see more that 1 answer. */
>  	if (ntohs(header->nqueries) != 1)
>  		return;
> -- 
> 2.17.1
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

