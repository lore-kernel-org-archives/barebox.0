Delivery-date: Wed, 26 Jul 2023 14:19:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOdUZ-00Aq3U-9Z
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 14:19:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOdUW-0002lj-Dv
	for lore@pengutronix.de; Wed, 26 Jul 2023 14:19:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mn6eWM7D4ec6z6bOualz1SDqKqq667c0EkoAfSDD2No=; b=0BkkB94Q0RppdFqCiydzsjnfau
	XX01RX44I/NT6Wmh3gMNZzhqTsd59GLoRDDz4Q8UVjZU/sS9nj/t7Y+xgyucNtAc3/eblM5f0vdHw
	4tgcqaGjKGTQspYfUmKbYQc4ynmVvwfjgpIBxlyG4luAXJd/ucVQOe0UmzjXBoU4yOv+bRW0r6FnY
	x7MajlJ4Z0UGBRunNUwEfD74dZAxcMP/lNkrRjuy1vMxlJnqCsTS2eScESd6/ipDMxH07KVbFlq6V
	XHHdIpATefNU9LIuEnr+DahgTtwTXOoKngSnlDmv6gMsiM+g6QHYbQkv8ZZ7BnX/k1QfhcywUvKRQ
	g05H/9hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOdTW-00AJvQ-1G;
	Wed, 26 Jul 2023 12:18:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOdTS-00AJuL-36
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 12:18:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOdTR-0002X8-Mn; Wed, 26 Jul 2023 14:18:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOdTR-0005L9-AE; Wed, 26 Jul 2023 14:18:37 +0200
Date: Wed, 26 Jul 2023 14:18:37 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20230726121837.GP18491@pengutronix.de>
References: <20230711091123.19111-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230711091123.19111-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_051838_999257_6A5C33C1 
X-CRM114-Status: GOOD (  20.93  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] soc: kvx: Rename function to match global variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 11, 2023 at 11:11:21AM +0200, Jules Maselbas wrote:
> The global variable "kvx_serial" has been renamed to "kvx_mppa_id".
> Do the same with the function name that sets this global variable.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/soc/kvx/kvx_socinfo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/kvx/kvx_socinfo.c b/drivers/soc/kvx/kvx_socinfo.c
> index 8cac8899d2..fc7ba1c1b9 100644
> --- a/drivers/soc/kvx/kvx_socinfo.c
> +++ b/drivers/soc/kvx/kvx_socinfo.c
> @@ -81,7 +81,7 @@ static int base38_decode(char *s, u64 val, int nb_char)
>  	return 0;
>  }
>  
> -static int kvx_read_serial(struct device_node *socinfo)
> +static int kvx_read_mppa_id(struct device_node *socinfo)

This renames the function, but not the caller.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


