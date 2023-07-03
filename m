Delivery-date: Mon, 03 Jul 2023 08:34:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGD8v-00DB4l-CV
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 08:34:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGD8s-00008f-SX
	for lore@pengutronix.de; Mon, 03 Jul 2023 08:34:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rZjxcUlWFPehNSwqoDPiVaZOyMixp/azDCslRReiQFY=; b=PxrKtrvmomaqlZol0ScGl2SdPB
	1UozpEJycAm9koc9El5y/k0cE8xtIJdurIXuX1vkbDkdf44oeQlv+6ZmATCee3YRx5cRbGW6Px0zG
	YRn4KeqFglQmWoH74LJWiI3iMeJwRzBNOrhISQW0Bt8n2cGBz/+BDSWcLJHV9CD/CN0msSIO0VsLw
	fgMI570UvxNkEiIapPezZTTjWgnm6hmIYZg8PuODhGmwfgAlwiwa75faGupmebWwz6SDR5erh2Rre
	nZZyvalyBa5+O3Pxpa6Ho7li3tu5DE0q4xkpmYUADemPyfCMitkpnloBuS1Tpmc2gdvwMMkUOoezn
	NyCaZx2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGD7h-009TK6-1D;
	Mon, 03 Jul 2023 06:33:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGD7c-009TJQ-33
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 06:33:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qGD7a-0008RJ-VU; Mon, 03 Jul 2023 08:33:14 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qGD7a-0002Dm-NI; Mon, 03 Jul 2023 08:33:14 +0200
Date: Mon, 3 Jul 2023 08:33:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, uol@pengutronix.de
Message-ID: <20230703063314.vfp4lgig3wafxqjz@pengutronix.de>
References: <20230626153335.3592017-1-a.fatoum@pengutronix.de>
 <20230626153335.3592017-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230626153335.3592017-6-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230702_233316_988434_2D2A9930 
X-CRM114-Status: GOOD (  17.12  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master v1 5/6] ARM64: unset CONFIG_MISSING_FIRMWARE_ERROR
 for Rockchip/i.MX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-26, Ahmad Fatoum wrote:
> barebox ARMv8 images for Rockchip and i.MX depend on external firmware
> for RAM setup (e.g. DDR PHY firmware) and on a BL31 binary to service
> secure monitor calls of the operating system (usually TF-A).
> 
> Images without this firmware are not functional and the build warns
> about it, yet for development, it's more convenient to have the build
> not fail. This is especially useful for multi_v8_defconfig, which also
> builds the drivers Qemu Virt64 image and which requires no extra
> firmware.

IMHO most user just use the defconfig as base and so they never notice
the new CONFIG_MISSING_FIRMWARE_ERROR switch. Since you have added a
great mechanism to inform the user that a particular barebox-bin is
missing firmware-files I would tend to set this config to 'n'.

Regards,
  Marco

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/configs/imx_v8_defconfig      | 1 +
>  arch/arm/configs/multi_v8_defconfig    | 1 +
>  arch/arm/configs/rockchip_v8_defconfig | 1 +
>  3 files changed, 3 insertions(+)
> 
> diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
> index 93b85ff5ea40..99d871bfb968 100644
> --- a/arch/arm/configs/imx_v8_defconfig
> +++ b/arch/arm/configs/imx_v8_defconfig
> @@ -147,3 +147,4 @@ CONFIG_FS_FAT_WRITE=y
>  CONFIG_FS_FAT_LFN=y
>  CONFIG_FS_RATP=y
>  CONFIG_ZLIB=y
> +# CONFIG_MISSING_FIRMWARE_ERROR is not set
> diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
> index e0ff21641a01..76b80975887d 100644
> --- a/arch/arm/configs/multi_v8_defconfig
> +++ b/arch/arm/configs/multi_v8_defconfig
> @@ -241,3 +241,4 @@ CONFIG_FS_PSTORE=y
>  CONFIG_FS_PSTORE_CONSOLE=y
>  CONFIG_FS_RATP=y
>  CONFIG_LZO_DECOMPRESS=y
> +# CONFIG_MISSING_FIRMWARE_ERROR is not set
> diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
> index cc3c3c6d489b..7d1d41965ece 100644
> --- a/arch/arm/configs/rockchip_v8_defconfig
> +++ b/arch/arm/configs/rockchip_v8_defconfig
> @@ -149,3 +149,4 @@ CONFIG_FS_FAT_LFN=y
>  CONFIG_FS_BPKFS=y
>  CONFIG_FS_UIMAGEFS=y
>  CONFIG_LZO_DECOMPRESS=y
> +# CONFIG_MISSING_FIRMWARE_ERROR is not set
> -- 
> 2.39.2
> 
> 
> 


