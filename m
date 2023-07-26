Delivery-date: Wed, 26 Jul 2023 15:33:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOeeE-00AtqZ-9E
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 15:33:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOeeB-0004FA-NM
	for lore@pengutronix.de; Wed, 26 Jul 2023 15:33:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=95pRLJ0dOiYO7FL7JLwAF1ZtyweW1AsTSk8HSVhu2+k=; b=vesXFjgoHUd4rJuWFZU/V0usSE
	sHRwWky05HGOI0UeLjmJu/qfgtZdAgCVjYcVkD73ErcbULB9vOqkzCUXRr7JJXua7jOWjSeED2ev1
	xumtkamy4SBXHRFiljUARbyDH85HrB5buGNbM8dKRtDLnw+tCkTnrkIHxLxeJvapD/bQiMGBGXy+W
	CxnkoALfDvYFdDmgGs9ooZHo7t2h3Z9nxi5u2lqHO+vrEcnyt/CoLu1ukKBwqghK4NPWwwZHDk+hX
	bFONcZlU4358KnxMQqCZXfC8/6AyMcFp/gI9yrTj3iL7jM0/JHvqhYETclUQeElPdjwaW9cnSdU4C
	IN+obv7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOed9-00AYcM-1J;
	Wed, 26 Jul 2023 13:32:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOed7-00AYbq-13
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 13:32:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOed6-00047e-1u; Wed, 26 Jul 2023 15:32:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOed5-0000qg-Qc; Wed, 26 Jul 2023 15:32:39 +0200
Date: Wed, 26 Jul 2023 15:32:39 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230726133239.GV18491@pengutronix.de>
References: <20230707121354.3248365-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230707121354.3248365-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_063241_358558_B4B38BFA 
X-CRM114-Status: GOOD (  20.73  )
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
Subject: Re: [PATCH master 1/3] usb: gadget: multi: do not double free on
 error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 07, 2023 at 02:13:52PM +0200, Ahmad Fatoum wrote:
> Recent sync with kernel changed usb_composite_probe to free resources on
> error as expected, so calling usb_composite_unregister on failed probe
> is now a double free. Fix that.
> 
> Fixes: 14211ab8b0e1 ("usb: gadget: Update core to Linux-6.3-rc2")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/gadget/legacy/multi.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/gadget/legacy/multi.c b/drivers/usb/gadget/legacy/multi.c
> index 7046a529b1db..ddb3d4158cd7 100644
> --- a/drivers/usb/gadget/legacy/multi.c
> +++ b/drivers/usb/gadget/legacy/multi.c
> @@ -294,10 +294,8 @@ int usb_multi_register(struct f_multi_opts *opts)
>  	gadget_multi_opts = opts;
>  
>  	ret = usb_composite_probe(&multi_driver);
> -	if (ret) {
> -		usb_composite_unregister(&multi_driver);
> +	if (ret)
>  		gadget_multi_opts = NULL;
> -	}
>  
>  	return ret;
>  }
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


