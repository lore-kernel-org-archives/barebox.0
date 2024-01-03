Delivery-date: Wed, 03 Jan 2024 15:13:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL1zh-0024Kn-25
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 15:13:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL1zg-0003bg-Hl
	for lore@pengutronix.de; Wed, 03 Jan 2024 15:13:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LOpb8QQQmcO7FrzVHEzh6EqYU2dl3FSEJC25GbYxr/Q=; b=pY4BXTMdNwfpA96RmgfM/+tqa6
	CY48WvRi1oFjEMzu049UIPQI3aufuCNsqN3iVOB+ACsc0KlG4b1/U6macfk5hIYjjV7FhO5HZ2l6i
	SPlftbTQ84WB4dztp2jCaV0tRpgXuLrhBAll1B//iIW11+cNwzTx2WqZ5hdYko5D1wIxFs0Ikc+p7
	QuE2ngs2UhJiSDYYhZuN3sIBfCtYUZr8XoQ6xKCq991ppUzeibfcoyYAxr3kO0XgZFLjpRt+SHZXA
	VfSbwhUJ3lPolSC4wbCDjSRQIcUUSwWYYEsogxakm+7GvMMdAKcaipLTrjwCr6Q/nIJ15NFH0qMG+
	Tx8TXHdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1yj-00B4Oy-11;
	Wed, 03 Jan 2024 14:12:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1yg-00B4Of-2Q
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 14:12:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rL1yf-0003Ku-GQ; Wed, 03 Jan 2024 15:12:13 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rL1yf-0008ZW-44; Wed, 03 Jan 2024 15:12:13 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rL1yf-00A4go-1o; Wed, 03 Jan 2024 15:12:13 +0100
Date: Wed, 3 Jan 2024 15:12:13 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240103141213.GK1318922@pengutronix.de>
References: <20240103101354.2629106-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103101354.2629106-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_061214_811605_0E771F18 
X-CRM114-Status: GOOD (  28.23  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] virtio: pci: don't re-enable with 0 as argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 11:13:54AM +0100, Ahmad Fatoum wrote:
> Qemu prints an error during barebox shutdown when virtio-net was used:
> 
>   qemu-system-aarch64: wrong value for queue_enable 0
> 
> This warning was added a few years back in Qemu commit 10d35e5819:
> 
>  | virtio-pci: fix queue_enable write
>  |
>  | Spec said: The driver uses this to selectively prevent the device from
>  | executing requests from this virtqueue. 1 - enabled; 0 - disabled.
>  |
>  | Though write 0 to queue_enable is forbidden by the spec, we should not
>  | assume that the value is 1.
>  |
>  | Fix this by ignore the write value other than 1.
>  |
>  | Signed-off-by: Jason Wang <jasowang@redhat.com>
>  | Message-Id: <20200610054351.15811-1-jasowang@redhat.com>
>  | Reviewed-by: Michael S. Tsirkin <mst@redhat.com>
>  | Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
>  | Reviewed-by: Stefano Garzarella <sgarzare@redhat.com>
>  | Reviewed-by: Stefan Hajnoczi <stefanha@redhat.com>
>  | Reviewed-by: Michael S. Tsirkin <mst@redhat.com>
>  | Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> 
> Even older Qemu versions actually marked the virtqueue enabled when
> queue_enable was written with any value, we should really stop writing
> anything, but 1 into queue_enable in the removal path.
> 
> We already reset before deleting the virtqueues, which disables them.
> This aligns us with what Linux is doing, except that Linux has some
> MSIX cleanup logic in virtio_pci_del_vq. We don't have that, but we
> will keep the function anyway to simplify future synchronization.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/virtio/virtio_pci_modern.c | 8 --------
>  1 file changed, 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/virtio/virtio_pci_modern.c b/drivers/virtio/virtio_pci_modern.c
> index 26eefba85bea..2dd369b02e9a 100644
> --- a/drivers/virtio/virtio_pci_modern.c
> +++ b/drivers/virtio/virtio_pci_modern.c
> @@ -223,14 +223,6 @@ static struct virtqueue *virtio_pci_setup_vq(struct virtio_device *vdev,
>  
>  static void virtio_pci_del_vq(struct virtqueue *vq)
>  {
> -	struct virtio_pci_device *vp_dev = to_vp_device(vq->vdev);
> -	unsigned int index = vq->index;
> -
> -	iowrite16(index, &vp_dev->common->queue_select);
> -
> -	/* Select and deactivate the queue */
> -	iowrite16(0, &vp_dev->common->queue_enable);
> -
>  	vring_del_virtqueue(vq);
>  }
>  
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


