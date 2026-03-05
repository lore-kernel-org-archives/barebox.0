Delivery-date: Thu, 05 Mar 2026 13:56:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy8Fv-008Kan-1s
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 13:56:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy8Fv-00007R-Te
	for lore@pengutronix.de; Thu, 05 Mar 2026 13:56:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jWngIQzYWznQa3Rb6BMCVyOV4SbCP38hzmnRkHjDzk0=; b=bGaJVgFWzvsLNJFkBoQjF+D+my
	9sYi4ZruYHDMCTGPSK5bqRIIuwhF5posVwfDJijvdVp+r56a8ES/b4nC+RWdor7HpjIqHA/+ZpUdh
	cJlnvCk+AfrNfAhlRvAg1ftgXGD8czyjqb2Rqdf5zejJ28qItYA0DQESpk6nf4WKewuDI+vBzeTp9
	dACVA+wVNpt/4UvzbjFVdVRF5dxFu3jF6fEslKZwYhJK5Fa7p5zQS8xmg9D/9Qz7HIpXSVuUtwkka
	xtKm0XlQ2GhaMjbFoYRLcvm0e892YQQiU6C9I3NDSbShgfA+hFY8vz4F9SKzDOXkx1nTO8QBygqws
	1//b5tPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8FY-00000001pKQ-09lC;
	Thu, 05 Mar 2026 12:56:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8FV-00000001pK3-3HT5
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 12:56:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vy8FU-0008Rc-3b; Thu, 05 Mar 2026 13:56:16 +0100
Message-ID: <92cd7a46-cc87-4478-b597-b08f7dd3c9b7@pengutronix.de>
Date: Thu, 5 Mar 2026 13:56:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Picard <david.picard@clermont.in2p3.fr>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260305-b4-sa2-usb-v3-0-802f52d308ab@clermont.in2p3.fr>
 <20260305-b4-sa2-usb-v3-3-802f52d308ab@clermont.in2p3.fr>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260305-b4-sa2-usb-v3-3-802f52d308ab@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_045617_842829_2C6A16D0 
X-CRM114-Status: GOOD (  17.71  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 3/3] ARM: socfpga: xload: compress image with xz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 3/5/26 1:46 PM, David Picard wrote:
> Compress the image of the first stage of Barebox with xz because it
> features a good compression ratio.
> as 64KiB.
> 
> Rationale: on some devices, the image has to fit in a ROM as small

That commit message got gobbled up.

It should read:

Rationale: on some devices, the image has to fit in a ROM as small
as 64KiB.


> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
> ---
>  arch/arm/configs/socfpga-xload_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
> index 22bab8d607..ec966c91a8 100644
> --- a/arch/arm/configs/socfpga-xload_defconfig
> +++ b/arch/arm/configs/socfpga-xload_defconfig
> @@ -12,6 +12,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
>  # CONFIG_ARM_EXCEPTIONS is not set
>  CONFIG_NAME="socfpga-xload_defconfig"
>  # CONFIG_MEMINFO is not set
> +CONFIG_IMAGE_COMPRESSION_XZKERN=y
>  CONFIG_MMU=y
>  CONFIG_MALLOC_SIZE=0x0
>  CONFIG_MALLOC_DUMMY=y
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



