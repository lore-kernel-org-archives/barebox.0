Delivery-date: Mon, 28 Jun 2021 14:54:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxqm4-0007oG-Be
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 14:54:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxqm3-0005Z3-Fr
	for lore@pengutronix.de; Mon, 28 Jun 2021 14:54:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VNkNnKqQmfJ64OJ2OhIH4ojMjfORUMexUuTvd7xuttA=; b=MSf5iBX/xsITYnL1HNkRRv0OM2
	pLr6LxBHfrzL78hm05f25g2/hxI7AN75yHpkcx2wJMn6exw5FbVG1q45GZYGjRdx9jePFQdkIug5o
	3BiJDYxtlfyJOAnV7FzL4jXOaogW8siQjtS2ly/isWk048KW4hqMyPr0O2O6+VM+TNu7EmOCsVfi3
	gvzHJi5fXcQIQ2wgHptTdHtWQE5UE5gQHR+fx1q7B2udObIyKF//VgEkb4iPhEisli6lqVa2rekRy
	/uEgnplZz5sNieDjPj+GdLoaupF3QGBwncLcUOKqmSdLbu/QGnmjBODD60nQwrWj7+YqyX0fVYddN
	mu7q1l4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxqku-0083uv-Pf; Mon, 28 Jun 2021 12:52:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxqko-0083tm-UV
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 12:52:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxqkn-0005T7-Mr; Mon, 28 Jun 2021 14:52:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxqkn-0001AS-Dq; Mon, 28 Jun 2021 14:52:45 +0200
Date: Mon, 28 Jun 2021 14:52:45 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210628125245.GN9782@pengutronix.de>
References: <20210628054420.31051-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210628054420.31051-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:52:34 up 130 days, 16:16, 121 users,  load average: 0.22, 0.12,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_055247_027355_C51459C3 
X-CRM114-Status: GOOD (  22.89  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: fix dev_dbg(unregistered_device, ...)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 28, 2021 at 07:44:20AM +0200, Ahmad Fatoum wrote:
> The format string already prints the future name of the NVMEM device, so
> use the parent name as qualifier for the dev_dbg call.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/nvmem/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index ae9c965c25e2..4e558e165063 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -224,7 +224,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
>  	dev_set_name(&nvmem->dev, config->name);
>  	nvmem->dev.id = DEVICE_ID_DYNAMIC;
>  
> -	dev_dbg(&nvmem->dev, "Registering nvmem device %s\n", config->name);
> +	dev_dbg(nvmem->dev.parent, "Registering nvmem device %s\n", config->name);
>  
>  	rval = register_device(&nvmem->dev);
>  	if (rval) {
> -- 
> 2.30.2
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

