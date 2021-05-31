Delivery-date: Mon, 31 May 2021 09:23:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncGY-00030G-OF
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:23:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncGX-0005Fy-Mt
	for lore@pengutronix.de; Mon, 31 May 2021 09:23:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5WCSg3rLkHIJY+/kknxaotq32ZK4+CUS9/geeAX0JB8=; b=0JY3/xQBVJ+LJwCqIXpYT8Rg6A
	7cdVVqTi7uZRZsDJSnh+VPBp+iFEsBlVLDoUOvFet7YOWBaxmtnPJ6q+33+WVGllFtMApreNlgtjx
	ghh931pJYsyxxfpKmbfuFhnadpPLMdio6JiIEWnnRhqOy043CSfnOaS0HYOXDLPKCdupchw06T5oH
	Ko509H6CvL8CErN1fEEqwVwXeamQn1TX1e9tI8UIb++61lI1W0azxSsIzd1vhnJ2Wa+rMnnEM0rKM
	+loTM4SdpyO7T8ZOmceCIYxW6u6yZNd2TmjvxOnXcTnRC5hOBfhIBcnh1IWPsSZ6o1I1zsvFe+hWD
	0L5W9xaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncFV-00BATY-KR; Mon, 31 May 2021 07:22:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncFR-00BASW-B2
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:22:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lncFQ-0005B7-3s; Mon, 31 May 2021 09:22:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lncFP-0003e5-EQ; Mon, 31 May 2021 09:22:03 +0200
Date: Mon, 31 May 2021 09:22:03 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210531072203.GG5211@pengutronix.de>
References: <20210529082953.2034104-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210529082953.2034104-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:21:45 up 102 days, 10:45, 123 users,  load average: 0.50, 0.46,
 0.36
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_002205_398662_4E1E1715 
X-CRM114-Status: GOOD (  23.86  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] driver: have dev_set_name() return 0 on success
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, May 29, 2021 at 10:29:53AM +0200, Ahmad Fatoum wrote:
> Align the return code with Linux, where the function returns 0, not the
> device name length on success. No functional change, as no one checks
> the error code anyway.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/base/driver.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index f60533c59eb1..1fa3f6c6fac0 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -480,9 +480,7 @@ int dev_set_name(struct device_d *dev, const char *fmt, ...)
>  	 */
>  	free(oldname);
>  
> -	WARN_ON(err < 0);
> -
> -	return err;
> +	return WARN_ON(err < 0) ? err : 0;
>  }
>  EXPORT_SYMBOL_GPL(dev_set_name);
>  
> -- 
> 2.31.1
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

