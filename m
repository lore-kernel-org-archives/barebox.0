Delivery-date: Mon, 18 May 2026 11:38:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuQq-0015MW-16
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 11:38:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOuQp-0006sG-NN
	for lore@pengutronix.de; Mon, 18 May 2026 11:38:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UU89K7+HVxgZIoLnY/AnV0Vn3m7kOSNu1fu/HkS/9SU=; b=Ed5iRUKn++o/w7Q88ypmo9Tlx+
	N8rOUsvsNtYgOR8V+OJjNLA7idTyGScn45qY54gVRQdrrM+qitxTy2Zt/AuqF+qdtQi2Xi5ZOdRje
	x7MrsCaZkGCc1NNUa7t68R+etMsWPGCC1AqD7yelYW+O9ckwOoxd4aNwx4ccx37YzoqKqp9bJGg1y
	BWcnGfGZz5PnhmkoKnO1FoklXsk0O+kSuBE/KkwS6OzciFygYnngHcU3otPtsJh52G47u8Bg159OD
	tFooA7nRpHOxX3x+oHrrmrByVXq65P5uAj8biwZsfFgR5hkTA5SErnQVXK90++xhSnSbcmk1t1JaP
	p1UA8xqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuPX-0000000F31w-0tOK;
	Mon, 18 May 2026 09:37:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuPU-0000000F303-3WcQ
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 09:37:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOuPT-0006gA-CN; Mon, 18 May 2026 11:37:15 +0200
Message-ID: <3d28313c-9695-416f-8d86-66ac050624b7@pengutronix.de>
Date: Mon, 18 May 2026 11:37:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260518-k3-am62x-image-size-fixes-v1-0-ab723d79922d@pengutronix.de>
 <20260518-k3-am62x-image-size-fixes-v1-3-ab723d79922d@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260518-k3-am62x-image-size-fixes-v1-3-ab723d79922d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_023716_893375_06C5E54F 
X-CRM114-Status: GOOD (  16.07  )
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
Subject: Re: [PATCH 3/3] ARM: k3: k3-r5_defconfig: limit image size to maximum
 available space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 5/18/26 11:26 AM, Sascha Hauer wrote:
> On the AM62x we have 0x3e000 bytes available for SBL usage. The upper

What's a SBL?

> 0x1000 bytes are used by the DMDATA, so set maximum image size to
> 0x3d000.

Cheers,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/configs/k3-r5_defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/configs/k3-r5_defconfig b/arch/arm/configs/k3-r5_defconfig
> index ece3d00947..6d8391c55e 100644
> --- a/arch/arm/configs/k3-r5_defconfig
> +++ b/arch/arm/configs/k3-r5_defconfig
> @@ -8,7 +8,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
>  CONFIG_NAME="k3-r5_defconfig"
>  CONFIG_ENVIRONMENT_VARIABLES=y
>  CONFIG_IMAGE_COMPRESSION_XZKERN=y
> -CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x10000000
> +CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x3d000
>  CONFIG_MALLOC_SIZE=0x0
>  CONFIG_MALLOC_TLSF=y
>  CONFIG_KALLSYMS=y
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



