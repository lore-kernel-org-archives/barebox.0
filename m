Delivery-date: Wed, 11 Jun 2025 10:36:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPGwm-0065lr-2h
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 10:36:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPGwm-0003aJ-96
	for lore@pengutronix.de; Wed, 11 Jun 2025 10:36:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QjZkvbUyO2c0CLo4usb9exKY/eIjef6IOqHYeeShQ58=; b=ByIMCZz2T1n3w1KVY6SYeqy36u
	noIpmPSh2aCWN8RRmB8yL9jQVo2cnjibbEF5C6HdCxAwHVJCLyd53mkCUNWOHsvhNT3h4t+Mso67+
	qmiCyxDpMedfsl2hH9PEoXdl297VDcfci+7iqEleR0/XspDIAQxCGM3jMj9ovFoaQNb29IzXwl2cp
	jU+NU781lL/KMZL90pKbgfkb3v0D7ElljRTY7VhxjucHXHTVXyoFLijCPhf1Ocb1nWfsPykHUe+V/
	71lSXFzVTPcW/4ptAfIEqPLJeuGbvVLJGd4gLNmqgWQJaoZhS7Cx1YhcWQH8h6yuFgQj0WnxNEcxb
	jI48yu2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPGwB-00000009HkD-40PC;
	Wed, 11 Jun 2025 08:35:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPGa6-00000009ESq-2ljE
	for barebox@bombadil.infradead.org;
	Wed, 11 Jun 2025 08:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=QjZkvbUyO2c0CLo4usb9exKY/eIjef6IOqHYeeShQ58=; b=mLHXFc4GzxoApp4ZGtJYg9quhu
	2GDb076d1gTCdFIE+9RfKF3FYqgNytMWlVVSNDCBo/wl/lMj5L0qS5zoqmmdEeLTz64Ul+aEvNjoB
	/DC3XdCMc1XPgvS8tI9gtaQ9DhYu9iv+gUxiStVD7E9RUwtx6yUidryWP1rwDxK/JmcVKH7k8RhiE
	nFyrhTYMjoX2j/ijHSnSpDFyqqtryC9q3HOvE2lqzK7C9CU42ipzWBo790KCmezgc7qH/m6/w8wud
	EvMnLefIGQHEldLrZP3D2ItsXlSh/Le7QR7hqZlyofFsOR5id9KMywNiNppD1K01/4Rjaz7Y64THf
	y06N+H7g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPGa4-00000002BdR-20yC
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 08:13:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uPGa2-0004Zj-86; Wed, 11 Jun 2025 10:13:06 +0200
Message-ID: <031c088c-4c05-4c94-a663-11de9f5617df@pengutronix.de>
Date: Wed, 11 Jun 2025 10:13:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20250610-imx8mp_ecspi-v1-0-d14d1e9d65f3@pengutronix.de>
 <20250610-imx8mp_ecspi-v1-1-d14d1e9d65f3@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250610-imx8mp_ecspi-v1-1-d14d1e9d65f3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_091308_659466_B7D8C21E 
X-CRM114-Status: GOOD (  14.85  )
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
Subject: Re: [PATCH 1/2] ARM: i.MX8M: Add support for eCSPI boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Jonas,

On 6/10/25 17:30, Jonas Rebmann wrote:
> Load and boot barebox via eCSPI when started so via bootrom.
> 
> Only tested on i.MX8MP
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  arch/arm/mach-imx/atf.c       |  4 ++++
>  arch/arm/mach-imx/xload-spi.c | 38 ++++++++++++++++++++++++++++++++++++++
>  include/mach/imx/xload.h      |  1 +
>  3 files changed, 43 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index 6dc80cb70054eca2aa70b0cfc989baf2a5b75232..6993e33baa39c87afa15ee7302e574d096fde7a5 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -16,6 +16,7 @@
>  #include <soc/fsl/caam.h>
>  #include <tee/optee.h>
>  #include <mach/imx/ele.h>
> +#include <mach/imx/xload.h>
>  
>  /**
>   * imx8m_atf_load_bl31 - Load ATF BL31 blob and transfer control to it
> @@ -193,6 +194,9 @@ void imx8mp_load_bl33(void *bl33)
>  	case BOOTSOURCE_SPI:
>  		imx8mp_qspi_load_image(instance, bl33);
>  		break;
> +	case BOOTSOURCE_SPI_NOR:
> +		imx8m_ecspi_load_image(instance, bl33);

Can you send a fixup enabling this for all imx8m*_ variants?

Thanks,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



