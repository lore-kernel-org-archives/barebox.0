Delivery-date: Mon, 18 Mar 2024 13:40:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmCHa-00CKbr-1u
	for lore@lore.pengutronix.de;
	Mon, 18 Mar 2024 13:40:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmCHZ-0008EG-Ux
	for lore@pengutronix.de; Mon, 18 Mar 2024 13:40:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BVSDsWUyr6x9LJxNhxoZkKD8BHUVhUmfOtPMhXWePMA=; b=mhi8Te+56rkJ1wlB8Eqgg9bjxe
	fxy7bVHG50polU2oieMydCwn3yC2ubVKRZT+qSu0LVOvAWgRnG9/E60LjHjTXVSXkbtol8KV8dV+4
	72r3COUe+X81G63kAw6CSQjomuYaOkpCwWfipxiyrqooh4uDPP8WfwjQE0OUN8EdGkqQ5ksp/IEwO
	SLvrqGsTq+cXdGgtn6A8zGwl9+m6V6Mn7+bgBa2K2nl9V5bkl03g61evOsfM55vKYEUlm8of3trYA
	SR7Bh6nMrOgtqIevok5Ujuba55A7vwtlm3UTQdMWTAHh7dlAk1KyEPxEGpre1PyPdZoSHS7r1G8eR
	3RsdY8vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmCH2-00000008XiI-1HZw;
	Mon, 18 Mar 2024 12:39:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmCGz-00000008Xhd-1Gra
	for barebox@lists.infradead.org;
	Mon, 18 Mar 2024 12:39:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rmCGw-0007lS-6z; Mon, 18 Mar 2024 13:39:22 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rmCGv-00752N-Qi; Mon, 18 Mar 2024 13:39:21 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rmCGv-005V73-2O;
	Mon, 18 Mar 2024 13:39:21 +0100
Date: Mon, 18 Mar 2024 13:39:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zfg1-Z9X7x8jtkbN@pengutronix.de>
References: <20240318094533.1553713-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240318094533.1553713-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_053925_368993_2FAAFB33 
X-CRM114-Status: GOOD (  27.00  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 1/2] ARM: i.MX8MP: skov: add fallback for unsupported
 HW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 18, 2024 at 10:45:32AM +0100, Oleksij Rempel wrote:
> Add fallback support for currently not supported HW. Instead of
> completely fail, it is better to use some kind of basic devicetree with
> reduced functionality.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/skov-imx8mp/board.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
> index 5424c3b9ab..a45fe8517f 100644
> --- a/arch/arm/boards/skov-imx8mp/board.c
> +++ b/arch/arm/boards/skov-imx8mp/board.c
> @@ -83,6 +83,12 @@ static const struct board_description imx8mp_variants[] = {
>  		.dts_compatible_hdmi = "skov,imx8mp-skov-revb-hdmi",
>  		.flags = SKOV_IMX8MP_HAS_HDMI,
>  	},
> +	/* Keep this entry always on the last place. It will be used
> +	 * as fallback variant if not supported variant is detected.
> +	 */
> +	{
> +		.dts_compatible = "skov,imx8mp-skov-basic",
> +	},

This increases ARRAY_SIZE(imx8mp_variants) to 3...
>  };
>  
>  static int skov_imx8mp_fixup(struct device_node *root, void *data)
> @@ -168,13 +174,14 @@ static int skov_imx8mp_init_variant(struct skov_imx8mp_priv *priv)
>  	if (ret)
>  		return ret;
>  
> -	priv->variant_id = v;
>  
>  	if (v >= ARRAY_SIZE(imx8mp_variants)) {

... so this doesn't trigger anymore for the still invalid variant 2.

Better make the basic variant a separate initializer outside of the
imx8mp_variants array. That also gets you rid of the "keep last" comment
above.

variant_id is written to the /chosen/skov,imx8mp-board-version property.
This looks wrong for the "basic" variant as this is not a fixed number
but instead depends on the highest number the bootloader knows (which
might be different from the last variant_id userspace knows).

> -		dev_err(dev, "Invalid variant %u\n", v);
> -		return -EINVAL;
> +		dev_warn(dev, "Unsuported variant %u. Fall back to basic variant\n", v);
> +		v = ARRAY_SIZE(imx8mp_variants) - 1;
>  	}

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


