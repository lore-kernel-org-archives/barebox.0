Delivery-date: Wed, 10 Jan 2024 07:49:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNSP3-00BIvE-1u
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 07:49:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNSP2-0007QP-VQ
	for lore@pengutronix.de; Wed, 10 Jan 2024 07:49:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FV/u5oOrJfcv3+SROzVMjFG4t7JLpOBAACftZl0DiDM=; b=YDVgzUGVXWwLqmdPbFk+RE7L6h
	H86hBMM1XE53e90e4OGkpq5A2WN0/z/Ry3yTP/xk4Km3/ZqmOlPEMHXhhVRl7LG/qZkb1GNF1cIND
	fePuRE8G6jgAmjsFaXQzcxeJzivHPS2sAdk+hAHAWtt9oNit828M3HtjRKr/LZyvNcHxw7u9Fg53q
	Ep0QI6NmKAyxGBJdeiT2S+4tdmpSbCftKMHOHrKaiwM/yI/9DtLPNMDtFUr+g2YlA7tAYEl8wOuFf
	4/I3D06QpxlOHFvh6JZOOThGQqkHideOalrd5vFEh0TTCY+uom0HicUTTmmkeEGHJVL4iSiUPn9sE
	zO53uqig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNSO2-00AWmn-2c;
	Wed, 10 Jan 2024 06:48:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNSO0-00AWlt-1Q
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 06:48:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSNz-0007Eu-2E; Wed, 10 Jan 2024 07:48:23 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSNy-001e0d-M4; Wed, 10 Jan 2024 07:48:22 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSNy-00BAOK-K0; Wed, 10 Jan 2024 07:48:22 +0100
Date: Wed, 10 Jan 2024 07:48:22 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240110064822.GN1318922@pengutronix.de>
References: <20240109120201.211691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240109120201.211691-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_224824_477581_67C40168 
X-CRM114-Status: GOOD (  24.42  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] usb: xhci: call dma_unmap_single in error paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 09, 2024 at 01:02:01PM +0100, Ahmad Fatoum wrote:
> xHCI ring handling maps buffers prior to DMA and unmaps them on success,
> but leaves them mapped in the error case. This leads to buffers being
> remapped again triggering a CONFIG_DMA_API_DEBUG warning along with
> a stack trace:
> 
>   WARNING: dwc3 2f00000.usb@2f00000.of: from-device mapping 0xbdfa0000+0x800: duplicate mapping
> 
> Fix this by unmapping the code in the error case too. This is ok to do,
> because in the first instace, DMA hasn't been enabled yet and in the
> others abort_td() called beforehand terminates it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/host/xhci-ring.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
> index 995772f92722..547047305dd0 100644
> --- a/drivers/usb/host/xhci-ring.c
> +++ b/drivers/usb/host/xhci-ring.c
> @@ -639,8 +639,10 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
>  	 */
>  	ret = prepare_ring(ctrl, ring,
>  			   le32_to_cpu(ep_ctx->ep_info) & EP_STATE_MASK);
> -	if (ret < 0)
> +	if (ret < 0) {
> +		dma_unmap_single(ctrl->host.hw_dev, map, length, direction);
>  		return ret;
> +	}
>  
>  	/*
>  	 * Don't give the first TRB to the hardware (by toggling the cycle bit)
> @@ -725,6 +727,7 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
>  		abort_td(udev, ep_index);
>  		udev->status = USB_ST_NAK_REC;  /* closest thing to a timeout */
>  		udev->act_len = 0;
> +		dma_unmap_single(ctrl->host.hw_dev, map, length, direction);
>  		return -ETIMEDOUT;
>  	}
>  	field = le32_to_cpu(event->trans_event.flags);
> @@ -967,5 +970,6 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
>  	abort_td(udev, ep_index);
>  	udev->status = USB_ST_NAK_REC;
>  	udev->act_len = 0;
> +	dma_unmap_single(ctrl->host.hw_dev, map, length, direction);
>  	return -ETIMEDOUT;
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


