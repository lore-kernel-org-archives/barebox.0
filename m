Delivery-date: Tue, 13 Sep 2022 10:17:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY174-003PfH-FF
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 10:17:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY173-0001Tn-5b
	for lore@pengutronix.de; Tue, 13 Sep 2022 10:17:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b7bFqksRzYiuBqVChJy72MDfpFx0Weom6dnoF0k9Luc=; b=J4glhzILoOX+uEWlghMI74QFqw
	RkYOAzlREna29vdmTyM+8hNCd1w03BnqaYbjyHE3sF1iXaHevQ03l+E11fzbGlSdFETo0HgJwAJaB
	M5kvi+/EHbWCvEPHC0ka5XpZtb/xLmgZdg2HRI93yKap7mq91P9LgIIQ/jY62KnToC4THXXKuMAXO
	6zacUjeD/uAXhTC5sxls6k3Suvsi//8OfSa0/qyEYQ+3+Nb+XjQ8NICN5qZDimyyHh0tc2BmWPjDE
	zK8ui6d6fBQpFcwtZ66zvyyc24dJ1Zwr2AVW/BigQjjTgQ7E9q50A5wkKct/PoJ7NDLWdEsQ6C/Im
	WeskKjSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY15l-004BWc-Dy; Tue, 13 Sep 2022 08:16:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY15e-004BPT-L2
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 08:16:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY15d-00017Y-Cz; Tue, 13 Sep 2022 10:16:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY15d-0003og-3x; Tue, 13 Sep 2022 10:16:17 +0200
Date: Tue, 13 Sep 2022 10:16:17 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220913081617.GJ6477@pengutronix.de>
References: <20220905070247.538308-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905070247.538308-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_011618_728066_218079E5 
X-CRM114-Status: GOOD (  23.22  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] blspec: fix memory leak handling NFS URLs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 09:02:47AM +0200, Ahmad Fatoum wrote:
> parse_nfs_url() returns either an allocated string on success or an
> error pointer otherwise. blspec_bootentry_provider() will early
> exit if the path couldn't be resolved and thus not free() the string.
> 
> Fix this memory leak. While at it, change parse_nfs_url() to return NULL
> on error. The error code is unused and just returning NULL, simplifies
> the code.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/blspec.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/blspec.c b/common/blspec.c
> index 9bb25ee72123..d391f690ad0c 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -341,10 +341,10 @@ static char *parse_nfs_url(const char *url)
>  	int ret;
>  
>  	if (!IS_ENABLED(CONFIG_FS_NFS))
> -		return ERR_PTR(-ENOSYS);
> +		return NULL;
>  
>  	if (strncmp(url, "nfs://", 6))
> -		return ERR_PTR(-EINVAL);
> +		return NULL;
>  
>  	url += 6;
>  
> @@ -413,7 +413,7 @@ out:
>  	if (ret)
>  		free(mountpath);
>  
> -	return ret ? ERR_PTR(ret) : mountpath;
> +	return ret ? NULL : mountpath;
>  }
>  
>  /*
> @@ -824,12 +824,12 @@ static int blspec_bootentry_provider(struct bootentries *bootentries,
>  	if (*name == '/' || !strncmp(name, "nfs://", 6)) {
>  		char *nfspath = parse_nfs_url(name);
>  
> -		if (!IS_ERR(nfspath))
> +		if (nfspath)
>  			name = nfspath;
>  
>  		ret = stat(name, &s);
>  		if (ret)
> -			return found;
> +			goto out;
>  
>  		if (S_ISDIR(s.st_mode))
>  			ret = blspec_scan_directory(bootentries, name);
> @@ -838,8 +838,8 @@ static int blspec_bootentry_provider(struct bootentries *bootentries,
>  		if (ret > 0)
>  			found += ret;
>  
> -		if (!IS_ERR(nfspath))
> -			free(nfspath);
> +out:
> +		free(nfspath);
>  	}
>  
>  	return found;
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


