Delivery-date: Wed, 24 Feb 2021 09:50:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpsX-0004fP-Au
	for lore@lore.pengutronix.de; Wed, 24 Feb 2021 09:50:41 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpsW-0007nA-7v
	for lore@pengutronix.de; Wed, 24 Feb 2021 09:50:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JKUE38R7xWXIPAKNX8nhgVOVKuqfxTIxbV23XI0h8Q4=; b=SXKCft8/x/MsmEuCIR6KwOLZy
	Yyo2xScksLqq0ujZ4cqp5296Vp5+ysxPY3IifLcKj4pI0EhN22cAgZLiMuBRNrr/2uBK1BB5g231x
	tKomjZ6vLmQa8aZ5D6B+m8Y59hfM74jHOIIHiOz34EsshLEZUs7l4FefOUSCxhOGvi5PvuTNpC9GA
	RAYh9WOZQnl5kxcEMBwPpGhF8GiBcIZw7ZmfmKLWw29kJ4G4T3JyotjClKw7gu+e7grbBlUoSBtH6
	+bFhjZPeEzIU849WNaHcqu37+6HFeVjFoFiba7hDL4ICjI/usaJu0heajd9uz6Crcqszbm/IZe/e2
	OLsra6wDw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEprV-0006RZ-V4; Wed, 24 Feb 2021 08:49:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEprR-0006QC-08
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 08:49:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEprQ-0007Tv-3I; Wed, 24 Feb 2021 09:49:32 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEprP-000695-QY; Wed, 24 Feb 2021 09:49:31 +0100
Date: Wed, 24 Feb 2021 09:49:31 +0100
To: jameszxj <jameszxj@gmail.com>
Message-ID: <20210224084931.GH5549@pengutronix.de>
References: <tencent_E28F8E77C0112E2550D5C300E9436E3CC309@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_E28F8E77C0112E2550D5C300E9436E3CC309@qq.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:49:24 up 6 days, 12:13, 61 users, load average: 0.01, 0.18, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_034933_114597_F8823166 
X-CRM114-Status: GOOD (  18.10  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: barebox <barebox@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] extend the test in bbu_std_file_handler() to also check
 for -ENOTSUP.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 23, 2021 at 05:31:22PM +0800, jameszxj wrote:
> extend the test in bbu_std_file_handler() to also check for  -ENOTSUP.
> 
> Signed-off-by: zhengxiaojun <jameszxj at gmail.com>
> ---
>  common/bbu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/bbu.c b/common/bbu.c
> index 1279d56..ee9f78e 100644
> --- a/common/bbu.c
> +++ b/common/bbu.c
> @@ -313,7 +313,7 @@ static int bbu_std_file_handler(struct bbu_handler *handler,
>  		return fd;
>  
>  	ret = protect(fd, data->len, 0, 0);
> -	if (ret && ret != -ENOSYS) {
> +	if (ret && (ret != -ENOSYS) && (ret != -ENOTSUPP)) {
>  		printf("unprotecting %s failed with %s\n", data->devicefile,
>  				strerror(-ret));
>  		goto err_close;
> -- 
> 2.7.4
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

