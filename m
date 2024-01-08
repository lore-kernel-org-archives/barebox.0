Delivery-date: Mon, 08 Jan 2024 11:03:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmTS-008g48-2Y
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 11:03:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmTS-0001Lc-7P
	for lore@pengutronix.de; Mon, 08 Jan 2024 11:03:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e23ZI5NUNVyFu+ibsgkHonr89YkPa7Y7gUVstVetoZ0=; b=yr9v8xF7NOJwJxlXbu7VAYTj/5
	kHdx3d+hJkDpd1zm03suqy2FQH+nwz71ruUfrWO9BmXmLcSamdksN3XWKnEbnxhd0QSeYQUX/s5dt
	9lxuBmL0GyV3SJnxZb4TGYKcj5KEBcRKZKbZRM7t1fQmFHodQHbMADi3RSTc7nkdVTcr+VPLZuTDG
	7ZwCgIEjVSqtx1n0Cff4JHz78X6Wr9HA5f3TrvTvlzYnFEBm8JO4CMzh5oPwjFvIAjsVKn1lrqAdF
	EBX4xDXSWU5VB1uF8OpumfOVkXmUYKOWOpAp0JbcfihQCsAugrD2XzPPSkoaXvCAG4jK9hRklEWnv
	qui/cFqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmSQ-004YfA-2k;
	Mon, 08 Jan 2024 10:02:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmSN-004Yen-2t
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 10:02:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMmSM-00018v-J4; Mon, 08 Jan 2024 11:02:06 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rMmSM-001DRt-6V; Mon, 08 Jan 2024 11:02:06 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMmSM-00Aq2A-3y; Mon, 08 Jan 2024 11:02:06 +0100
Date: Mon, 8 Jan 2024 11:02:06 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240108100206.GF1318922@pengutronix.de>
References: <20240105131000.1328500-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240105131000.1328500-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_020207_931463_720050DB 
X-CRM114-Status: GOOD (  20.01  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] rsatoc: fix typo in usage string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jan 05, 2024 at 02:10:00PM +0100, Ahmad Fatoum wrote:
> The commit introducing help text for the individual options,
> inadvertently modified the usage string. Revert that single line.
> 
> Fixes: 94a2b2b28738 ("rsatoc: support generating standalone keys unreferenced by FIT keyring")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/rsatoc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index 6d10dca4169c..d5943d4a1154 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -509,7 +509,7 @@ int main(int argc, char *argv[])
>  	}
>  
>  	if (optind == argc) {
> -		fprintf(stderr, "Usage: %s [-ods]  OUTFIE<key_name_hint>:<crt> ...\n", argv[0]);
> +		fprintf(stderr, "Usage: %s [-ods] <key_name_hint>:<crt> ...\n", argv[0]);
>  		fprintf(stderr, "\t-o FILE\twrite output into FILE instead of stdout\n");
>  		fprintf(stderr, "\t-d\tgenerate device tree snippet instead of C code\n");
>  		fprintf(stderr, "\t-s\tgenerate standalone key outside FIT image keyring\n");
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


