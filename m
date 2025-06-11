Delivery-date: Thu, 12 Jun 2025 00:24:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPTrs-006IqX-0P
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 00:24:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPTrr-0004KH-IR
	for lore@pengutronix.de; Thu, 12 Jun 2025 00:24:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RfYvIxNb3Qzvg95qvutIDNY3mxgH5AV87YtpD4sAEj8=; b=CxttgwXA99NTk+Kdub8qRClwW5
	Qub9N6mhBBMB41NiSnZysXhRSkkPBsV7iiCLwPryNOShdh7vXAY6cXVcocWyRuwnuLGO0tO9eL+lM
	eTjgUxzN4kGy/0QFoqNSdGhpGcYECsvVVoB71FqXOI6YOlWYuZm7y2QVp5XYvH6Qwrh9AGqQjJpqG
	F5CpSQ43PogUX6K83WPEcuveFz4KCLPgP9rVHEj/21Udybw12/cC7MZTQmEhry8iOihFMaA86Al8U
	VbZXAC/NqiBG6qBDKu4DlfVaG/+Lo31HBz1uq6ab6pw2uolJyZ5drXjhUaXKrfsqsNqhqaHY/Tftp
	T2mcMllA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPTri-0000000BT6B-3mXK;
	Wed, 11 Jun 2025 22:24:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPQ85-0000000Ara9-3nFE
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 18:24:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uPQ84-0002Cz-Mp; Wed, 11 Jun 2025 20:24:52 +0200
Message-ID: <4f35c36d-2fb2-4c62-b34d-f3d63497837f@pengutronix.de>
Date: Wed, 11 Jun 2025 20:24:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20250611090753.4164553-1-jre@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250611090753.4164553-1-jre@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_112453_946530_B3D2F962 
X-CRM114-Status: GOOD (  12.67  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! ARM: i.MX8M: Add support for eCSPI boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/11/25 11:07, Jonas Rebmann wrote:
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thank you,
Ahmad

> ---
>  arch/arm/mach-imx/atf.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index 6993e33baa..e6c21107a5 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -104,6 +104,9 @@ void imx8mm_load_bl33(void *bl33)
>  	case BOOTSOURCE_SPI:
>  		imx8mm_qspi_load_image(instance, bl33);
>  		break;
> +	case BOOTSOURCE_SPI_NOR:
> +		imx8m_ecspi_load_image(instance, bl33);
> +		break;
>  	default:
>  		printf("Unsupported bootsource BOOTSOURCE_%d\n", src);
>  		hang();
> @@ -269,6 +272,9 @@ void imx8mn_load_bl33(void *bl33)
>  	case BOOTSOURCE_SPI:
>  		imx8mn_qspi_load_image(instance, bl33);
>  		break;
> +	case BOOTSOURCE_SPI_NOR:
> +		imx8m_ecspi_load_image(instance, bl33);
> +		break;
>  	default:
>  		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
>  		hang();
> @@ -334,6 +340,9 @@ void imx8mq_load_bl33(void *bl33)
>  	case BOOTSOURCE_MMC:
>  		imx8m_esdhc_load_image(instance, bl33);
>  		break;
> +	case BOOTSOURCE_SPI_NOR:
> +		imx8m_ecspi_load_image(instance, bl33);
> +		break;
>  	default:
>  		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
>  		hang();

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



