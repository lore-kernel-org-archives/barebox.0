Delivery-date: Tue, 13 Apr 2021 09:23:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDOi-000721-Be
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 09:23:44 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDOh-0000hg-In
	for lore@pengutronix.de; Tue, 13 Apr 2021 09:23:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dBdYcDtDkGCuWLUP2Mnu7KZFiqZH8ra7XkX507ouGzs=; b=FOnbmjH9qeAA82GMFt18GVrQ5
	beGw6ohIczVza4a4OuSlUHJmMlJekWMylnRVk48611n9T/rPE9luWevPN5Bc9EzNgZ2IsYR6DJpY7
	f9/Y4yYJLcneomh4dHq6Ml+If5BTwEjs453d4/thQWyf3hkYs+CwJy7QPNsABV5gO/tWGRjYLWxbw
	K3PlBxs2GZeAQExNaWN0lBXo8BvxXc4NItO1uA90QBU3M7p8bBDfQSZQmc0Vy0lt1nkMk0YXohv4/
	YjJdKn/KX1gtS/pcKdJNrT8pG+Jp2gwPfLAnHz3voCIwlujCYxWgCRW7ExpeK1E2SSRZYHjBT6ccn
	b5MamSI6A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWDM9-008UWa-Va; Tue, 13 Apr 2021 07:21:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDKd-008UUK-7L
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 07:19:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=oVb49hOXbgQhGQEWR/49XHi/rsojHkb4Rwctqxg6BTk=; b=zenDwNwRQ3yhCCVijpwaovy+iI
 P1hf4DhxtP10WI4mp1CTh+ALjR45F1E4wY91EnOsel2ykNmuIXPQGXzhFQ8Mkypa2/cjFavZh7/aU
 Wi6UoASvfsXO9b9Rys7t036zcEfmc6c0R+9eUW3QA7MA3x2eRi60yYbYknG+w17s0fNJb5f1hmECn
 Fvnw6RkQ2w/c0OkePZ2zKiElHISbTtVY3xa2rnznoZa0v21oIwYa/SuQJrK58XLI0ms5KJNdNjAVV
 sq27oS2W2bC5d6psvN6WDxfTMP1damEOldf4x9fH0OrF+DbTEAaCl4+WViNCSYyNkKJua8vkQdy4P
 vvw7icTg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDKa-006nRA-Je
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 07:19:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDKZ-0000Bm-CC; Tue, 13 Apr 2021 09:19:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDKZ-0003Oi-2H; Tue, 13 Apr 2021 09:19:27 +0200
Date: Tue, 13 Apr 2021 09:19:27 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210413071927.GE19819@pengutronix.de>
References: <20210410104911.2079451-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210410104911.2079451-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:19:17 up 54 days, 10:43, 91 users,  load average: 0.19, 0.17, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_001928_664064_ED9E8EB5 
X-CRM114-Status: GOOD (  23.59  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] virtio: pci: fix 64-bit incompatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 10, 2021 at 12:49:10PM +0200, Ahmad Fatoum wrote:
> device_len is size_t, but written by pci_read_config_dword as a u32.
> Change the type to fix this.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/virtio/virtio_pci_common.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/virtio/virtio_pci_common.h b/drivers/virtio/virtio_pci_common.h
> index 32f0f451ab49..8f97d1218838 100644
> --- a/drivers/virtio/virtio_pci_common.h
> +++ b/drivers/virtio/virtio_pci_common.h
> @@ -47,7 +47,7 @@ struct virtio_pci_device {
>  	void __iomem *notify_base;
>  
>  	/* So we can sanity-check accesses. */
> -	size_t device_len;
> +	u32 device_len;
>  
>  	/* Multiply queue_notify_off by this value. (non-legacy mode). */
>  	u32 notify_offset_multiplier;
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

