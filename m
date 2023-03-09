Delivery-date: Thu, 09 Mar 2023 11:52:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDtJ-00EinP-7Q
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:52:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDtI-0002jA-Ja
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:52:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ne1G+KdOT0afwE1YC3U1MjIP0JHlyKKsqCPSELi4MPo=; b=AKl7QQoYW1OxRkuc3AuKVp3Wcr
	EGyV4pPgyBxWrkHOCctLcIkfR0qec5cYlMOOdqdhEwltBMsnFEa2JDN31HApif7k5hr3i86r19DZy
	jLXAvfIi92IHaAT1nAoccsiBfzaVxaCSmmrVOdvg9EbcCPJJsMPeYIjTuUZd0CNhFruFkfhmStO3q
	QpaKup3tinDBx5GSskFr+8JOCimfJ5Z/STFYfZ/udqUiPqfReQi+ybIvbMcPyZl7sUWLQZW1FIkBj
	/rC39BXYN9FzdvAFdjeW0FyouvRi9HrgvQAolK6Dr2ho+7DMkVfmT3Bz/+NuVgEdsWAJaCfUdlT8f
	vU6iS7hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDsC-009E9y-Pt; Thu, 09 Mar 2023 10:51:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDs8-009E9L-SU
	for barebox@bombadil.infradead.org; Thu, 09 Mar 2023 10:51:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Ne1G+KdOT0afwE1YC3U1MjIP0JHlyKKsqCPSELi4MPo=; b=NL1waaLmYCSVAl12X+cPZPKV1r
	2KFQHk0Ishfc2reZIvLIMmKv5TGq3R0BIOXOPblwFsbzcuJccSrrDwLzecGZ/PIkfOQMsk6g7/NxN
	EZB7VT7xHsMoc8iB3MsiCkQY/jKQInBs0imFDPpd1PsjchjCvUPZOlX0N10b4p7NJhM/RDRri/xgM
	Ejw5hOrEuX7qo848/0jnRvYHh6E7u+/jZg0nCKIUy+EElZ7G+8Wr/lUMRMOKQEIlZBbs9CVqnE1d5
	viist0/OI7WQk1drStUx1wLmx287Z1a/J9y7AnVgWA+SpLvHjLWh+5Vgi79e9pKbZ9as86/GesSfj
	x4yp5oTA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1paDs3-0005aY-0p
	for barebox@lists.infradead.org;
	Thu, 09 Mar 2023 10:51:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paDs2-0002Rq-LS; Thu, 09 Mar 2023 11:51:38 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paDs2-0004PZ-E5; Thu, 09 Mar 2023 11:51:38 +0100
Date: Thu, 9 Mar 2023 11:51:38 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230309105138.GC5784@pengutronix.de>
References: <20230307102320.2084684-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230307102320.2084684-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_105139_959776_43B91A56 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] gpio: gpioinfo: use dev_name to get device name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 07, 2023 at 11:23:18AM +0100, Ahmad Fatoum wrote:
> Otherwise, we don't correctly number devices with dynamic ID.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/gpio/gpiolib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 2e7a39b47552..736279875856 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -716,7 +716,7 @@ static int do_gpiolib(int argc, char *argv[])
>  			printf("\nGPIOs %u-%u, chip %s:\n",
>  				gi->chip->base,
>  				gi->chip->base + gi->chip->ngpio - 1,
> -				gi->chip->dev->name);
> +				dev_name(gi->chip->dev));
>  			printf("             %-3s %-3s %-9s %-20s %-20s\n", "dir", "val", "requested", "name", "label");
>  		}
>  
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


