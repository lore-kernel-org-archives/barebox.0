Delivery-date: Mon, 15 Sep 2025 11:02:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uy56h-003GLs-2U
	for lore@lore.pengutronix.de;
	Mon, 15 Sep 2025 11:02:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uy56h-00052Q-1u
	for lore@pengutronix.de; Mon, 15 Sep 2025 11:02:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JmalSrSfAl5jBm28MO2ta17u6k6bhJlGkFC3EnGOqs4=; b=B+89GLz394dugQaW045ZKLdBk8
	w68RtN4tT9e9FkRxoIzX0ZrgY9Pt+sTJTyup/mWDQjg18IwreTQm2GIlNJdj4lew14efL6iM0ekhQ
	pDwOILih36MV3J/be0Xb6wTGtTmu4/v4TQM7YNSTQuIfca5jQ1tkB8xNSO/+KTHj7ZzttBrfEwQen
	WfPCxdoMmyCkZoLidIuuTVmAPtchNwbWcxGpaQ+uLDbTB0duvhx+XQ7gXEt22+Y3J9HhQP5hAYHcW
	igHbA6hMfkpE9HEAS/6xMBK5FvGIr/DdamqqXwRO9DmcPemNCDBtU0T+cP3QFBwYNZdvYNQTc1qZ3
	Hiof2t+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy56H-00000003M6m-1Tn2;
	Mon, 15 Sep 2025 09:02:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy56D-00000003M5e-49VX
	for barebox@lists.infradead.org;
	Mon, 15 Sep 2025 09:02:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uy56C-0004uJ-Go; Mon, 15 Sep 2025 11:02:12 +0200
Message-ID: <bb89fc4d-fdf6-4a23-80bc-53b14ad9b30d@pengutronix.de>
Date: Mon, 15 Sep 2025 11:02:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250914193249.23414-1-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250914193249.23414-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_020214_045458_F1C06021 
X-CRM114-Status: GOOD (  24.04  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] drivers: dma: refactor: rename dma_ops to dma_device_ops.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 9/14/25 9:32 PM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> This patch is an esthetic cleanup, rename the dma_ops to dma_device_ops
> to be sure that the struct in drivers/dma is different from one used in
> arch/riscv/cpu. I accidentally faced the issue telling that the struct is
> defined in the two places but it is not supposed to happen since the
> the driver is never selected from riscv.

If it's only about resolving the conflicting names, I'd rather rename
dma_ops for RISC-V to dma_map_ops instead.

Cheers,
Ahmad

> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  drivers/dma/dma-devices.c      | 18 +++++++++---------
>  drivers/dma/ti/k3-udma-am62l.c |  2 +-
>  drivers/dma/ti/k3-udma.c       |  2 +-
>  include/dma-devices.h          |  4 ++--
>  4 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/dma/dma-devices.c b/drivers/dma/dma-devices.c
> index a8b8086d5f86..43e585175a94 100644
> --- a/drivers/dma/dma-devices.c
> +++ b/drivers/dma/dma-devices.c
> @@ -35,7 +35,7 @@ static int dma_of_xlate_default(struct dma *dma,
>  
>  static int dma_request(struct device *dev, struct dma *dma)
>  {
> -	const struct dma_ops *ops = dma->dmad->ops;
> +	const struct dma_device_ops *ops = dma->dmad->ops;
>  
>  	dev_dbg(dma->dev, "%s(dev=%p, dma=%p)\n", __func__, dev, dma);
>  
> @@ -61,7 +61,7 @@ struct dma *dma_get_by_index(struct device *dev, int index)
>  {
>  	int ret;
>  	struct of_phandle_args args;
> -	const struct dma_ops *ops;
> +	const struct dma_device_ops *ops;
>  	struct dma *dma;
>  	struct dma_device *dmad;
>  
> @@ -120,7 +120,7 @@ struct dma *dma_get_by_name(struct device *dev, const char *name)
>  
>  int dma_release(struct dma *dma)
>  {
> -	const struct dma_ops *ops = dma->dmad->ops;
> +	const struct dma_device_ops *ops = dma->dmad->ops;
>  
>  	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
>  
> @@ -132,7 +132,7 @@ int dma_release(struct dma *dma)
>  
>  int dma_enable(struct dma *dma)
>  {
> -	const struct dma_ops *ops = dma->dmad->ops;
> +	const struct dma_device_ops *ops = dma->dmad->ops;
>  
>  	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
>  
> @@ -144,7 +144,7 @@ int dma_enable(struct dma *dma)
>  
>  int dma_disable(struct dma *dma)
>  {
> -	const struct dma_ops *ops = dma->dmad->ops;
> +	const struct dma_device_ops *ops = dma->dmad->ops;
>  
>  	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
>  
> @@ -156,7 +156,7 @@ int dma_disable(struct dma *dma)
>  
>  int dma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size)
>  {
> -	const struct dma_ops *ops = dma->dmad->ops;
> +	const struct dma_device_ops *ops = dma->dmad->ops;
>  
>  	dev_vdbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
>  
> @@ -168,7 +168,7 @@ int dma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size)
>  
>  int dma_receive(struct dma *dma, dma_addr_t *dst, void *metadata)
>  {
> -	const struct dma_ops *ops = dma->dmad->ops;
> +	const struct dma_device_ops *ops = dma->dmad->ops;
>  
>  	dev_vdbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
>  
> @@ -180,7 +180,7 @@ int dma_receive(struct dma *dma, dma_addr_t *dst, void *metadata)
>  
>  int dma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata)
>  {
> -	const struct dma_ops *ops = dma->dmad->ops;
> +	const struct dma_device_ops *ops = dma->dmad->ops;
>  
>  	dev_vdbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
>  
> @@ -192,7 +192,7 @@ int dma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata)
>  
>  int dma_get_cfg(struct dma *dma, u32 cfg_id, void **cfg_data)
>  {
> -	const struct dma_ops *ops = dma->dmad->ops;
> +	const struct dma_device_ops *ops = dma->dmad->ops;
>  
>  	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
>  
> diff --git a/drivers/dma/ti/k3-udma-am62l.c b/drivers/dma/ti/k3-udma-am62l.c
> index cd4a4cdf032f..ba54ba53e6d4 100644
> --- a/drivers/dma/ti/k3-udma-am62l.c
> +++ b/drivers/dma/ti/k3-udma-am62l.c
> @@ -408,7 +408,7 @@ static int am62l_udma_rfree(struct dma *dma)
>  	return 0;
>  }
>  
> -static const struct dma_ops am62l_udma_ops = {
> +static const struct dma_device_ops am62l_udma_ops = {
>  	.transfer	= udma_transfer,
>  	.of_xlate	= udma_of_xlate,
>  	.request	= am62l_udma_request,
> diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
> index fb0fe62c53a9..1f0594749549 100644
> --- a/drivers/dma/ti/k3-udma.c
> +++ b/drivers/dma/ti/k3-udma.c
> @@ -1190,7 +1190,7 @@ static int udma_rfree(struct dma *dma)
>  	return 0;
>  }
>  
> -static const struct dma_ops udma_ops = {
> +static const struct dma_device_ops udma_ops = {
>  	.transfer	= udma_transfer,
>  	.of_xlate	= udma_of_xlate,
>  	.request	= udma_request,
> diff --git a/include/dma-devices.h b/include/dma-devices.h
> index bbb25770f86b..bb081311dd72 100644
> --- a/include/dma-devices.h
> +++ b/include/dma-devices.h
> @@ -40,7 +40,7 @@ struct of_phandle_args;
>   * The uclass interface is implemented by all DMA devices which use
>   * driver model.
>   */
> -struct dma_ops {
> +struct dma_device_ops {
>  	/**
>  	 * of_xlate - Translate a client's device-tree (OF) DMA specifier.
>  	 *
> @@ -155,7 +155,7 @@ struct dma_ops {
>  
>  struct dma_device {
>  	struct device *dev;
> -	const struct dma_ops *ops;
> +	const struct dma_device_ops *ops;
>  	struct list_head list;
>  };
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



