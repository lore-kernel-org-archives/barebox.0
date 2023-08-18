Delivery-date: Fri, 18 Aug 2023 08:02:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWsZ7-0090RB-HH
	for lore@lore.pengutronix.de; Fri, 18 Aug 2023 08:02:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWsZ5-0005zu-Nw
	for lore@pengutronix.de; Fri, 18 Aug 2023 08:02:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c89km48Aso14B9QnzWbPIiOj6NZbOf6wH8iib91JjmY=; b=mo4YvRv1a1fcvoiGRKRoIWa7Gu
	0Lz7EHUeFRZy1GIDciTY2E+Mmr6iCLsOd2YmhuDVgxqfRIJc4PSxfQBIPrUh1pif/dx8oEmGYa9/s
	bcwBFZfFDPSXlDS0ttjLJ372+PRQMToIkm7Qu67qy4ZoRus9zmZ+cjiHMa7lq/F6Ygte/TkA/DMt/
	1PUoqRpmUmI/63z1OhMqinnUIlZdtdavEl7g0Dty9abxfPXbjQ0U2gzJ+1nyqlJJfJxLef9lRKZHA
	jqKb28UiL4xiLz2jnBQaU/fyM+SrH8pearCBm1XMczYz8/Pl/kosqmp+2Bdl6wwIJlHny6SkBPdt/
	RGTunh4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWsXf-007m97-24;
	Fri, 18 Aug 2023 06:01:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWsXc-007m8R-1h
	for barebox@lists.infradead.org;
	Fri, 18 Aug 2023 06:01:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWsXa-0005U7-NE; Fri, 18 Aug 2023 08:00:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWsXa-0005tE-HO; Fri, 18 Aug 2023 08:00:58 +0200
Date: Fri, 18 Aug 2023 08:00:58 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230818060058.GL5650@pengutronix.de>
References: <20230817073941.1261154-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230817073941.1261154-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_230100_577027_49E1B5A5 
X-CRM114-Status: GOOD (  20.76  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] envfs: fix defaultenv_append_directory macro
 definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 17, 2023 at 09:39:39AM +0200, Ahmad Fatoum wrote:
> defaultenv_append_directory is called as if it were a function and the
> trailing semicolon can break parse of if-else statements. Wrap in do { }
> while (0) to avoid this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/envfs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/envfs.h b/include/envfs.h
> index d4e2c6110e65..abe0ffb96397 100644
> --- a/include/envfs.h
> +++ b/include/envfs.h
> @@ -139,13 +139,13 @@ static inline int defaultenv_load(const char *dir, unsigned flags)
>   * from the filename.
>   */
>  #define defaultenv_append_directory(name)			\
> -	{							\
> +	do {							\
>  		extern char __bbenv_##name##_start[];		\
>  		extern char __bbenv_##name##_end[];		\
>  		defaultenv_append(__bbenv_##name##_start,	\
>  				__bbenv_##name##_end -		\
>  				__bbenv_##name##_start,		\
>  				__stringify(name));		\
> -	}
> +	} while (0)
>  
>  #endif /* _ENVFS_H */
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


