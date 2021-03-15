Delivery-date: Mon, 15 Mar 2021 10:36:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLjeY-0000h4-7a
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 10:36:46 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLjeX-00034o-52
	for lore@pengutronix.de; Mon, 15 Mar 2021 10:36:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OTdRWpj7L7UuujImDsL8WYNVXDGs+OoKnOKWASk+vFQ=; b=WZ8Acz9Bdrdf9IdXfEm8HQzQy
	53wMk2QPngpPCKYKwsm00Fwk2nlP2jCPChdFz7Q3vcC7YdCCHd1My7WdmOeVUUUUz75T0ZSXOCSgo
	7ZyJ3dUZsxtIVJPiL5JroB69Mzj4lYeR9qtZ7d33cIhVCpW06B7T0HeHpbGJBOPxyHcBz48iKbPJ4
	/0XGvunoMmZQFEeEaOVzJJPHT8RUosf2W2NaRAPYlb438Cl9XTfIEOJd4SC0ZX44GsBcFLr5xuQDN
	9uOpIBJUpCyyBvwGOvPlBeOssYHKIzLIZg7/1j1a/FBmF2HVHIkyWcO+545zMRNGd5AHFUfaILIcg
	6B+ej6viA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLjdb-00FOvK-Hg; Mon, 15 Mar 2021 09:35:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLjdS-00FOuP-RF
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 09:35:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLjdS-0002q1-9T; Mon, 15 Mar 2021 10:35:38 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLjdR-0003yr-Mf; Mon, 15 Mar 2021 10:35:37 +0100
Date: Mon, 15 Mar 2021 10:35:37 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20210315093537.GR23724@pengutronix.de>
References: <20210312152145.2761-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312152145.2761-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:32:24 up 25 days, 12:56, 82 users,  load average: 0.11, 0.36, 0.41
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_093539_109671_2AE40894 
X-CRM114-Status: GOOD (  25.42  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH] reset: Remove WARN_ON when CONFIG_RESET_CONTROLLER=n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 12, 2021 at 04:21:45PM +0100, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
> I am using dwc2 but my platform doesn't has CONFIG_RESET_CONTROLLER enabled,
> when booting barebox I got this kind of message:
> WARNING: at barebox/include/linux/reset.h:54/device_reset_us()!
> 
> Not sure if removing all the WARN_ON is a good idea... asking for insight.

I looked at the kernel and it has no warnings in the stubs. For that
reason I applied this patch.

Having no warnings has its downside as well of course. If you really
need resets for your device to function then you won't notice that reset
support is missing.

Sascha


> ---
>  include/linux/reset.h | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/include/linux/reset.h b/include/linux/reset.h
> index 4a92a177b..a166fe1cf 100644
> --- a/include/linux/reset.h
> +++ b/include/linux/reset.h
> @@ -21,43 +21,36 @@ int __must_check device_reset_us(struct device_d *dev, int us);
>  
>  static inline int reset_control_reset(struct reset_control *rstc)
>  {
> -	WARN_ON(1);
>  	return 0;
>  }
>  
>  static inline int reset_control_assert(struct reset_control *rstc)
>  {
> -	WARN_ON(1);
>  	return 0;
>  }
>  
>  static inline int reset_control_deassert(struct reset_control *rstc)
>  {
> -	WARN_ON(1);
>  	return 0;
>  }
>  
>  static inline struct reset_control *
>  reset_control_get(struct device_d *dev, const char *id)
>  {
> -	WARN_ON(1);
>  	return NULL;
>  }
>  
>  static inline void reset_control_put(struct reset_control *rstc)
>  {
> -	WARN_ON(1);
>  }
>  
>  static inline int device_reset_us(struct device_d *dev, int us)
>  {
> -	WARN_ON(1);
>  	return 0;
>  }
>  
>  static inline int device_reset(struct device_d *dev)
>  {
> -	WARN_ON(1);
>  	return 0;
>  }
>  
> -- 
> 2.17.1
> 
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

