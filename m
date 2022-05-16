Delivery-date: Mon, 16 May 2022 10:28:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqW5y-00FN5C-H8
	for lore@lore.pengutronix.de; Mon, 16 May 2022 10:28:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqW5x-0003OH-1z
	for lore@pengutronix.de; Mon, 16 May 2022 10:28:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pw2jUWQJ1W1N3MPY8PTFqpjEXCJ9OqHCGlLJFF8NSdE=; b=2omleih18kdI3xanhw12ZQIvgy
	j65yTXm7hwGCgYCgiUMERu3tF2gLBRRq1HNpC+AgAa7+bIisU2Wkbxz3JMVLUUqu/keaZGhCgnF14
	yFfSnNFmg8QP6O7U0oOPHT+YASkO5Lq5xRmLYxLBLcz3BxKpj16sMp4KN6fkSxqM8o7s9uVj6WGL6
	lDZizYSLfZq5Rc5wfkTffqihPxe15BzG8jW4Y32oOAU2/Ir8AMT5KgwHG1yCzdywarzbPE1dcZ7rb
	ZFkPbhpbOyzGTOsekzBDZ7N4CVv64EWVRJ897DOHs9/3XFE17h0iZzKk2lAmg1EXguvDbxZGphTFr
	AlXjadcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqW4c-006eBc-MN; Mon, 16 May 2022 08:27:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqW4X-006e9q-CR
 for barebox@lists.infradead.org; Mon, 16 May 2022 08:27:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nqW4V-0003Bq-Ia; Mon, 16 May 2022 10:27:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nqW4V-0003dI-02; Mon, 16 May 2022 10:27:19 +0200
Date: Mon, 16 May 2022 10:27:18 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20220516082718.GJ25578@pengutronix.de>
References: <20220512143726.21614-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220512143726.21614-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:27:09 up 46 days, 20:56, 77 users,  load average: 0.45, 0.68, 0.53
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_012721_460131_5F59BB4C 
X-CRM114-Status: GOOD (  32.39  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] net: dns: Generate and verify transaction ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 12, 2022 at 04:37:26PM +0200, Jules Maselbas wrote:
> The transaction ID wasn't verified on received DNS responses, plus the
> ID needs to be difficult to predict in order to avoid MitM (man in the
> middle) being able to easily forge responses.
> 
> The ID is generated from the time of the request, probably not strongly
> unpredictable, this what musl does and it is considered to be enough.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
> v2: fix the dns_req_id type to uint16_t, added pr_debug when incorrect id
>     is received, drop uses of the random32.
> 
>  net/dns.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/net/dns.c b/net/dns.c
> index 78588b96f..8b5e8d59e 100644
> --- a/net/dns.c
> +++ b/net/dns.c
> @@ -58,6 +58,7 @@ struct header {
>  
>  static struct net_connection *dns_con;
>  static uint64_t dns_timer_start;
> +static uint16_t dns_req_id;
>  static int dns_state;
>  static IPaddr_t dns_ip;
>  
> @@ -70,9 +71,12 @@ static int dns_send(const char *name)
>  	unsigned char *p, *s, *fullname, *dotptr;
>  	const unsigned char *domain;
>  
> +	/* generate "difficult" to predict transaction id */
> +	dns_req_id = dns_timer_start + (dns_timer_start >> 16);
> +
>  	/* Prepare DNS packet header */
>  	header           = (struct header *)packet;
> -	header->tid      = 1;
> +	header->tid      = htons(dns_req_id);
>  	header->flags    = htons(0x100);	/* standard query */
>  	header->nqueries = htons(1);		/* Just one query */
>  	header->nanswers = 0;
> @@ -127,6 +131,12 @@ static void dns_recv(struct header *header, unsigned len)
>  
>  	pr_debug("%s\n", __func__);
>  
> +	/* Only accept responses with the expected request id */
> +	if (ntohs(header->tid) != dns_req_id) {
> +		pr_debug("DNS response with incorrect id\n");
> +		return;
> +	}
> +
>  	/* We sent 1 query. We want to see more that 1 answer. */
>  	if (ntohs(header->nqueries) != 1)
>  		return;
> -- 
> 2.17.1
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

