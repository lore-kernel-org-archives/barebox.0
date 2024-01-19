Delivery-date: Fri, 19 Jan 2024 16:13:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQqYa-007CZD-0R
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 16:13:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQqYa-0007rv-Oa
	for lore@pengutronix.de; Fri, 19 Jan 2024 16:13:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FN+EzhFtdh5B/c3bQ+/vQJRCcQdqop9mZ9XQ+ci8HE0=; b=WO9uzhIPnftTLQiV37L0jItRu5
	6rXeleBEOSTgCPpve6M3BQ6Q93HCoHEAReDUbfwuxrzh4sBw1HEbMdQGUCIvgIY+NkjW2i5ltLdUl
	Wj5+4fmYjy/YDVc9VLwRrXh7TcPVdCVlDHJoLqAJ68Mh7RLUf/P2xErToMuDi4fePJNBWarqrcTf/
	yQvGyr3kKansPY+T94dSQ/PRLgk93Y/rc9QioDQsVIVl/jakEwajUaoGNFjUC5ObznyxNcmLbWeSe
	H7CQabTNRlUAfdYi/dcsKV24P0rr0HEqkjTI87wLrpF/HSY/ylpbmLAQDl8lzhF18IGtqpFUTKmW6
	auyAXhfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQqXZ-005y79-17;
	Fri, 19 Jan 2024 15:12:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQqXV-005y69-2v
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 15:12:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqXU-0007Zj-Md; Fri, 19 Jan 2024 16:12:12 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqXU-000wrH-9x; Fri, 19 Jan 2024 16:12:12 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqXU-000kGv-7m; Fri, 19 Jan 2024 16:12:12 +0100
Date: Fri, 19 Jan 2024 16:12:12 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240119151212.bh6tycrkl6pygpgu@pengutronix.de>
References: <20240119142413.3206832-1-s.hauer@pengutronix.de>
 <20240119142413.3206832-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240119142413.3206832-4-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_071213_964151_AE716FE4 
X-CRM114-Status: GOOD (  14.04  )
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
Subject: Re: [PATCH 3/7] firmware: i.MX OP-TEE: Add some Kconfig help
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-19, Sascha Hauer wrote:
> By enabling FIRMWARE_IMX8M*_OPTEE barebox will load and start OP-TEE
> via the TF-A. Add some help text which explains where the OP-TEE
> binaries are expected during barebox build.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  firmware/Kconfig | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/firmware/Kconfig b/firmware/Kconfig
> index 8babdb85a8..c1731366c6 100644
> --- a/firmware/Kconfig
> +++ b/firmware/Kconfig
> @@ -44,18 +44,34 @@ config FIRMWARE_IMX93_ATF
>  config FIRMWARE_IMX8MM_OPTEE
>  	bool "install OP-TEE on i.MX8MM boards"
>  	depends on FIRMWARE_IMX8MM_ATF && PBL_OPTEE
> +	help
> +	  This enables OP-TEE loading and starting on i.MX8MM. Place the OP-TEE binary
> +	  in CONFIG_EXTRA_FIRMWARE_DIR/imx8mm-bl32.bin. When this option is enabled then
> +	  the TF-A binary will be used from CONFIG_EXTRA_FIRMWARE_DIR/imx8mm-bl31.bin-optee.
>  
>  config FIRMWARE_IMX8MN_OPTEE
>  	bool "install OP-TEE on i.MX8MN boards"
>  	depends on FIRMWARE_IMX8MN_ATF && PBL_OPTEE
> +	help
> +	  This enables OP-TEE loading and starting on i.MX8MN. Place the OP-TEE binary
> +	  in CONFIG_EXTRA_FIRMWARE_DIR/imx8mn-bl32.bin. When this option is enabled then
> +	  the TF-A binary will be used from CONFIG_EXTRA_FIRMWARE_DIR/imx8mn-bl31.bin-optee.
>  
>  config FIRMWARE_IMX8MP_OPTEE
>  	bool "install OP-TEE on i.MX8MP boards"
>  	depends on FIRMWARE_IMX8MP_ATF && PBL_OPTEE
> +	help
> +	  This enables OP-TEE loading and starting on i.MX8MP. Place the OP-TEE binary
> +	  in CONFIG_EXTRA_FIRMWARE_DIR/imx8mp-bl32.bin. When this option is enabled then
> +	  the TF-A binary will be used from CONFIG_EXTRA_FIRMWARE_DIR/imx8mp-bl31.bin-optee.
>  
>  config FIRMWARE_IMX8MQ_OPTEE
>  	bool "install OP-TEE on i.MX8MQ boards"
>  	depends on FIRMWARE_IMX8MQ_ATF && PBL_OPTEE
> +	help
> +	  This enables OP-TEE loading and starting on i.MX8MQ. Place the OP-TEE binary
> +	  in CONFIG_EXTRA_FIRMWARE_DIR/imx8mq-bl32.bin. When this option is enabled then
> +	  the TF-A binary will be used from CONFIG_EXTRA_FIRMWARE_DIR/imx8mq-bl31.bin-optee.
>  
>  config FIRMWARE_CCBV2_OPTEE
>  	bool
> -- 
> 2.39.2
> 
> 
> 


