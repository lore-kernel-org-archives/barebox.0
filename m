Delivery-date: Wed, 24 Feb 2021 09:56:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpyY-0004hm-B8
	for lore@lore.pengutronix.de; Wed, 24 Feb 2021 09:56:54 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEpyX-0000Oq-H3
	for lore@pengutronix.de; Wed, 24 Feb 2021 09:56:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P4NWgGjpZ4s1H0+UZmVnnq/hD8XO+J8i8O0QY7fEfa8=; b=zglEsNstlCFzuF1fOFFEst//y
	djY5gaurikepOO2dzSaL6yDwjv2SC3BznKK49tslQ3pgb+3UrydBcnoSoUIx/e9a9bktcAweBisth
	LVma2S2wFBbqDXVI+VGZZF3GODskO/mGDC0xUMkOAtDo38ewhUwYOzgrWZ/lClHqoCCZ/iZSfk/m3
	w/QP0JV78vkFh3EwmmUjrozksqM6fpjkp7lXSbyUkhIlrFldcYOLEhQIh01nWEXUfEHu9IgjSbSuC
	DDJAfjDNHS7CVhcsuzFf1NGE8bLFrkkI8/7BXsiQFSrO9JGxwh3vDwTTnXTaCy9ePVTknp7SCmLAv
	LcqXBO/2g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEpxX-0007h2-P1; Wed, 24 Feb 2021 08:55:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEpxU-0007gR-Dt
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 08:55:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpxT-00008f-E3; Wed, 24 Feb 2021 09:55:47 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lEpxS-0006lJ-GY; Wed, 24 Feb 2021 09:55:46 +0100
Date: Wed, 24 Feb 2021 09:55:46 +0100
To: Thorsten Scherer <tsc@scherer.tk>
Message-ID: <20210224085546.GL5549@pengutronix.de>
References: <20210223202401.35896-1-tsc@scherer.tk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210223202401.35896-1-tsc@scherer.tk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:55:36 up 6 days, 12:19, 61 users, load average: 0.15, 0.17, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_035548_555844_0FA3CAAF 
X-CRM114-Status: GOOD (  15.53  )
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
Cc: barebox@lists.infradead.org
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
Subject: Re: [PATCH] Documentation: devicetree: include firmware in toctree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 23, 2021 at 09:24:01PM +0100, Thorsten Scherer wrote:
> Fix Sphinx consistency warning.
> 
> Fixes: fcdcb8177 ("documentation: devicetree: migrate remaining binding to reST")
> Signed-off-by: Thorsten Scherer <tsc@scherer.tk>
> ---
>  Documentation/devicetree/index.rst | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
> index 8c47d033f..ce62ebe10 100644
> --- a/Documentation/devicetree/index.rst
> +++ b/Documentation/devicetree/index.rst
> @@ -108,6 +108,7 @@ Contents:
>     :maxdepth: 1
>  
>     bindings/barebox/*
> +   bindings/firmware/*
>     bindings/leds/*
>     bindings/misc/*
>     bindings/mtd/*
> -- 
> 2.30.0
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

