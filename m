Delivery-date: Thu, 01 Jun 2023 09:07:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cOv-005RqC-KZ
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 09:07:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cOt-00084a-CO
	for lore@pengutronix.de; Thu, 01 Jun 2023 09:07:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HFU5C8yWlRJ1mRnCEVQC9vqMK4jNp1bur8qSMZlBzP8=; b=mTr++n0cvXIQvCs0YAtO1l7cBi
	jG9yKmZuKMhnF1UtIuZVQUZgiyHtXkaxroAfGUo+7vPJNx5wPn9g1n57MrsdOjvsecuNo9HdZO+4Q
	hd34x0+fVwnw+NbwYTGNPTfBhEzQnxgN33qyD57+dvc19ZWgq0SetqhhK06WbhBpy1TVFnPuIFATt
	u/xUOHkKwRikMSBep9Oc3De854uD45EZPuONeKipv+uHCpzTU9+EMpOuv/GQX5bPrjBXu8iJK8e5z
	dq9r0Tl9dV04jaUKU1HG/C8tCKoZVZKsYg5mHUmDKJtrBcoPS6mrTrH8SCUfmKJBjFTL975DAg3jg
	fU6U51sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cNp-002Itv-2X;
	Thu, 01 Jun 2023 07:06:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cNm-002Isb-1J
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 07:06:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4cNl-0007qw-1J; Thu, 01 Jun 2023 09:06:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4cNk-0001Po-QG; Thu, 01 Jun 2023 09:06:00 +0200
Date: Thu, 1 Jun 2023 09:06:00 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230601070600.GE18491@pengutronix.de>
References: <20230531132331.2152268-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531132331.2152268-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_000602_448709_FC9D793C 
X-CRM114-Status: GOOD (  20.38  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] commands: stat: print symlink destination when
 called without -L
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 31, 2023 at 03:23:30PM +0200, Ahmad Fatoum wrote:
> This aligns behavior with usual implementations of stat.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/fs.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 368458cc54f8..311571ba3088 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -130,8 +130,6 @@ void stat_print(const char *filename, const struct stat *st)
>  		case S_IFREG:    type = "regular file"; break;
>  	}
>  
> -	printf("  File: %s\n", filename);
> -
>  	if (st->st_mode & S_IFCHR) {
>  		char *path;
>  
> @@ -147,6 +145,21 @@ void stat_print(const char *filename, const struct stat *st)
>  		}
>  	}
>  
> +	printf("  File: %s", filename);
> +
> +	if (S_ISLNK(st->st_mode)) {
> +		char realname[PATH_MAX] = {};
> +		int ret;
> +
> +		ret = readlink(filename, realname, PATH_MAX - 1);
> +		if (ret)
> +			printf(" -> <readlink error %pe>", ERR_PTR(ret));
> +		else
> +			printf(" -> %s", realname);
> +	}
> +
> +	printf("\n");
> +
>  	printf("  Size: %-20llu", st->st_size);
>  	if (bdev)
>  		printf("Blocks: %llu\tIO Block: %u\t",
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


