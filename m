Delivery-date: Mon, 08 Aug 2022 14:47:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2Ae-00GBU3-4A
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 14:47:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2Af-00054f-0t
	for lore@pengutronix.de; Mon, 08 Aug 2022 14:47:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZgEh2gagXm/NHJ5Dm9UJbv1DFp/SV5taoNzROTJjZ+s=; b=uwW7Su3x/FKiL3LGNEO4IaFf3q
	PlNEwPPqskpMC1btUFfF7oNSrtb09rB3XBGzIDev+IMxIGrEPE2DHbfPJYr4nptklPCjUbtihKD9E
	ab9N7z6vQSY7nK8DGDMESRVOcUhy9cwjWe0OHAik2GNIoEfM9/IB+BYThVlJyIY3h3nC0t84/+B04
	k4EqkfCVi55y42bX2On6HGo1KJCuNPdrkNNy4v9Tion15aYEumd3j7sdTD52pDW5Wm1u45CT6Ackq
	qyakLt7I7dVcnTHzG34DXor55hpqM7CsqG0ALE/bjjbioKS822oWybt4LX5OJkBWLEhNdQIFrxGpI
	2PshyUHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL29V-00DofN-GB; Mon, 08 Aug 2022 12:46:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL29Q-00DodR-9M
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 12:46:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL29P-0004vc-1V; Mon, 08 Aug 2022 14:46:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL29O-0001Gh-OY; Mon, 08 Aug 2022 14:46:30 +0200
Date: Mon, 8 Aug 2022 14:46:30 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808124630.GF31528@pengutronix.de>
References: <20220805080754.1622205-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220805080754.1622205-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_054632_372107_EF361DD2 
X-CRM114-Status: GOOD (  19.27  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts: imx-usb-loader: add i.MX8MN support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 05, 2022 at 10:07:54AM +0200, Ahmad Fatoum wrote:
> Add VID/PID for i.MX8MN imx-usb-loader support. Everything else is
> equivalent to the i.MX8MP, which also speaks SDPS instead of the older
> more complicated SDP.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/imx/imx-usb-loader.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 450ee143546d..fcc3ffc5d1b1 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -189,6 +189,14 @@ static const struct mach_id imx_ids[] = {
>  		.max_transfer = 1020,
>  		.mode = MODE_HID,
>  		.hid_endpoint = 1,
> +	}, {
> +		.vid = 0x1fc9,
> +		.pid = 0x013e,
> +		.name = "i.MX8MN",
> +		.header_type = HDR_MX53,
> +		.max_transfer = 1020,
> +		.dev_type = MODE_HID,
> +		.hid_endpoint = 1,
>  	}, {
>  		.vid = 0x1fc9,
>  		.pid = 0x012b,
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


