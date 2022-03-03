Delivery-date: Thu, 03 Mar 2022 11:07:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiMi-00GP3s-UK
	for lore@lore.pengutronix.de; Thu, 03 Mar 2022 11:07:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiMh-0000mp-32
	for lore@pengutronix.de; Thu, 03 Mar 2022 11:07:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I2FFjM7FbYUWfXcHI5a0t9BFFDnRjTmtrdewPOvVvgQ=; b=nnZET1XixPQ+D0A8qWL7Lt9tBE
	nk3rJWAKb8WzNrhmXo1OJqOQGy97VZ8B87EIOvo9fcDkdgzuJOt7sD3OUmQZ99CtvX2XkC7S7lWxL
	EG2qfbHz0ftp/Ftj9yExzr8/o5XhI0HT+Yx0YHYGfBxc1OUEo8GnsoosFN9V24pIJUt5//7oatRON
	IU6PPcRXSQoYUhQaJtqKwDmYVqV3m+TZmsMXl0a7osHn2YTM4IVBBRLbHC8SKGLmKnnYQyPSz0Kra
	VUqVI+JUK47/eMkPImjuzb9K5wJIHrVehqECuc2owGuJu7hsw1nA3bO5eDC52+c1mdef63j4CPKFm
	pxOhKgeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPiLN-0060D1-Uq; Thu, 03 Mar 2022 10:05:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPiLI-0060Bo-H1
 for barebox@lists.infradead.org; Thu, 03 Mar 2022 10:05:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiLH-0000TU-BW; Thu, 03 Mar 2022 11:05:51 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiLG-0002YH-MY; Thu, 03 Mar 2022 11:05:50 +0100
Date: Thu, 3 Mar 2022 11:05:50 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220303100550.GE19585@pengutronix.de>
References: <20220302200801.657501-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220302200801.657501-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:05:41 up 82 days, 18:51, 83 users,  load average: 0.21, 0.31, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_020552_593260_7D8DB70E 
X-CRM114-Status: GOOD (  24.18  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] of: deep-probe: replace BUG() with more verbose panic()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 02, 2022 at 09:08:01PM +0100, Ahmad Fatoum wrote:
> In the case, we do hit this bug, the node name can be helpful, so
> print it out.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/of/platform.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index 0e718469dbcd..9b487cbb0c68 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -422,7 +422,9 @@ int of_device_ensure_probed(struct device_node *np)
>  	if (IS_ERR(dev))
>  		return PTR_ERR(dev);
>  
> -	BUG_ON(!dev);
> +	if (!dev)
> +		panic("deep-probe: device for '%s' couldn't be created\n",
> +			 np->full_name);
>  
>  	/*
>  	 * The deep-probe mechanism relies on the fact that all necessary
> -- 
> 2.34.1
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

