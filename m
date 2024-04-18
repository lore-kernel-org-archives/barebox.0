Delivery-date: Thu, 18 Apr 2024 10:41:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxNKu-005www-20
	for lore@lore.pengutronix.de;
	Thu, 18 Apr 2024 10:41:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxNKs-0001VH-Rc
	for lore@pengutronix.de; Thu, 18 Apr 2024 10:41:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D6QSTtIfCIbFr413Iu1WLVQ9PlVEa2m0pkmMP8LehCM=; b=b2/dSmrSWBksNEHf5Qxp0vHkPo
	0VlqgB42buh0dcQWZqTcLSOQ6sWFet61mIh/enLvqwuTWJyL9FgCwP/EaeRjeHHQtIoa1pz4jdzpY
	BkaYMvWECNFFM5WX10fUExq29QH61EvxmouObRlHe2lkwyFVbJiaX7shye/9WePxGFcve+fHGFSh6
	v6XYPx6aXQxUz5K6+Y71AsAsw7Xl3F7AOLbirZ708WZbTfNKSH2J8ppJitDXU8dKwWwJcImrCgPJT
	w6fQCq26tKHZtUMyKzwwNs0266hSeGK1XRxAqS5yicp/U4Qgyyq0KQysIDAxONAmEVLLjr8OT6aKU
	LIVghrrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxNKM-00000001TYh-2PBt;
	Thu, 18 Apr 2024 08:41:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxNKI-00000001TXC-2BxJ
	for barebox@lists.infradead.org;
	Thu, 18 Apr 2024 08:41:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rxNKE-0000md-Vl; Thu, 18 Apr 2024 10:40:58 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rxNKE-00CwUK-JW; Thu, 18 Apr 2024 10:40:58 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rxNKE-001UYK-1g;
	Thu, 18 Apr 2024 10:40:58 +0200
Date: Thu, 18 Apr 2024 10:40:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: barebox@lists.infradead.org
Message-ID: <20240418084058.lyeaxm7hm5gy2pkg@pengutronix.de>
References: <20240418083436.171366-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240418083436.171366-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_014102_580839_9223A913 
X-CRM114-Status: GOOD (  15.86  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: imx: fix header entry offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Benjamin,

On 24-04-18, Benjamin Gaignard wrote:
> Header entry is at a fixed offset and doesn't rely on header lenght.
> Use header lenght create a bug when adding a signed firmware like
> the HDMI firmware for IMX8MQ.

NAK, please see b6e2b263f304 ("scripts: imx-image: header_v2: add
header_len parameter") and following commits. We would need to fix the
issue for i.MX8MQ differently.

Regards,
  Marco

> Fixes: 1c18863354dc ("scripts: imx-image: header_v2: add header_len parameter")
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  scripts/imx/imx-image.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index bc2e7af5d6..4f4d5526ed 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -322,7 +322,7 @@ add_header_v2(const struct config_data *data, void *buf, uint32_t offset,
>  	hdr->header.length	= htobe16(32);
>  	hdr->header.version	= IVT_VERSION;
>  
> -	hdr->entry		= loadaddr + header_len;
> +	hdr->entry		= loadaddr + HEADER_LEN;
>  	if (dcdsize)
>  		hdr->dcd_ptr = loadaddr + offset + offsetof(struct imx_flash_header_v2, dcd_header);
>  	if (create_usb_image) {
> -- 
> 2.40.1
> 
> 
> 


